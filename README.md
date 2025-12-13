# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.30s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.67s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.14s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.96s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.31s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.39s |

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
| avoidablePropagation | 126.26ms | 2.32s | 215.27ms | 248.12ms | 243.00ms | 175.87ms |
| broadPropagation | 238.34ms | 4.53s | 468.11ms | 446.47ms | 444.05ms | 396.66ms |
| deepPropagation | 82.10ms | 1.49s | 184.32ms | 168.66ms | 130.01ms | 155.41ms |
| diamond | 156.46ms | 2.38s | 291.70ms | 310.01ms | 304.19ms | 217.39ms |
| mux | 297.88ms | 1.85s | 393.50ms | 394.62ms | 378.47ms | 357.07ms |
| repeatedObservers | 27.04ms | 224.22ms | 40.76ms | 51.51ms | 88.14ms | 58.61ms |
| triangle | 65.92ms | 751.71ms | 102.08ms | 108.46ms | 94.44ms | 84.51ms |
| unstable | 47.01ms | 344.25ms | 72.54ms | 85.60ms | 100.97ms | 343.37ms |
| molBench | 489.33ms | 590.11ms | 485.53ms | 489.62ms | 480.98ms | 493.20ms |
| create_signals | 29.27ms | 81.71ms | 5.58ms | 32.32ms | 74.62ms | 58.62ms |
| comp_0to1 | 12.45ms | 41.48ms | 18.91ms | 27.65ms | 18.23ms | 52.38ms |
| comp_1to1 | 15.64ms | 17.32ms | 11.97ms | 10.12ms | 39.00ms | 54.14ms |
| comp_2to1 | 17.58ms | 20.52ms | 11.88ms | 8.71ms | 14.56ms | 36.40ms |
| comp_4to1 | 2.77ms | 32.23ms | 11.45ms | 2.19ms | 7.17ms | 16.68ms |
| comp_1000to1 | 4μs | 24μs | 5μs | 5μs | 14μs | 38μs |
| comp_1to2 | 12.47ms | 39.15ms | 25.51ms | 24.64ms | 39.94ms | 44.48ms |
| comp_1to4 | 17.89ms | 27.10ms | 30.06ms | 16.08ms | 29.84ms | 44.01ms |
| comp_1to8 | 6.47ms | 25.74ms | 13.08ms | 10.21ms | 30.85ms | 41.75ms |
| comp_1to1000 | 3.31ms | 15.73ms | 7.80ms | 4.69ms | 14.75ms | 37.30ms |
| update_1to1 | 5.64ms | 26.17ms | 8.97ms | 29.58ms | 14.04ms | 6.11ms |
| update_2to1 | 4.75ms | 13.27ms | 4.70ms | 15.57ms | 6.99ms | 3.05ms |
| update_4to1 | 2.00ms | 7.03ms | 2.31ms | 8.68ms | 3.52ms | 1.55ms |
| update_1000to1 | 9μs | 79μs | 40μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.77ms | 11.06ms | 4.55ms | 14.82ms | 7.66ms | 3.11ms |
| update_1to4 | 946μs | 6.89ms | 2.33ms | 7.41ms | 3.61ms | 1.52ms |
| update_1to1000 | 41μs | 161μs | 605μs | 111μs | 142μs | 359μs |
| cellx1000 | 6.02ms | 83.69ms | 12.03ms | 10.78ms | 10.90ms | 9.64ms |
| cellx2500 | 20.45ms | 312.01ms | 45.30ms | 37.11ms | 36.49ms | 33.32ms |
| cellx5000 | 46.67ms | 668.61ms | 127.00ms | 95.38ms | 131.10ms | 113.97ms |
| 10x5 - 2 sources - read 20.0% (simple) | 184.58ms | 1.91s | 508.07ms | 538.78ms | 324.47ms | 255.69ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 155.78ms | 1.46s | 293.13ms | 301.70ms | 223.61ms | 200.58ms |
| 1000x12 - 4 sources - dynamic (large) | 283.48ms | 1.91s | 4.65s | 3.44s | 454.83ms | 388.78ms |
| 1000x5 - 25 sources (wide dense) | 534.24ms | 3.39s | 3.52s | 3.28s | 822.91ms | 504.57ms |
| 5x500 - 3 sources (deep) | 155.99ms | 1.13s | 241.14ms | 240.71ms | 230.31ms | 212.14ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.61ms | 1.68s | 498.21ms | 495.81ms | 338.86ms | 263.94ms |

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
