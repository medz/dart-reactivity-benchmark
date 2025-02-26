import 'dart:io';
import 'dart:math' show pow, sqrt;

Future<void> main() async {
  final reports = readAllBenchmarkReports();

  // 1. Generate detailed test case table
  generateTestCaseTable(reports);

  // 2. Calculate overall scores
  final scores = calculateScores(reports);

  // 3. Generate ranking report
  generateRankingReport(scores);
}

class ScoreResult {
  final String framework;
  final double overallScore;
  final double successRate;
  final int totalTests;
  final int passedTests;
  final Map<String, TestMetric> testMetrics;
  final Duration totalTime;

  ScoreResult({
    required this.framework,
    required this.overallScore,
    required this.successRate,
    required this.totalTests,
    required this.passedTests,
    required this.testMetrics,
    required this.totalTime,
  });
}

class TestMetric {
  final int microseconds;
  final double normalizedScore;
  final double coefficient;
  final String status;

  TestMetric({
    required this.microseconds,
    required this.normalizedScore,
    required this.coefficient,
    required this.status,
  });
}

Map<String, Map<String, ({String stateCaseName, int microseconds})>>
    readAllBenchmarkReports() {
  final reports = <String, Map<String, int>>{};
  final benchReportDir = Directory('bench');

  for (final file in benchReportDir.listSync()) {
    if (file is! File) continue;
    final lines = file.readAsLinesSync().skip(2);
    for (final line in lines) {
      final [framework, testCase, microseconds] =
          line.split('|').skip(1).take(3).map((e) => e.trim()).toList();
      reports[framework] ??= {};
      reports[framework]![testCase] = int.parse(microseconds);
    }
  }

  final testCases =
      <String, Map<String, ({String stateCaseName, int microseconds})>>{};
  for (final MapEntry(key: framework, value: cases) in reports.entries) {
    for (final MapEntry(key: testCase, value: microseconds) in cases.entries) {
      final trimmedTestCase = trimTestCaseName(testCase);
      final group = testCases[trimmedTestCase] ??=
          <String, ({String stateCaseName, int microseconds})>{};
      group[framework] = (stateCaseName: testCase, microseconds: microseconds);
    }
  }

  return testCases;
}

void generateTestCaseTable(
    Map<String, Map<String, ({String stateCaseName, int microseconds})>>
        reports) {
  final testCaseTable = StringBuffer();

  testCaseTable.write('| Test Case | ');
  testCaseTable.write(reports.values.first.keys.join(' | '));
  testCaseTable.writeln(' |');

  testCaseTable.write('|---|');
  testCaseTable.write(
      Iterable.generate(reports.values.first.length, (_) => '---').join('|'));
  testCaseTable.writeln('|');

  for (final MapEntry(key: testCase, value: group) in reports.entries) {
    testCaseTable.write('| $testCase | ');
    testCaseTable.writeAll([
      for (final (:microseconds, :stateCaseName) in group.values)
        formatTestResult(microseconds, stateCaseName),
    ], ' | ');
    testCaseTable.writeln(' |');
  }

  updateReadme(testCaseTable.toString(), 'test-case');
}

int calculateBaseline(
    Map<String, ({String stateCaseName, int microseconds})> group) {
  return group.values
      .where((test) => calculateCoefficient(test.stateCaseName) >= 0.5)
      .map((test) => test.microseconds)
      .reduce((min, time) => time < min ? time : min);
}

double calculateCoefficient(String testCase) {
  if (testCase.contains('(fail)')) return 0.0;

  double coefficient = 1.0;
  if (testCase.contains('sum: fail')) coefficient -= 0.5;
  if (testCase.contains('count: fail')) coefficient -= 0.5;

  return coefficient;
}

String getTestStatus(double coefficient) {
  if (coefficient >= 1.0) return 'pass';
  if (coefficient > 0.0) return 'partial';
  return 'fail';
}

String formatDuration(Duration duration) {
  final microseconds = duration.inMicroseconds;
  if (microseconds < 1000) {
    return '$microsecondsμs';
  } else if (microseconds < 1000000) {
    return '${(microseconds / 1000).toStringAsFixed(2)}ms';
  }
  return '${(microseconds / 1000000).toStringAsFixed(2)}s';
}

String formatTestResult(int microseconds, String testCase) {
  final coefficient = calculateCoefficient(testCase);
  final time = formatDuration(Duration(microseconds: microseconds));

  if (coefficient == 0.0) return '$time (fail)';
  if (coefficient == 0.5) return '$time (partial)';
  return time;
}

