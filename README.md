# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.33s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.65s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.17s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.25s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.21s |

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
| avoidablePropagation | 125.52ms | 2.41s | 215.39ms | 252.54ms | 257.87ms | 167.96ms |
| broadPropagation | 237.18ms | 4.37s | 471.52ms | 447.38ms | 447.07ms | 387.09ms |
| deepPropagation | 82.18ms | 1.51s | 188.06ms | 168.26ms | 131.82ms | 156.80ms |
| diamond | 155.77ms | 2.41s | 309.84ms | 313.16ms | 319.58ms | 220.27ms |
| mux | 296.46ms | 1.82s | 389.42ms | 388.75ms | 378.94ms | 371.95ms |
| repeatedObservers | 27.18ms | 234.42ms | 41.53ms | 50.85ms | 89.07ms | 60.29ms |
| triangle | 66.26ms | 748.89ms | 105.63ms | 107.90ms | 105.84ms | 84.01ms |
| unstable | 46.11ms | 347.29ms | 75.84ms | 84.79ms | 102.24ms | 353.44ms |
| molBench | 489.87ms | 588.17ms | 488.31ms | 488.46ms | 491.28ms | 493.83ms |
| create_signals | 31.97ms | 70.81ms | 5.48ms | 28.38ms | 76.12ms | 60.82ms |
| comp_0to1 | 12.36ms | 27.86ms | 18.09ms | 24.15ms | 41.17ms | 57.20ms |
| comp_1to1 | 19.01ms | 43.98ms | 13.75ms | 8.22ms | 45.74ms | 60.94ms |
| comp_2to1 | 24.34ms | 23.89ms | 12.02ms | 12.42ms | 19.05ms | 43.11ms |
| comp_4to1 | 5.19ms | 17.87ms | 14.21ms | 7.16ms | 16.34ms | 18.13ms |
| comp_1000to1 | 4μs | 20μs | 5μs | 5μs | 14μs | 38μs |
| comp_1to2 | 10.95ms | 40.55ms | 18.31ms | 21.82ms | 35.82ms | 46.75ms |
| comp_1to4 | 15.31ms | 30.89ms | 36.71ms | 20.70ms | 28.97ms | 43.34ms |
| comp_1to8 | 5.66ms | 24.96ms | 8.19ms | 10.07ms | 32.17ms | 42.33ms |
| comp_1to1000 | 3.37ms | 15.71ms | 5.36ms | 3.95ms | 14.27ms | 37.36ms |
| update_1to1 | 4.61ms | 23.30ms | 8.90ms | 29.52ms | 14.04ms | 6.13ms |
| update_2to1 | 4.79ms | 11.00ms | 4.60ms | 14.77ms | 7.01ms | 3.09ms |
| update_4to1 | 1.09ms | 6.64ms | 2.25ms | 7.07ms | 3.51ms | 1.59ms |
| update_1000to1 | 9μs | 70μs | 22μs | 75μs | 35μs | 15μs |
| update_1to2 | 4.83ms | 14.06ms | 4.45ms | 14.71ms | 7.59ms | 3.10ms |
| update_1to4 | 946μs | 7.78ms | 2.22ms | 7.37ms | 3.57ms | 1.56ms |
| update_1to1000 | 43μs | 161μs | 179μs | 64μs | 141μs | 365μs |
| cellx1000 | 7.05ms | 95.18ms | 9.95ms | 9.95ms | 9.57ms | 9.48ms |
| cellx2500 | 23.72ms | 288.41ms | 31.85ms | 27.86ms | 30.27ms | 30.61ms |
| cellx5000 | 53.79ms | 587.61ms | 89.11ms | 76.07ms | 81.09ms | 115.86ms |
| 10x5 - 2 sources - read 20.0% (simple) | 191.10ms | 1.92s | 511.66ms | 543.51ms | 324.97ms | 240.92ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.17ms | 1.46s | 296.21ms | 299.43ms | 219.10ms | 197.76ms |
| 1000x12 - 4 sources - dynamic (large) | 284.77ms | 1.89s | 4.66s | 3.71s | 451.03ms | 368.01ms |
| 1000x5 - 25 sources (wide dense) | 539.24ms | 3.39s | 3.48s | 3.37s | 823.50ms | 494.89ms |
| 5x500 - 3 sources (deep) | 154.68ms | 1.09s | 242.35ms | 237.05ms | 232.01ms | 208.44ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 249.27ms | 1.68s | 485.73ms | 498.32ms | 332.68ms | 260.30ms |

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
