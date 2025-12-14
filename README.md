# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.28s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.73s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.11s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.88s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.27s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.50s |

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
| avoidablePropagation | 125.35ms | 2.40s | 205.43ms | 252.82ms | 245.99ms | 174.34ms |
| broadPropagation | 236.03ms | 4.55s | 483.07ms | 457.45ms | 447.02ms | 406.61ms |
| deepPropagation | 80.47ms | 1.54s | 187.14ms | 169.38ms | 133.04ms | 155.21ms |
| diamond | 157.61ms | 2.45s | 295.07ms | 315.03ms | 307.10ms | 219.75ms |
| mux | 301.36ms | 1.87s | 395.70ms | 384.93ms | 388.03ms | 371.04ms |
| repeatedObservers | 26.66ms | 229.49ms | 41.01ms | 51.00ms | 87.70ms | 58.89ms |
| triangle | 65.52ms | 748.49ms | 105.16ms | 107.10ms | 96.87ms | 84.50ms |
| unstable | 45.95ms | 342.61ms | 72.70ms | 87.04ms | 104.49ms | 344.89ms |
| molBench | 487.20ms | 591.30ms | 490.55ms | 489.87ms | 487.03ms | 493.44ms |
| create_signals | 26.33ms | 82.03ms | 5.40ms | 29.66ms | 70.00ms | 62.75ms |
| comp_0to1 | 12.05ms | 20.18ms | 18.43ms | 20.44ms | 18.03ms | 59.08ms |
| comp_1to1 | 19.35ms | 29.54ms | 14.52ms | 7.85ms | 28.72ms | 55.51ms |
| comp_2to1 | 16.48ms | 9.02ms | 22.70ms | 16.90ms | 13.02ms | 45.08ms |
| comp_4to1 | 2.56ms | 29.10ms | 8.97ms | 1.96ms | 7.60ms | 19.00ms |
| comp_1000to1 | 6μs | 16μs | 4μs | 5μs | 16μs | 38μs |
| comp_1to2 | 15.54ms | 35.29ms | 16.83ms | 16.58ms | 30.62ms | 48.45ms |
| comp_1to4 | 16.10ms | 19.48ms | 29.67ms | 20.30ms | 37.95ms | 44.29ms |
| comp_1to8 | 5.68ms | 21.44ms | 9.40ms | 11.51ms | 33.18ms | 44.11ms |
| comp_1to1000 | 3.93ms | 15.28ms | 7.81ms | 7.08ms | 14.88ms | 37.45ms |
| update_1to1 | 7.21ms | 25.67ms | 9.35ms | 29.54ms | 14.08ms | 6.11ms |
| update_2to1 | 4.78ms | 13.60ms | 4.70ms | 14.81ms | 6.99ms | 3.08ms |
| update_4to1 | 1.04ms | 6.99ms | 2.42ms | 7.14ms | 3.50ms | 1.59ms |
| update_1000to1 | 22μs | 69μs | 38μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.79ms | 10.43ms | 4.58ms | 14.77ms | 7.61ms | 3.09ms |
| update_1to4 | 1.58ms | 6.91ms | 2.31ms | 7.52ms | 3.63ms | 1.55ms |
| update_1to1000 | 30μs | 171μs | 44μs | 98μs | 160μs | 381μs |
| cellx1000 | 5.50ms | 73.42ms | 10.52ms | 9.93ms | 10.99ms | 12.54ms |
| cellx2500 | 15.27ms | 264.21ms | 32.88ms | 27.00ms | 33.58ms | 41.41ms |
| cellx5000 | 31.29ms | 565.38ms | 95.84ms | 62.87ms | 94.75ms | 130.37ms |
| 10x5 - 2 sources - read 20.0% (simple) | 186.17ms | 1.97s | 522.67ms | 535.38ms | 319.63ms | 250.15ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 158.63ms | 1.51s | 294.27ms | 298.84ms | 217.97ms | 200.33ms |
| 1000x12 - 4 sources - dynamic (large) | 270.46ms | 1.88s | 4.59s | 3.48s | 449.62ms | 377.98ms |
| 1000x5 - 25 sources (wide dense) | 538.27ms | 3.42s | 3.55s | 3.22s | 830.73ms | 504.93ms |
| 5x500 - 3 sources (deep) | 156.49ms | 1.13s | 245.61ms | 233.16ms | 231.65ms | 205.87ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 250.79ms | 1.64s | 492.75ms | 494.81ms | 331.89ms | 263.72ms |

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
