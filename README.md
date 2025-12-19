# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.27s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.75s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.14s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.34s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 11.82s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.99s |

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
| avoidablePropagation | 125.16ms | 2.35s | 202.44ms | 261.93ms | 250.01ms | 172.41ms |
| broadPropagation | 236.77ms | 4.46s | 471.16ms | 457.48ms | 442.60ms | 411.50ms |
| deepPropagation | 80.96ms | 1.48s | 187.02ms | 167.66ms | 130.94ms | 159.83ms |
| diamond | 158.09ms | 2.36s | 288.18ms | 310.46ms | 304.61ms | 221.90ms |
| mux | 300.00ms | 1.84s | 388.85ms | 382.79ms | 376.40ms | 359.66ms |
| repeatedObservers | 26.88ms | 226.71ms | 39.67ms | 50.48ms | 87.33ms | 59.60ms |
| triangle | 64.68ms | 742.74ms | 102.21ms | 107.32ms | 96.10ms | 87.10ms |
| unstable | 45.80ms | 339.49ms | 71.98ms | 85.41ms | 101.86ms | 345.57ms |
| molBench | 482.04ms | 588.70ms | 490.46ms | 488.13ms | 488.96ms | 494.73ms |
| create_signals | 30.55ms | 69.99ms | 5.81ms | 28.51ms | 74.35ms | 59.69ms |
| comp_0to1 | 10.55ms | 14.93ms | 17.99ms | 24.29ms | 41.49ms | 53.69ms |
| comp_1to1 | 21.50ms | 41.48ms | 11.15ms | 8.27ms | 33.75ms | 55.38ms |
| comp_2to1 | 17.55ms | 33.98ms | 11.69ms | 13.04ms | 26.92ms | 36.80ms |
| comp_4to1 | 2.44ms | 28.16ms | 12.21ms | 3.83ms | 12.43ms | 16.79ms |
| comp_1000to1 | 4μs | 15μs | 5μs | 9μs | 16μs | 38μs |
| comp_1to2 | 10.81ms | 36.22ms | 20.38ms | 32.81ms | 34.66ms | 45.50ms |
| comp_1to4 | 18.36ms | 18.23ms | 29.14ms | 18.54ms | 33.54ms | 45.71ms |
| comp_1to8 | 4.99ms | 21.25ms | 9.07ms | 8.51ms | 33.16ms | 43.84ms |
| comp_1to1000 | 3.17ms | 15.23ms | 6.04ms | 3.98ms | 15.15ms | 39.24ms |
| update_1to1 | 5.60ms | 26.22ms | 8.90ms | 29.70ms | 14.04ms | 6.11ms |
| update_2to1 | 4.83ms | 13.51ms | 4.66ms | 14.92ms | 6.92ms | 3.05ms |
| update_4to1 | 1.44ms | 7.20ms | 2.27ms | 7.13ms | 3.56ms | 1.56ms |
| update_1000to1 | 9μs | 65μs | 22μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.76ms | 13.45ms | 4.43ms | 14.76ms | 7.58ms | 3.05ms |
| update_1to4 | 1.03ms | 6.87ms | 2.28ms | 7.44ms | 3.62ms | 1.52ms |
| update_1to1000 | 42μs | 162μs | 84μs | 64μs | 150μs | 393μs |
| cellx1000 | 5.73ms | 77.69ms | 10.65ms | 10.28ms | 10.78ms | 10.65ms |
| cellx2500 | 16.29ms | 263.68ms | 35.67ms | 32.71ms | 36.16ms | 41.39ms |
| cellx5000 | 40.28ms | 572.18ms | 88.20ms | 93.75ms | 101.22ms | 130.22ms |
| 10x5 - 2 sources - read 20.0% (simple) | 182.24ms | 1.92s | 513.22ms | 537.65ms | 323.13ms | 270.81ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.69ms | 1.44s | 293.06ms | 296.98ms | 219.87ms | 209.56ms |
| 1000x12 - 4 sources - dynamic (large) | 273.88ms | 1.85s | 4.45s | 3.70s | 456.93ms | 381.76ms |
| 1000x5 - 25 sources (wide dense) | 530.79ms | 3.38s | 3.31s | 3.42s | 814.48ms | 500.75ms |
| 5x500 - 3 sources (deep) | 157.18ms | 1.10s | 240.56ms | 232.65ms | 226.89ms | 209.52ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 245.70ms | 1.65s | 489.95ms | 494.64ms | 325.46ms | 266.13ms |

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
