# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.31s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.67s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.07s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.99s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.13s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.36s |

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
| avoidablePropagation | 125.22ms | 2.36s | 204.67ms | 249.65ms | 236.69ms | 171.33ms |
| broadPropagation | 237.56ms | 4.45s | 480.33ms | 446.19ms | 439.83ms | 434.31ms |
| deepPropagation | 80.90ms | 1.51s | 184.66ms | 168.32ms | 130.62ms | 158.09ms |
| diamond | 155.87ms | 2.38s | 288.82ms | 308.06ms | 303.56ms | 233.36ms |
| mux | 293.56ms | 1.83s | 384.12ms | 382.38ms | 382.05ms | 371.49ms |
| repeatedObservers | 27.30ms | 229.48ms | 40.28ms | 53.41ms | 91.78ms | 58.48ms |
| triangle | 65.67ms | 740.39ms | 102.17ms | 108.70ms | 99.00ms | 87.97ms |
| unstable | 45.98ms | 344.11ms | 71.65ms | 84.86ms | 104.28ms | 343.70ms |
| molBench | 487.62ms | 589.46ms | 489.25ms | 488.31ms | 492.07ms | 493.80ms |
| create_signals | 25.34ms | 74.30ms | 4.89ms | 23.68ms | 77.33ms | 62.13ms |
| comp_0to1 | 22.87ms | 26.30ms | 18.17ms | 33.53ms | 41.48ms | 53.75ms |
| comp_1to1 | 18.98ms | 31.57ms | 10.65ms | 14.18ms | 26.21ms | 55.91ms |
| comp_2to1 | 26.52ms | 11.81ms | 11.53ms | 10.92ms | 15.99ms | 36.97ms |
| comp_4to1 | 3.22ms | 15.68ms | 14.06ms | 2.95ms | 4.50ms | 16.12ms |
| comp_1000to1 | 4μs | 16μs | 5μs | 5μs | 20μs | 40μs |
| comp_1to2 | 10.02ms | 38.16ms | 16.25ms | 27.61ms | 35.99ms | 46.04ms |
| comp_1to4 | 14.92ms | 26.62ms | 23.70ms | 28.36ms | 23.04ms | 45.80ms |
| comp_1to8 | 6.01ms | 24.55ms | 7.79ms | 8.36ms | 23.91ms | 43.92ms |
| comp_1to1000 | 3.19ms | 15.66ms | 6.25ms | 6.63ms | 14.51ms | 38.30ms |
| update_1to1 | 5.43ms | 27.39ms | 9.24ms | 29.43ms | 14.01ms | 6.10ms |
| update_2to1 | 4.23ms | 11.67ms | 4.70ms | 14.72ms | 7.15ms | 3.12ms |
| update_4to1 | 1.64ms | 7.38ms | 2.30ms | 7.07ms | 3.50ms | 1.58ms |
| update_1000to1 | 9μs | 69μs | 23μs | 73μs | 34μs | 15μs |
| update_1to2 | 4.67ms | 13.87ms | 4.58ms | 14.71ms | 6.96ms | 3.09ms |
| update_1to4 | 1.30ms | 6.96ms | 2.31ms | 7.39ms | 3.57ms | 1.55ms |
| update_1to1000 | 40μs | 167μs | 839μs | 62μs | 144μs | 404μs |
| cellx1000 | 7.40ms | 74.19ms | 10.25ms | 10.03ms | 10.33ms | 9.48ms |
| cellx2500 | 18.55ms | 269.09ms | 29.42ms | 28.90ms | 30.73ms | 28.49ms |
| cellx5000 | 46.12ms | 594.30ms | 75.16ms | 73.51ms | 79.61ms | 89.21ms |
| 10x5 - 2 sources - read 20.0% (simple) | 189.66ms | 1.93s | 508.96ms | 540.60ms | 322.55ms | 248.42ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.22ms | 1.51s | 295.15ms | 301.61ms | 220.18ms | 199.51ms |
| 1000x12 - 4 sources - dynamic (large) | 276.27ms | 1.93s | 4.45s | 3.50s | 457.30ms | 364.44ms |
| 1000x5 - 25 sources (wide dense) | 540.79ms | 3.51s | 3.65s | 3.29s | 807.84ms | 496.91ms |
| 5x500 - 3 sources (deep) | 153.86ms | 1.12s | 238.35ms | 239.34ms | 230.66ms | 208.65ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.15ms | 1.67s | 490.21ms | 489.74ms | 334.57ms | 260.23ms |

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
