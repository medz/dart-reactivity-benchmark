# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.25s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.60s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.36s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 11.95s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.20s |

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
| avoidablePropagation | 124.63ms | 2.35s | 205.15ms | 250.79ms | 281.72ms | 169.51ms |
| broadPropagation | 236.41ms | 4.40s | 472.60ms | 446.39ms | 442.94ms | 401.09ms |
| deepPropagation | 81.39ms | 1.49s | 185.88ms | 169.00ms | 132.77ms | 157.93ms |
| diamond | 159.41ms | 2.37s | 284.78ms | 310.97ms | 312.69ms | 219.60ms |
| mux | 291.73ms | 1.83s | 393.87ms | 383.41ms | 383.73ms | 355.18ms |
| repeatedObservers | 27.65ms | 229.09ms | 40.27ms | 50.59ms | 90.94ms | 58.91ms |
| triangle | 65.60ms | 748.14ms | 102.65ms | 107.31ms | 98.04ms | 88.80ms |
| unstable | 46.10ms | 342.82ms | 71.65ms | 85.33ms | 105.53ms | 342.33ms |
| molBench | 487.51ms | 591.86ms | 489.41ms | 488.71ms | 492.48ms | 495.36ms |
| create_signals | 29.03ms | 52.02ms | 4.75ms | 23.53ms | 70.38ms | 58.03ms |
| comp_0to1 | 12.18ms | 14.81ms | 17.54ms | 32.99ms | 18.14ms | 51.39ms |
| comp_1to1 | 14.27ms | 45.81ms | 14.09ms | 7.91ms | 37.83ms | 53.02ms |
| comp_2to1 | 17.29ms | 24.05ms | 16.17ms | 19.38ms | 13.22ms | 35.16ms |
| comp_4to1 | 2.14ms | 20.29ms | 11.84ms | 6.77ms | 4.32ms | 15.64ms |
| comp_1000to1 | 3μs | 16μs | 6μs | 9μs | 18μs | 63μs |
| comp_1to2 | 11.05ms | 35.93ms | 27.75ms | 33.41ms | 28.19ms | 43.56ms |
| comp_1to4 | 21.51ms | 17.67ms | 24.54ms | 20.49ms | 24.74ms | 43.79ms |
| comp_1to8 | 5.93ms | 20.35ms | 6.05ms | 12.91ms | 23.45ms | 41.59ms |
| comp_1to1000 | 4.75ms | 15.04ms | 5.54ms | 7.20ms | 14.21ms | 37.72ms |
| update_1to1 | 3.83ms | 27.35ms | 8.89ms | 29.60ms | 13.96ms | 6.10ms |
| update_2to1 | 4.76ms | 12.02ms | 4.57ms | 14.80ms | 7.16ms | 3.07ms |
| update_4to1 | 1.13ms | 7.06ms | 2.26ms | 7.10ms | 4.53ms | 1.59ms |
| update_1000to1 | 18μs | 55μs | 22μs | 74μs | 34μs | 15μs |
| update_1to2 | 4.80ms | 13.65ms | 4.46ms | 14.96ms | 6.97ms | 3.08ms |
| update_1to4 | 989μs | 6.89ms | 2.23ms | 7.45ms | 3.57ms | 1.55ms |
| update_1to1000 | 29μs | 160μs | 40μs | 98μs | 143μs | 366μs |
| cellx1000 | 5.50ms | 83.14ms | 9.77ms | 9.94ms | 9.96ms | 8.82ms |
| cellx2500 | 14.98ms | 281.21ms | 25.58ms | 26.34ms | 31.09ms | 26.37ms |
| cellx5000 | 31.69ms | 604.16ms | 68.55ms | 63.90ms | 96.41ms | 76.26ms |
| 10x5 - 2 sources - read 20.0% (simple) | 185.23ms | 1.96s | 512.92ms | 538.73ms | 333.56ms | 263.28ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.61ms | 1.48s | 294.89ms | 301.29ms | 220.29ms | 206.37ms |
| 1000x12 - 4 sources - dynamic (large) | 274.10ms | 1.92s | 4.46s | 3.70s | 450.79ms | 367.09ms |
| 1000x5 - 25 sources (wide dense) | 528.73ms | 3.43s | 3.47s | 3.46s | 810.25ms | 496.74ms |
| 5x500 - 3 sources (deep) | 155.03ms | 1.11s | 242.16ms | 235.81ms | 227.57ms | 209.40ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.53ms | 1.65s | 465.71ms | 489.69ms | 329.56ms | 265.92ms |

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
