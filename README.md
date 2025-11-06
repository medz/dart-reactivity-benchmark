# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.52s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.17s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.39s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.28s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.54s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.61s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.79s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.64ms | 2.37s | 200.40ms | 1.40s | 212.80ms | 236.31ms | 161.37ms (fail) |
| broadPropagation | 269.46ms | 4.37s | 476.12ms | 79.96ms (fail) | 467.61ms | 432.38ms | 6.96ms (fail) |
| deepPropagation | 80.98ms | 1.54s | 178.19ms | 1.90s (fail) | 176.45ms | 131.15ms | 145.15ms (fail) |
| diamond | 187.07ms | 2.43s | 282.01ms | 2.57s (fail) | 287.52ms | 311.34ms | 207.08ms (fail) |
| mux | 327.23ms | 1.84s | 397.18ms | 578.77ms (fail) | 413.53ms | 401.63ms | 190.75ms (fail) |
| repeatedObservers | 49.10ms | 230.20ms | 40.34ms | 386.72ms (fail) | 46.21ms | 86.99ms | 54.13ms (fail) |
| triangle | 68.23ms | 762.74ms | 101.58ms | 868.37ms (fail) | 106.59ms | 96.36ms | 81.86ms (fail) |
| unstable | 61.18ms | 343.28ms | 74.33ms | 621.63ms (fail) | 76.37ms | 101.76ms | 377.99ms (fail) |
| molBench | 480.07ms | 581.26ms | 475.99ms | 11.72ms | 486.55ms | 491.45ms | 1.21ms |
| create_signals | 26.47ms | 61.36ms | 5.18ms | 24.03ms | 26.06ms | 87.66ms | 66.46ms |
| comp_0to1 | 6.98ms | 15.43ms | 22.93ms | 15.89ms | 11.64ms | 48.70ms | 60.05ms |
| comp_1to1 | 13.35ms | 48.94ms | 14.85ms | 27.75ms | 28.43ms | 24.84ms | 65.15ms |
| comp_2to1 | 8.73ms | 38.16ms | 17.35ms | 27.53ms | 9.64ms | 44.45ms | 46.61ms |
| comp_4to1 | 7.39ms | 17.11ms | 14.18ms | 3.48ms | 4.04ms | 21.77ms | 17.27ms |
| comp_1000to1 | 6μs | 20μs | 4μs | 4μs | 5μs | 30μs | 43μs |
| comp_1to2 | 16.16ms | 37.73ms | 18.55ms | 15.34ms | 14.61ms | 25.30ms | 50.72ms |
| comp_1to4 | 19.08ms | 21.78ms | 37.56ms | 29.82ms | 12.08ms | 46.15ms | 49.56ms |
| comp_1to8 | 6.09ms | 23.33ms | 8.63ms | 7.98ms | 9.19ms | 21.49ms | 46.17ms |
| comp_1to1000 | 3.30ms | 14.95ms | 6.12ms | 4.81ms | 7.25ms | 13.92ms | 41.33ms |
| update_1to1 | 5.30ms | 25.48ms | 8.30ms | 83.27ms | 11.00ms | 14.64ms | 6.03ms |
| update_2to1 | 5.78ms | 11.98ms | 4.39ms | 42.91ms | 5.12ms | 7.17ms | 3.10ms |
| update_4to1 | 1.44ms | 7.40ms | 2.11ms | 20.38ms | 5.63ms | 3.60ms | 1.53ms |
| update_1000to1 | 13μs | 69μs | 23μs | 178μs | 27μs | 36μs | 15μs |
| update_1to2 | 2.65ms | 12.57ms | 4.08ms | 43.54ms | 5.21ms | 7.31ms | 3.00ms |
| update_1to4 | 1.88ms | 6.65ms | 2.10ms | 20.52ms | 2.71ms | 3.65ms | 1.53ms |
| update_1to1000 | 46μs | 178μs | 244μs | 125μs | 48μs | 148μs | 407μs |
| cellx1000 | 6.23ms | 73.58ms | 12.38ms | N/A | 12.06ms | 10.68ms | 5.88ms |
| cellx2500 | 19.81ms | 255.56ms | 28.86ms | N/A | 36.33ms | 30.84ms | 35.00ms |
| cellx5000 | 67.36ms | 590.08ms | 82.78ms | N/A | 74.63ms | 107.78ms | 101.53ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.44ms | 2.03s | 444.48ms | 2.26s | 500.74ms | 312.19ms | 251.62ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.18ms | 1.54s | 274.47ms | 1.53s (partial) | 280.83ms | 222.08ms | 199.62ms |
| 1000x12 - 4 sources - dynamic (large) | 313.12ms | 1.91s | 3.73s | 2.66s (partial) | 3.78s | 450.83ms | 360.28ms |
| 1000x5 - 25 sources (wide dense) | 547.93ms | 3.48s | 2.73s | 4.23s | 3.47s | 815.08ms | 495.68ms |
| 5x500 - 3 sources (deep) | 175.54ms | 1.14s | 235.21ms | 1.52s | 223.04ms | 230.61ms | 207.58ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.22ms | 1.73s | 464.10ms | 1.81s (partial) | 474.21ms | 333.79ms | 262.88ms |

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
