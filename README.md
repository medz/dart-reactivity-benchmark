# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.26s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.06s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.95s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.03s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.25s |

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
| avoidablePropagation | 125.45ms | 2.38s | 202.71ms | 250.99ms | 245.25ms | 166.22ms |
| broadPropagation | 235.66ms | 4.48s | 469.33ms | 449.87ms | 437.82ms | 396.34ms |
| deepPropagation | 80.67ms | 1.49s | 184.38ms | 165.38ms | 132.18ms | 157.85ms |
| diamond | 156.06ms | 2.42s | 294.81ms | 327.78ms | 304.37ms | 216.06ms |
| mux | 292.32ms | 1.87s | 382.55ms | 394.39ms | 379.49ms | 369.77ms |
| repeatedObservers | 26.66ms | 236.95ms | 42.05ms | 51.26ms | 87.96ms | 58.89ms |
| triangle | 64.91ms | 759.87ms | 102.00ms | 139.97ms | 96.78ms | 86.06ms |
| unstable | 45.61ms | 348.31ms | 72.10ms | 85.71ms | 101.33ms | 347.10ms |
| molBench | 486.50ms | 589.79ms | 486.57ms | 488.98ms | 489.36ms | 492.70ms |
| create_signals | 31.50ms | 61.44ms | 5.39ms | 30.79ms | 122.26ms | 62.80ms |
| comp_0to1 | 13.48ms | 19.02ms | 17.46ms | 21.81ms | 18.58ms | 60.22ms |
| comp_1to1 | 15.50ms | 29.38ms | 12.97ms | 7.83ms | 40.85ms | 56.65ms |
| comp_2to1 | 24.13ms | 17.41ms | 17.32ms | 13.12ms | 13.02ms | 38.95ms |
| comp_4to1 | 2.55ms | 28.36ms | 8.98ms | 5.04ms | 4.35ms | 16.48ms |
| comp_1000to1 | 4μs | 15μs | 6μs | 5μs | 20μs | 38μs |
| comp_1to2 | 12.48ms | 38.07ms | 17.11ms | 18.90ms | 33.21ms | 43.67ms |
| comp_1to4 | 17.47ms | 23.99ms | 31.86ms | 25.44ms | 20.56ms | 43.45ms |
| comp_1to8 | 5.17ms | 22.95ms | 8.92ms | 9.76ms | 22.17ms | 41.41ms |
| comp_1to1000 | 3.17ms | 15.19ms | 8.32ms | 3.94ms | 14.15ms | 37.36ms |
| update_1to1 | 5.48ms | 24.33ms | 8.96ms | 30.50ms | 14.10ms | 6.09ms |
| update_2to1 | 3.31ms | 10.87ms | 4.61ms | 15.27ms | 7.28ms | 3.06ms |
| update_4to1 | 1.98ms | 6.66ms | 2.26ms | 7.50ms | 3.54ms | 1.56ms |
| update_1000to1 | 9μs | 73μs | 34μs | 76μs | 35μs | 15μs |
| update_1to2 | 4.78ms | 10.42ms | 4.42ms | 15.23ms | 7.04ms | 3.07ms |
| update_1to4 | 2.24ms | 6.92ms | 2.27ms | 7.64ms | 3.64ms | 1.56ms |
| update_1to1000 | 40μs | 162μs | 1.05ms | 63μs | 143μs | 362μs |
| cellx1000 | 5.43ms | 70.28ms | 9.56ms | 12.50ms | 9.31ms | 8.99ms |
| cellx2500 | 15.29ms | 268.97ms | 25.86ms | 26.77ms | 27.40ms | 25.23ms |
| cellx5000 | 33.71ms | 551.36ms | 67.24ms | 61.03ms | 65.17ms | 88.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 183.57ms | 1.97s | 508.32ms | 532.57ms | 324.83ms | 236.25ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.13ms | 1.47s | 295.47ms | 299.59ms | 222.15ms | 211.03ms |
| 1000x12 - 4 sources - dynamic (large) | 272.52ms | 1.89s | 4.59s | 3.50s | 445.69ms | 361.36ms |
| 1000x5 - 25 sources (wide dense) | 532.34ms | 3.40s | 3.42s | 3.24s | 810.27ms | 495.99ms |
| 5x500 - 3 sources (deep) | 153.92ms | 1.11s | 242.62ms | 233.53ms | 225.04ms | 208.81ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 247.80ms | 1.63s | 483.66ms | 482.28ms | 327.73ms | 262.47ms |

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
