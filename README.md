# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.92s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.05s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.71s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.57s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.69s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 25.97s |

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
| avoidablePropagation | 131.99ms | 2.26s | 198.70ms | 252.26ms | 237.77ms | 156.42ms |
| broadPropagation | 220.28ms | 4.07s | 407.27ms | 411.85ms | 414.58ms | 352.17ms |
| deepPropagation | 85.86ms | 1.46s | 189.77ms | 182.92ms | 131.72ms | 163.15ms |
| diamond | 147.25ms | 2.25s | 274.42ms | 295.80ms | 305.81ms | 206.33ms |
| mux | 285.77ms | 1.72s | 339.12ms | 339.21ms | 370.46ms | 317.49ms |
| repeatedObservers | 22.71ms | 217.42ms | 35.04ms | 44.91ms | 84.08ms | 50.89ms |
| triangle | 61.42ms | 734.92ms | 98.94ms | 102.73ms | 100.72ms | 84.08ms |
| unstable | 42.09ms | 316.31ms | 60.43ms | 71.35ms | 102.89ms | 325.43ms |
| molBench | 359.27ms | 476.56ms | 362.68ms | 391.46ms | 368.95ms | 386.92ms |
| create_signals | 35.39ms | 71.45ms | 6.48ms | 25.11ms | 80.60ms | 59.76ms |
| comp_0to1 | 14.23ms | 26.08ms | 18.48ms | 18.95ms | 16.75ms | 49.94ms |
| comp_1to1 | 16.42ms | 43.21ms | 14.27ms | 8.59ms | 45.86ms | 52.32ms |
| comp_2to1 | 15.13ms | 28.69ms | 20.93ms | 17.30ms | 25.27ms | 34.65ms |
| comp_4to1 | 11.35ms | 13.53ms | 11.55ms | 8.60ms | 9.38ms | 16.06ms |
| comp_1000to1 | 4μs | 18μs | 5μs | 6μs | 35μs | 39μs |
| comp_1to2 | 13.61ms | 34.67ms | 27.52ms | 26.25ms | 39.12ms | 44.63ms |
| comp_1to4 | 16.16ms | 16.39ms | 21.50ms | 20.00ms | 31.12ms | 44.31ms |
| comp_1to8 | 11.14ms | 17.49ms | 8.04ms | 16.12ms | 30.44ms | 42.50ms |
| comp_1to1000 | 4.74ms | 15.50ms | 7.24ms | 5.56ms | 14.83ms | 38.30ms |
| update_1to1 | 2.96ms | 20.13ms | 7.99ms | 26.49ms | 13.67ms | 4.70ms |
| update_2to1 | 1.48ms | 9.79ms | 3.69ms | 13.21ms | 6.87ms | 2.30ms |
| update_4to1 | 762μs | 4.93ms | 2.11ms | 6.41ms | 3.66ms | 1.14ms |
| update_1000to1 | 7μs | 48μs | 21μs | 70μs | 35μs | 11μs |
| update_1to2 | 1.59ms | 10.16ms | 4.44ms | 13.10ms | 7.37ms | 2.29ms |
| update_1to4 | 840μs | 4.87ms | 2.06ms | 6.80ms | 3.52ms | 1.11ms |
| update_1to1000 | 43μs | 155μs | 398μs | 75μs | 145μs | 375μs |
| cellx1000 | 8.11ms | 88.39ms | 11.37ms | 11.45ms | 13.89ms | 13.51ms |
| cellx2500 | 22.81ms | 240.91ms | 27.89ms | 29.05ms | 37.91ms | 34.20ms |
| cellx5000 | 51.63ms | 564.43ms | 75.99ms | 71.48ms | 83.30ms | 88.15ms |
| 10x5 - 2 sources - read 20.0% (simple) | 173.32ms | 2.01s | 441.68ms | 472.42ms | 313.42ms | 223.71ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 151.56ms | 1.48s | 259.73ms | 263.76ms | 232.62ms | 171.79ms |
| 1000x12 - 4 sources - dynamic (large) | 247.67ms | 1.66s | 3.36s | 3.10s | 382.68ms | 284.63ms |
| 1000x5 - 25 sources (wide dense) | 382.47ms | 3.32s | 2.74s | 2.66s | 640.14ms | 378.76ms |
| 5x500 - 3 sources (deep) | 177.23ms | 1.16s | 231.61ms | 227.31ms | 271.46ms | 202.10ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 200.88ms | 1.64s | 412.81ms | 423.61ms | 288.63ms | 215.47ms |

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