void updateReadme(String content, String section) {
  final readme = File('README.md');
  final readmeContent = readme.readAsStringSync();

  final sectionStart = readmeContent.indexOf('<!-- $section start -->') +
      '<!-- $section start -->'.length;
  final sectionEnd = readmeContent.indexOf('<!-- $section end -->');

  final newContent =
      readmeContent.replaceRange(sectionStart, sectionEnd, '\n$content\n');

  readme.writeAsStringSync(newContent);
}

String trimTestCaseName(String name) {
  const needRemoved = [
    '(success)',
    '(fail)',
    '(first: pass,',
    '(first: fail,',
    'last: pass)',
    'last: fail)',
    ', sum: pass',
    ', sum: fail',
    ', count: pass',
    ', count: fail',
  ];

  for (final pattern in needRemoved) {
    name = name.replaceAll(pattern, '').trim();
  }

  return name;
}

Map<String, ScoreResult> calculateScores(
    Map<String, Map<String, ({String stateCaseName, int microseconds})>>
        reports) {
  final scores = <String, ScoreResult>{};
  Duration? fastestTotalTime;

  // First pass to find fastest total time
  for (final framework in reports.values.first.keys) {
    var totalTime = Duration.zero;
    for (final group in reports.values) {
      final test = group[framework];
      if (test == null) continue;
      totalTime += Duration(microseconds: test.microseconds);
    }

    if (fastestTotalTime == null || totalTime < fastestTotalTime) {
      fastestTotalTime = totalTime;
    }
  }

  // Second pass to calculate scores
  for (final framework in reports.values.first.keys) {
    var testMetrics = <String, TestMetric>{};
    var totalTests = 0;
    var passedTests = 0;
    var totalTime = Duration.zero;

    for (final MapEntry(key: testCase, value: group) in reports.entries) {
      final test = group[framework];
      totalTests++;
      if (test == null) continue;

      final baseline = calculateBaseline(group);
      final coefficient = calculateCoefficient(test.stateCaseName);
      final normalizedScore =
          calculateNormalizedScore(test.microseconds, baseline, coefficient);

      testMetrics[testCase] = TestMetric(
        microseconds: test.microseconds,
        normalizedScore: normalizedScore,
        coefficient: coefficient,
        status: getTestStatus(coefficient),
      );

      if (coefficient >= 1.0) passedTests++;
      totalTime += Duration(microseconds: test.microseconds);
    }

    final overallScore =
        calculateOverallScore(testMetrics, totalTime, fastestTotalTime!);
    final successRate = passedTests / totalTests;

    scores[framework] = ScoreResult(
      framework: framework,
      overallScore: overallScore,
      successRate: successRate,
      totalTests: totalTests,
      passedTests: passedTests,
      testMetrics: testMetrics,
      totalTime: totalTime,
    );
  }

  return scores;
}

double calculateOverallScore(
    Map<String, TestMetric> metrics, Duration totalTime, Duration fastestTime) {
  final baseScore =
      geometricMean(metrics.values.map((m) => m.normalizedScore).toList());
  final timeFactor = fastestTime.inMicroseconds / totalTime.inMicroseconds;
  return baseScore * sqrt(timeFactor);
}

double geometricMean(List<double> values) {
  return pow(values.reduce((a, b) => a * b), 1 / values.length).toDouble();
}

double calculateNormalizedScore(
  int microseconds,
  int baseline,
  double coefficient,
) {
  final baseScore = baseline / microseconds;
  return baseScore * coefficient;
}

void generateRankingReport(Map<String, ScoreResult> scores) {
  final rankTable = StringBuffer();
  rankTable
      .writeln('| Rank | Framework | Score | Success Rate | Tests | Time |');
  rankTable
      .writeln('|------|-----------|-------|--------------|-------|------|');

  final sortedScores = scores.values.toList()
    ..sort((a, b) => b.overallScore.compareTo(a.overallScore));

  for (final (index, score) in sortedScores.indexed) {
    final rank = switch (index) {
      0 => '🥇',
      1 => '🥈',
      2 => '🥉',
      _ => '${index + 1}',
    };

    rankTable.writeln('| $rank | ${score.framework} | '
        '${score.overallScore.toStringAsFixed(2)} | '
        '${(score.successRate * 100).toStringAsFixed(1)}% | '
        '${score.passedTests}/${score.totalTests} | '
        '${formatDuration(score.totalTime)} |');
  }

  updateReadme(rankTable.toString(), 'ranking');
}
