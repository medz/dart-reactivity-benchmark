# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.47s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.30s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.04s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.15s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 160.27ms | 2.31s | 202.18ms | 1.38s | 204.99ms | 290.06ms | 168.16ms (fail) |
| broadPropagation | 320.69ms | 4.67s | 450.39ms | 82.07ms (fail) | 449.75ms | 527.90ms | 7.57ms (fail) |
| deepPropagation | 95.64ms | 1.56s | 176.93ms | 1.95s (fail) | 172.13ms | 173.49ms | 146.29ms (fail) |
| diamond | 222.47ms | 2.54s | 280.75ms | 2.61s (fail) | 283.22ms | 354.58ms | 198.28ms (fail) |
| mux | 341.96ms | 1.92s | 395.86ms | 557.11ms (fail) | 413.76ms | 438.69ms | 194.40ms (fail) |
| repeatedObservers | 51.89ms | 232.94ms | 39.65ms | 378.96ms (fail) | 44.68ms | 86.43ms | 53.01ms (fail) |
| triangle | 96.03ms | 777.48ms | 99.07ms | 940.87ms (fail) | 102.67ms | 116.46ms | 79.12ms (fail) |
| unstable | 72.20ms | 354.24ms | 69.61ms | 609.38ms (fail) | 79.09ms | 102.07ms | 336.68ms (fail) |
| molBench | 487.01ms | 574.35ms | 488.85ms | 11.93ms | 485.51ms | 500.03ms | 879μs |
| create_signals | 27.34ms | 67.66ms | 5.14ms | 23.98ms | 26.41ms | 53.19ms | 62.03ms |
| comp_0to1 | 10.46ms | 36.41ms | 17.57ms | 14.06ms | 12.17ms | 30.20ms | 52.64ms |
| comp_1to1 | 20.46ms | 38.94ms | 12.47ms | 23.15ms | 18.55ms | 42.17ms | 55.72ms |
| comp_2to1 | 15.48ms | 34.54ms | 17.61ms | 25.14ms | 9.39ms | 20.06ms | 36.54ms |
| comp_4to1 | 3.19ms | 13.53ms | 8.89ms | 3.62ms | 11.84ms | 23.67ms | 16.66ms |
| comp_1000to1 | 4μs | 16μs | 4μs | 3μs | 4μs | 19μs | 40μs |
| comp_1to2 | 13.84ms | 35.68ms | 16.26ms | 11.94ms | 15.58ms | 21.48ms | 45.12ms |
| comp_1to4 | 14.91ms | 18.11ms | 29.29ms | 25.14ms | 11.32ms | 25.39ms | 43.61ms |
| comp_1to8 | 8.79ms | 21.16ms | 8.67ms | 5.11ms | 6.08ms | 22.82ms | 42.40ms |
| comp_1to1000 | 11.06ms | 16.21ms | 7.86ms | 4.82ms | 4.28ms | 15.58ms | 38.51ms |
| update_1to1 | 5.77ms | 22.13ms | 8.76ms | 86.35ms | 8.95ms | 15.36ms | 5.65ms |
| update_2to1 | 5.64ms | 11.02ms | 4.32ms | 43.05ms | 4.49ms | 7.89ms | 2.87ms |
| update_4to1 | 1.77ms | 6.12ms | 2.20ms | 20.65ms | 2.25ms | 3.92ms | 1.46ms |
| update_1000to1 | 14μs | 56μs | 21μs | 178μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.91ms | 11.67ms | 6.33ms | 43.35ms | 4.70ms | 7.67ms | 2.85ms |
| update_1to4 | 1.48ms | 6.28ms | 2.19ms | 20.82ms | 2.25ms | 3.83ms | 1.45ms |
| update_1to1000 | 52μs | 248μs | 2.56ms | 148μs | 42μs | 170μs | 374μs |
| cellx1000 | 7.15ms | 73.95ms | 10.53ms | N/A | 9.97ms | 11.31ms | 5.31ms |
| cellx2500 | 19.27ms | 263.06ms | 27.27ms | N/A | 35.87ms | 35.02ms | 23.09ms |
| cellx5000 | 47.14ms | 568.92ms | 73.59ms | N/A | 104.97ms | 94.67ms | 59.58ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.19ms | 2.01s | 439.07ms | 2.14s | 513.95ms | 360.08ms | 254.47ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.89ms | 1.56s | 268.35ms | 1.44s (partial) | 278.61ms | 245.30ms | 202.10ms |
| 1000x12 - 4 sources - dynamic (large) | 339.59ms | 1.91s | 3.75s | 2.45s (partial) | 3.74s | 470.05ms | 349.44ms |
| 1000x5 - 25 sources (wide dense) | 490.62ms | 3.53s | 2.69s | 4.16s | 3.56s | 716.81ms | 512.99ms |
| 5x500 - 3 sources (deep) | 193.09ms | 1.16s | 233.65ms | 1.37s | 226.89ms | 267.96ms | 206.22ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 285.12ms | 1.69s | 450.85ms | 1.73s (partial) | 485.18ms | 387.31ms | 261.33ms |

<!-- test-case end -->

> [!TIP]
> - `(fail)`: Test case failed
> - `(partial)`: Partial of the test cases failed

## Integrate into your project

You can easily integrate Dart reactivity benchmark into your project to provide benchmarking.

### Install it

```bash
dart pub add dev:reactivity_benchmark
```

### Writing Tests

```dart
class YourReactiveFramework extends ReactiveFramework {
  ...
}

void main() {
  final framework = YourReactiveFramework();
  runFrameworkBench(framework);
}
```

## Local run benchmarks

Dart VM
```bash
dart run frameworks/[framework_name].dart
```

Run all benchamrks
```bash
bash bench.sh
```
