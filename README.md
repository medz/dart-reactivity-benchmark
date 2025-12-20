# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.29s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.31s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 11.87s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.88s |

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
| avoidablePropagation | 125.49ms | 2.34s | 202.64ms | 248.46ms | 246.39ms | 171.46ms |
| broadPropagation | 236.61ms | 4.35s | 472.57ms | 457.12ms | 446.35ms | 402.53ms |
| deepPropagation | 82.05ms | 1.48s | 182.22ms | 170.27ms | 129.83ms | 158.02ms |
| diamond | 156.82ms | 2.32s | 287.10ms | 310.28ms | 303.98ms | 216.03ms |
| mux | 303.11ms | 1.84s | 387.34ms | 378.57ms | 390.82ms | 359.78ms |
| repeatedObservers | 27.76ms | 224.29ms | 40.27ms | 50.52ms | 90.43ms | 58.84ms |
| triangle | 66.58ms | 732.80ms | 101.76ms | 110.78ms | 95.64ms | 84.11ms |
| unstable | 46.17ms | 344.48ms | 71.28ms | 85.14ms | 102.05ms | 343.65ms |
| molBench | 487.42ms | 589.04ms | 488.78ms | 488.23ms | 489.26ms | 492.60ms |
| create_signals | 23.37ms | 51.90ms | 5.34ms | 23.75ms | 113.75ms | 67.39ms |
| comp_0to1 | 20.95ms | 14.94ms | 17.30ms | 27.72ms | 41.36ms | 55.05ms |
| comp_1to1 | 16.94ms | 39.70ms | 13.64ms | 13.48ms | 43.00ms | 57.83ms |
| comp_2to1 | 18.61ms | 36.56ms | 18.82ms | 17.07ms | 22.40ms | 37.59ms |
| comp_4to1 | 2.17ms | 21.91ms | 14.20ms | 1.95ms | 4.49ms | 17.62ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 5μs | 15μs | 38μs |
| comp_1to2 | 9.32ms | 37.13ms | 15.60ms | 21.84ms | 37.15ms | 46.75ms |
| comp_1to4 | 17.41ms | 17.56ms | 28.43ms | 18.67ms | 26.83ms | 46.57ms |
| comp_1to8 | 5.33ms | 20.51ms | 7.23ms | 11.13ms | 32.85ms | 42.48ms |
| comp_1to1000 | 3.14ms | 15.01ms | 5.66ms | 4.21ms | 14.53ms | 37.76ms |
| update_1to1 | 6.17ms | 28.56ms | 8.98ms | 29.66ms | 14.04ms | 6.10ms |
| update_2to1 | 4.78ms | 13.57ms | 4.60ms | 14.82ms | 6.95ms | 3.05ms |
| update_4to1 | 1.61ms | 7.00ms | 2.21ms | 7.14ms | 3.54ms | 1.53ms |
| update_1000to1 | 9μs | 66μs | 22μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.72ms | 13.79ms | 4.42ms | 14.75ms | 7.54ms | 3.06ms |
| update_1to4 | 1.83ms | 6.89ms | 2.22ms | 7.41ms | 3.60ms | 1.50ms |
| update_1to1000 | 41μs | 160μs | 826μs | 81μs | 145μs | 370μs |
| cellx1000 | 6.31ms | 80.49ms | 9.68ms | 9.66ms | 10.69ms | 8.81ms |
| cellx2500 | 18.87ms | 279.36ms | 25.94ms | 25.86ms | 25.74ms | 25.02ms |
| cellx5000 | 47.09ms | 587.75ms | 73.33ms | 61.26ms | 58.31ms | 81.84ms |
| 10x5 - 2 sources - read 20.0% (simple) | 186.01ms | 1.93s | 520.27ms | 538.50ms | 329.36ms | 259.55ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.46ms | 1.46s | 291.21ms | 301.57ms | 221.48ms | 200.27ms |
| 1000x12 - 4 sources - dynamic (large) | 280.04ms | 1.86s | 4.42s | 3.85s | 441.60ms | 357.55ms |
| 1000x5 - 25 sources (wide dense) | 531.13ms | 3.40s | 3.43s | 3.29s | 807.40ms | 494.27ms |
| 5x500 - 3 sources (deep) | 155.56ms | 1.09s | 240.10ms | 232.18ms | 230.26ms | 205.24ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 243.25ms | 1.65s | 481.49ms | 486.01ms | 328.75ms | 264.18ms |

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
