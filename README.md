# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.26s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.68s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.13s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.06s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.13s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.31s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.52s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 124.84ms | 2.34s | 208.74ms | 1.40s | 208.89ms | 239.14ms | 167.69ms |
| broadPropagation | 241.91ms | 4.39s | 454.07ms | 86.14ms (fail) | 457.49ms | 443.59ms | 397.55ms |
| deepPropagation | 81.53ms | 1.51s | 175.17ms | 1.92s (fail) | 179.61ms | 132.16ms | 160.90ms |
| diamond | 153.59ms | 2.36s | 284.45ms | 2.73s (fail) | 282.40ms | 309.33ms | 236.37ms |
| mux | 297.64ms | 1.86s | 375.99ms | 560.75ms (fail) | 391.32ms | 371.94ms | 370.45ms |
| repeatedObservers | 27.02ms | 223.48ms | 40.74ms | 397.54ms (fail) | 46.23ms | 87.25ms | 58.57ms |
| triangle | 64.50ms | 748.75ms | 100.94ms | 860.20ms (fail) | 103.95ms | 99.99ms | 88.97ms |
| unstable | 47.55ms | 334.20ms | 69.65ms | 629.95ms (fail) | 77.65ms | 102.38ms | 347.75ms |
| molBench | 485.33ms | 588.06ms | 485.79ms | 11.96ms | 495.39ms | 495.89ms | 492.72ms |
| create_signals | 7.72ms | 69.28ms | 5.55ms | 23.55ms | 27.03ms | 71.68ms | 65.15ms |
| comp_0to1 | 13.93ms | 28.07ms | 17.91ms | 15.16ms | 11.98ms | 33.78ms | 52.38ms |
| comp_1to1 | 23.87ms | 41.48ms | 12.57ms | 23.95ms | 27.05ms | 29.93ms | 60.30ms |
| comp_2to1 | 2.40ms | 37.14ms | 13.35ms | 26.76ms | 13.35ms | 19.52ms | 38.54ms |
| comp_4to1 | 1.67ms | 23.81ms | 11.80ms | 6.93ms | 1.92ms | 13.22ms | 15.98ms |
| comp_1000to1 | 3μs | 20μs | 4μs | 3μs | 5μs | 15μs | 38μs |
| comp_1to2 | 16.70ms | 30.05ms | 24.83ms | 13.69ms | 15.04ms | 34.58ms | 43.80ms |
| comp_1to4 | 15.94ms | 24.37ms | 22.00ms | 27.50ms | 9.69ms | 15.39ms | 43.93ms |
| comp_1to8 | 3.98ms | 24.10ms | 8.74ms | 8.00ms | 9.09ms | 20.29ms | 41.97ms |
| comp_1to1000 | 3.36ms | 15.47ms | 7.98ms | 4.59ms | 7.28ms | 14.27ms | 37.57ms |
| update_1to1 | 6.54ms | 21.79ms | 8.80ms | 80.50ms | 9.49ms | 14.62ms | 6.14ms |
| update_2to1 | 4.52ms | 11.32ms | 4.31ms | 40.58ms | 4.73ms | 7.21ms | 3.05ms |
| update_4to1 | 1.55ms | 7.06ms | 2.21ms | 21.61ms | 2.34ms | 3.69ms | 1.61ms |
| update_1000to1 | 15μs | 67μs | 22μs | 177μs | 23μs | 35μs | 15μs |
| update_1to2 | 2.47ms | 13.75ms | 4.54ms | 40.93ms | 4.72ms | 7.28ms | 3.06ms |
| update_1to4 | 2.07ms | 6.95ms | 2.35ms | 19.93ms | 2.54ms | 3.59ms | 1.53ms |
| update_1to1000 | 44μs | 161μs | 2.57ms | 92μs | 44μs | 150μs | 366μs |
| cellx1000 | 5.90ms | 75.83ms | 10.49ms | N/A | 9.87ms | 9.67ms | 12.82ms |
| cellx2500 | 15.84ms | 251.36ms | 27.42ms | N/A | 33.37ms | 30.44ms | 44.09ms |
| cellx5000 | 37.09ms | 571.77ms | 72.95ms | N/A | 68.23ms | 79.56ms | 120.81ms |
| 10x5 - 2 sources - read 20.0% (simple) | 186.90ms | 1.97s | 433.26ms | 2.17s | 507.89ms | 337.71ms | 233.60ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.73ms | 1.49s | 263.78ms | 1.49s (partial) | 282.48ms | 220.25ms | 197.73ms |
| 1000x12 - 4 sources - dynamic (large) | 280.85ms | 1.88s | 3.66s | 2.48s (partial) | 3.89s | 463.78ms | 369.25ms |
| 1000x5 - 25 sources (wide dense) | 540.48ms | 3.55s | 2.56s | 4.27s | 3.24s | 827.98ms | 492.72ms |
| 5x500 - 3 sources (deep) | 155.65ms | 1.11s | 226.79ms | 1.39s | 227.09ms | 225.85ms | 207.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.09ms | 1.69s | 456.83ms | 1.77s (partial) | 483.93ms | 359.76ms | 262.26ms |

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
