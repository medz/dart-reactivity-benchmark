# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.30s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.15s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.32s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.40s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.06s |

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
| avoidablePropagation | 125.11ms | 2.38s | 205.67ms | 251.38ms | 273.82ms | 167.63ms |
| broadPropagation | 235.73ms | 4.35s | 467.37ms | 453.19ms | 445.89ms | 403.27ms |
| deepPropagation | 82.22ms | 1.48s | 187.30ms | 168.21ms | 133.31ms | 159.54ms |
| diamond | 156.96ms | 2.40s | 289.98ms | 311.32ms | 313.20ms | 215.62ms |
| mux | 293.71ms | 1.86s | 389.95ms | 381.38ms | 385.84ms | 354.70ms |
| repeatedObservers | 26.90ms | 228.18ms | 40.96ms | 50.91ms | 89.82ms | 59.11ms |
| triangle | 65.84ms | 745.06ms | 102.61ms | 109.55ms | 98.38ms | 87.06ms |
| unstable | 45.72ms | 342.39ms | 71.52ms | 85.93ms | 104.29ms | 344.00ms |
| molBench | 487.92ms | 592.22ms | 489.35ms | 488.44ms | 493.09ms | 494.12ms |
| create_signals | 28.86ms | 68.97ms | 5.51ms | 23.36ms | 71.29ms | 60.97ms |
| comp_0to1 | 16.94ms | 27.36ms | 21.60ms | 30.46ms | 40.81ms | 54.23ms |
| comp_1to1 | 18.20ms | 38.19ms | 13.61ms | 11.17ms | 36.83ms | 55.59ms |
| comp_2to1 | 17.34ms | 22.84ms | 18.77ms | 10.90ms | 28.89ms | 36.37ms |
| comp_4to1 | 2.68ms | 19.16ms | 12.46ms | 2.18ms | 4.47ms | 15.55ms |
| comp_1000to1 | 4μs | 15μs | 8μs | 6μs | 14μs | 41μs |
| comp_1to2 | 11.58ms | 35.43ms | 21.68ms | 17.65ms | 26.54ms | 46.10ms |
| comp_1to4 | 12.70ms | 17.84ms | 32.75ms | 14.67ms | 33.41ms | 45.92ms |
| comp_1to8 | 7.02ms | 20.67ms | 7.05ms | 8.29ms | 25.83ms | 44.21ms |
| comp_1to1000 | 6.18ms | 15.41ms | 5.64ms | 3.99ms | 14.61ms | 38.22ms |
| update_1to1 | 3.86ms | 27.77ms | 9.28ms | 29.70ms | 14.35ms | 6.13ms |
| update_2to1 | 3.70ms | 12.66ms | 4.73ms | 14.77ms | 7.12ms | 3.05ms |
| update_4to1 | 1.66ms | 6.43ms | 2.35ms | 7.07ms | 3.50ms | 1.56ms |
| update_1000to1 | 9μs | 66μs | 36μs | 73μs | 34μs | 15μs |
| update_1to2 | 4.78ms | 12.06ms | 4.62ms | 14.69ms | 6.96ms | 3.06ms |
| update_1to4 | 1.56ms | 6.92ms | 2.29ms | 7.37ms | 3.58ms | 1.53ms |
| update_1to1000 | 46μs | 162μs | 68μs | 96μs | 149μs | 401μs |
| cellx1000 | 5.53ms | 71.29ms | 9.89ms | 9.95ms | 9.33ms | 9.29ms |
| cellx2500 | 17.14ms | 258.53ms | 27.61ms | 30.18ms | 27.51ms | 30.22ms |
| cellx5000 | 52.05ms | 582.33ms | 75.74ms | 68.56ms | 81.87ms | 83.29ms |
| 10x5 - 2 sources - read 20.0% (simple) | 189.03ms | 1.91s | 509.85ms | 537.53ms | 328.12ms | 252.81ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.76ms | 1.48s | 305.36ms | 297.86ms | 222.33ms | 198.41ms |
| 1000x12 - 4 sources - dynamic (large) | 275.44ms | 1.87s | 4.67s | 3.68s | 447.56ms | 362.46ms |
| 1000x5 - 25 sources (wide dense) | 543.76ms | 3.42s | 3.66s | 3.47s | 818.16ms | 502.53ms |
| 5x500 - 3 sources (deep) | 153.96ms | 1.08s | 235.67ms | 238.19ms | 229.18ms | 207.88ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 247.12ms | 1.66s | 494.17ms | 491.29ms | 328.51ms | 260.74ms |

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
