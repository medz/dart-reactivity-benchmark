# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.24s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.63s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.16s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.35s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.26s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.28s |

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
| avoidablePropagation | 125.79ms | 2.37s | 206.21ms | 248.59ms | 237.74ms | 169.38ms |
| broadPropagation | 237.47ms | 4.35s | 468.06ms | 454.43ms | 437.91ms | 402.12ms |
| deepPropagation | 82.23ms | 1.50s | 184.80ms | 172.47ms | 128.79ms | 156.81ms |
| diamond | 158.18ms | 2.37s | 288.30ms | 308.05ms | 305.46ms | 225.06ms |
| mux | 295.35ms | 1.82s | 385.23ms | 381.19ms | 383.07ms | 360.60ms |
| repeatedObservers | 27.31ms | 234.72ms | 40.37ms | 51.21ms | 88.03ms | 58.70ms |
| triangle | 66.76ms | 758.50ms | 102.92ms | 111.38ms | 96.84ms | 87.74ms |
| unstable | 45.36ms | 341.63ms | 71.71ms | 85.66ms | 100.11ms | 342.92ms |
| molBench | 486.68ms | 590.78ms | 490.33ms | 490.04ms | 487.06ms | 493.87ms |
| create_signals | 27.08ms | 70.76ms | 5.43ms | 27.21ms | 79.11ms | 67.68ms |
| comp_0to1 | 13.57ms | 29.90ms | 17.77ms | 24.60ms | 44.67ms | 57.60ms |
| comp_1to1 | 14.82ms | 38.76ms | 13.24ms | 7.83ms | 25.76ms | 55.36ms |
| comp_2to1 | 12.74ms | 37.54ms | 11.62ms | 10.41ms | 13.63ms | 36.59ms |
| comp_4to1 | 2.83ms | 24.42ms | 12.38ms | 2.28ms | 4.30ms | 18.23ms |
| comp_1000to1 | 3μs | 16μs | 8μs | 5μs | 19μs | 39μs |
| comp_1to2 | 10.71ms | 38.16ms | 21.70ms | 17.80ms | 36.38ms | 45.37ms |
| comp_1to4 | 24.31ms | 26.16ms | 31.10ms | 14.86ms | 24.10ms | 45.11ms |
| comp_1to8 | 5.32ms | 25.19ms | 8.13ms | 10.27ms | 25.12ms | 43.54ms |
| comp_1to1000 | 3.01ms | 17.42ms | 7.34ms | 3.92ms | 14.70ms | 39.44ms |
| update_1to1 | 4.23ms | 20.81ms | 9.05ms | 29.36ms | 14.20ms | 6.12ms |
| update_2to1 | 4.81ms | 10.26ms | 4.63ms | 14.74ms | 7.66ms | 3.05ms |
| update_4to1 | 949μs | 5.22ms | 2.27ms | 7.09ms | 3.54ms | 1.52ms |
| update_1000to1 | 9μs | 51μs | 22μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.78ms | 10.18ms | 4.41ms | 14.65ms | 7.02ms | 3.07ms |
| update_1to4 | 948μs | 5.10ms | 2.27ms | 7.38ms | 3.65ms | 1.49ms |
| update_1to1000 | 40μs | 164μs | 1.11ms | 63μs | 155μs | 398μs |
| cellx1000 | 5.57ms | 92.03ms | 10.60ms | 11.70ms | 12.27ms | 10.07ms |
| cellx2500 | 15.28ms | 276.91ms | 35.02ms | 32.07ms | 43.89ms | 34.31ms |
| cellx5000 | 32.58ms | 632.54ms | 112.85ms | 97.60ms | 140.69ms | 114.95ms |
| 10x5 - 2 sources - read 20.0% (simple) | 184.48ms | 1.95s | 509.44ms | 548.04ms | 324.96ms | 244.27ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 157.09ms | 1.47s | 291.99ms | 307.67ms | 225.63ms | 198.56ms |
| 1000x12 - 4 sources - dynamic (large) | 268.39ms | 1.91s | 4.59s | 3.73s | 456.92ms | 366.46ms |
| 1000x5 - 25 sources (wide dense) | 524.39ms | 3.42s | 3.59s | 3.41s | 826.22ms | 475.02ms |
| 5x500 - 3 sources (deep) | 155.43ms | 1.14s | 243.10ms | 230.26ms | 234.04ms | 210.37ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 243.58ms | 1.69s | 487.67ms | 489.21ms | 329.73ms | 257.32ms |

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
