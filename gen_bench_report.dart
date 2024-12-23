import 'dart:io';

final benchReportDir = Directory('bench');
final readme = File('README.md');
String readmeContent = readme.readAsStringSync();

Map<String, Map<String, ({String stateCaseName, int microseconds})>>
    readAllBenchmarkReports() {
  final reports = <String, Map<String, int>>{};
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

Future<void> main() async {
  final reports = readAllBenchmarkReports();
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
        displayTime(microseconds, stateCaseName),
    ], ' | ');
    testCaseTable.writeln(' |');
  }

  // Replace the old table with the new one
  final testCaseStart = readmeContent.indexOf('<!-- Benchmark Table -->') + 25;
  final testCaseEnd = readmeContent.indexOf('<!-- Benchmark Table End -->');
  readmeContent = readmeContent.replaceRange(
      testCaseStart, testCaseEnd, testCaseTable.toString());

  // The rank algorithm see https://github.com/medz/dart-reactivity-benchmark#ranking-algorithm
  final scores = <String, (double, int)>{};
  final failCoefficients = <String, double>{};
  for (final MapEntry(value: group) in reports.entries) {
    final fastest = group.values
        .where((e) => failCoefficient(e.stateCaseName) >= 0.5)
        .map((e) => e.microseconds)
        .reduce((value, next) => value < next ? value : next);
    int totalMicroseconds = 0;

    for (final MapEntry(key: framework, value: (:stateCaseName, :microseconds))
        in group.entries) {
      final coefficient = failCoefficient(stateCaseName);
      final score = fastest / microseconds * coefficient;
      final (prevScore, prevMicroseconds) =
          scores[framework] ??= (0, totalMicroseconds);
      scores[framework] = (prevScore + score, prevMicroseconds + microseconds);
      failCoefficients[framework] =
          (failCoefficients[framework] ?? 0) + (1 - coefficient);
    }
  }

  final sortedScores = scores.entries.toList()
    ..sort((a, b) => b.value.$1.compareTo(a.value.$1));
  final rankTable = StringBuffer();
  rankTable
      .writeln('| Rank | Framework | Score | Total Time | Fail Coefficients |');
  rankTable.writeln('|---|---|---|---|---|');
  for (final (rank, MapEntry(key: framework, value: (score, time)))
      in sortedScores.indexed) {
    final displayRank = switch (rank) {
      0 => '🥇',
      1 => '🥈',
      2 => '🥉',
      _ => rank + 1,
    };
    final frameworkLink = 'https://pub.dev/packages/$framework';
    final displayFramework = '[$framework]($frameworkLink)';

    rankTable.write('| ');
    rankTable.writeAll([
      displayRank,
      displayFramework,
      score.toStringAsFixed(2),
      formatMicroseconds(time),
      failCoefficients[framework] ?? 0
    ], ' | ');
    rankTable.writeln(' |');
  }

  final rankStart = readmeContent.indexOf('<!-- Rank Table -->') + 20;
  final rankEnd = readmeContent.indexOf('<!-- Rank Table End -->');

  readmeContent =
      readmeContent.replaceRange(rankStart, rankEnd, rankTable.toString());

  readme.writeAsStringSync(readmeContent);
}

double failCoefficient(String testCase) {
  if (testCase.contains('(fail)')) {
    return 0;
  }

  double coefficient = 1;
  if (testCase.contains('sum: fail')) {
    coefficient /= 2;
  }
  if (testCase.contains('count: fail')) {
    coefficient /= 2;
  }
  if (testCase.contains('sum: fail') && testCase.contains('count: fail')) {
    coefficient = 0;
  }

  return coefficient;
}

String displayTime(int microseconds, String testCase) {
  String value = formatMicroseconds(microseconds);
  final coefficient = failCoefficient(testCase);
  if (coefficient == 0) {
    return '$value (fail)';
  } else if (coefficient == 0.5) {
    return '$value (half)';
  }

  return value;
}

String formatMicroseconds(int microseconds) {
  if (microseconds < 1000) {
    return '$microsecondsμs';
  } else if (microseconds < 1000000) {
    return '${(microseconds / 1000).toStringAsFixed(2)}ms';
  }

  return '${(microseconds / 1000000).toStringAsFixed(2)}s';
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
