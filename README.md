# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.94s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.12s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.84s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.49s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.85s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.50s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [signals_core](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|
| avoidablePropagation | 131.93ms | 2.26s | 200.17ms | 252.75ms | 239.38ms | 156.67ms |
| broadPropagation | 218.80ms | 4.13s | 410.91ms | 404.65ms | 437.96ms | 352.40ms |
| deepPropagation | 85.98ms | 1.46s | 191.05ms | 180.11ms | 132.33ms | 164.46ms |
| diamond | 147.45ms | 2.26s | 282.10ms | 297.88ms | 308.30ms | 212.15ms |
| mux | 291.38ms | 1.77s | 347.51ms | 347.35ms | 375.19ms | 320.32ms |
| repeatedObservers | 22.91ms | 227.42ms | 34.85ms | 45.33ms | 87.29ms | 51.68ms |
| triangle | 66.07ms | 747.70ms | 99.28ms | 103.65ms | 101.73ms | 85.09ms |
| unstable | 41.83ms | 324.21ms | 61.57ms | 74.34ms | 108.26ms | 325.27ms |
| molBench | 359.09ms | 481.83ms | 363.78ms | 393.19ms | 370.15ms | 388.29ms |
| create_signals | 26.76ms | 49.71ms | 7.05ms | 32.50ms | 111.36ms | 61.18ms |
| comp_0to1 | 19.92ms | 25.47ms | 18.90ms | 20.74ms | 20.44ms | 51.24ms |
| comp_1to1 | 20.96ms | 35.34ms | 17.61ms | 9.91ms | 38.19ms | 54.40ms |
| comp_2to1 | 17.81ms | 28.04ms | 22.83ms | 15.04ms | 17.15ms | 36.20ms |
| comp_4to1 | 2.68ms | 17.59ms | 18.79ms | 4.22ms | 5.11ms | 16.77ms |
| comp_1000to1 | 4μs | 18μs | 9μs | 6μs | 35μs | 42μs |
| comp_1to2 | 15.69ms | 38.22ms | 25.99ms | 16.66ms | 33.86ms | 46.02ms |
| comp_1to4 | 16.88ms | 32.16ms | 38.05ms | 22.09ms | 32.20ms | 45.31ms |
| comp_1to8 | 9.46ms | 25.75ms | 7.10ms | 11.49ms | 31.77ms | 43.54ms |
| comp_1to1000 | 6.51ms | 16.20ms | 7.38ms | 5.89ms | 15.52ms | 38.48ms |
| update_1to1 | 2.94ms | 20.22ms | 8.22ms | 27.74ms | 13.77ms | 4.78ms |
| update_2to1 | 1.57ms | 9.84ms | 4.19ms | 13.01ms | 6.81ms | 2.30ms |
| update_4to1 | 824μs | 5.72ms | 1.97ms | 6.74ms | 3.61ms | 1.25ms |
| update_1000to1 | 7μs | 51μs | 19μs | 69μs | 34μs | 11μs |
| update_1to2 | 1.51ms | 9.91ms | 3.83ms | 13.36ms | 7.47ms | 2.38ms |
| update_1to4 | 876μs | 5.21ms | 1.85ms | 6.56ms | 3.42ms | 1.20ms |
| update_1to1000 | 47μs | 167μs | 766μs | 117μs | 146μs | 387μs |
| cellx1000 | 10.29ms | 92.42ms | 11.55ms | 11.62ms | 16.93ms | 14.20ms |
| cellx2500 | 25.04ms | 281.69ms | 36.26ms | 33.39ms | 50.11ms | 39.93ms |
| cellx5000 | 59.55ms | 612.63ms | 100.30ms | 91.53ms | 114.14ms | 115.16ms |
| 10x5 - 2 sources - read 20.0% (simple) | 172.84ms | 2.07s | 455.15ms | 472.42ms | 316.84ms | 223.78ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 151.89ms | 1.50s | 262.39ms | 263.17ms | 232.48ms | 171.01ms |
| 1000x12 - 4 sources - dynamic (large) | 242.18ms | 1.71s | 3.39s | 3.10s | 394.23ms | 288.93ms |
| 1000x5 - 25 sources (wide dense) | 383.60ms | 3.40s | 2.76s | 2.58s | 644.26ms | 380.51ms |
| 5x500 - 3 sources (deep) | 178.00ms | 1.18s | 233.30ms | 223.72ms | 274.88ms | 209.67ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 202.92ms | 1.67s | 417.42ms | 411.70ms | 294.49ms | 216.64ms |

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
