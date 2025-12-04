# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.28s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.59s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.16s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 11.88s |
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
| avoidablePropagation | 125.80ms | 2.37s | 203.96ms | 248.01ms | 264.99ms | 167.84ms |
| broadPropagation | 239.28ms | 4.34s | 471.53ms | 448.76ms | 440.87ms | 405.90ms |
| deepPropagation | 81.06ms | 1.49s | 184.84ms | 167.91ms | 132.11ms | 155.99ms |
| diamond | 162.10ms | 2.36s | 288.56ms | 311.97ms | 304.80ms | 214.72ms |
| mux | 300.28ms | 1.87s | 385.62ms | 389.39ms | 393.70ms | 356.72ms |
| repeatedObservers | 27.16ms | 230.21ms | 40.54ms | 50.31ms | 88.52ms | 60.65ms |
| triangle | 65.93ms | 749.99ms | 102.13ms | 106.26ms | 110.60ms | 85.70ms |
| unstable | 46.26ms | 342.74ms | 72.03ms | 85.21ms | 102.27ms | 343.37ms |
| molBench | 488.28ms | 588.71ms | 484.33ms | 489.18ms | 488.88ms | 492.46ms |
| create_signals | 22.94ms | 52.30ms | 5.62ms | 25.16ms | 127.47ms | 62.98ms |
| comp_0to1 | 17.38ms | 15.73ms | 18.57ms | 23.85ms | 41.56ms | 54.53ms |
| comp_1to1 | 17.93ms | 44.93ms | 13.64ms | 7.73ms | 25.32ms | 52.95ms |
| comp_2to1 | 17.02ms | 30.41ms | 10.38ms | 11.87ms | 14.90ms | 35.80ms |
| comp_4to1 | 2.35ms | 16.80ms | 14.98ms | 6.50ms | 12.45ms | 15.59ms |
| comp_1000to1 | 4μs | 19μs | 9μs | 5μs | 30μs | 38μs |
| comp_1to2 | 9.22ms | 37.24ms | 18.35ms | 18.31ms | 36.34ms | 46.66ms |
| comp_1to4 | 10.26ms | 20.10ms | 27.07ms | 21.80ms | 22.57ms | 45.99ms |
| comp_1to8 | 8.48ms | 23.35ms | 7.88ms | 12.50ms | 25.40ms | 41.80ms |
| comp_1to1000 | 4.14ms | 15.88ms | 6.24ms | 7.10ms | 14.51ms | 37.32ms |
| update_1to1 | 5.15ms | 27.17ms | 9.01ms | 29.80ms | 13.98ms | 6.10ms |
| update_2to1 | 4.83ms | 13.59ms | 4.56ms | 14.76ms | 7.17ms | 3.05ms |
| update_4to1 | 984μs | 7.20ms | 2.29ms | 7.25ms | 3.49ms | 1.57ms |
| update_1000to1 | 15μs | 67μs | 22μs | 1.23ms | 35μs | 15μs |
| update_1to2 | 4.89ms | 12.90ms | 4.43ms | 15.26ms | 6.96ms | 3.06ms |
| update_1to4 | 1.72ms | 6.94ms | 2.25ms | 7.41ms | 3.59ms | 1.52ms |
| update_1to1000 | 45μs | 202μs | 54μs | 70μs | 146μs | 366μs |
| cellx1000 | 5.57ms | 76.08ms | 9.65ms | 11.97ms | 11.01ms | 9.57ms |
| cellx2500 | 15.80ms | 261.40ms | 26.07ms | 26.61ms | 30.40ms | 27.91ms |
| cellx5000 | 48.03ms | 567.56ms | 77.15ms | 66.71ms | 72.69ms | 89.46ms |
| 10x5 - 2 sources - read 20.0% (simple) | 184.75ms | 1.94s | 516.45ms | 533.83ms | 322.11ms | 248.60ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.00ms | 1.46s | 293.50ms | 298.72ms | 219.70ms | 198.97ms |
| 1000x12 - 4 sources - dynamic (large) | 270.22ms | 1.88s | 4.40s | 3.67s | 445.50ms | 359.33ms |
| 1000x5 - 25 sources (wide dense) | 536.85ms | 3.47s | 3.45s | 3.36s | 821.15ms | 496.23ms |
| 5x500 - 3 sources (deep) | 153.91ms | 1.10s | 240.16ms | 233.28ms | 230.84ms | 208.74ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 243.99ms | 1.64s | 483.85ms | 487.89ms | 328.78ms | 259.38ms |

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
