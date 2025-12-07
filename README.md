# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.04s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.21s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.88s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.74s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.93s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.03s |

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
| avoidablePropagation | 133.44ms | 2.27s | 202.75ms | 254.56ms | 239.47ms | 156.98ms |
| broadPropagation | 220.24ms | 4.18s | 412.95ms | 408.68ms | 440.66ms | 353.55ms |
| deepPropagation | 86.55ms | 1.47s | 190.49ms | 179.84ms | 132.17ms | 164.41ms |
| diamond | 150.76ms | 2.27s | 274.91ms | 297.86ms | 304.99ms | 210.42ms |
| mux | 302.49ms | 1.92s | 345.84ms | 341.17ms | 370.55ms | 315.10ms |
| repeatedObservers | 22.88ms | 230.00ms | 35.27ms | 45.28ms | 92.61ms | 51.48ms |
| triangle | 62.81ms | 768.63ms | 104.45ms | 103.79ms | 101.63ms | 84.92ms |
| unstable | 43.25ms | 328.66ms | 60.49ms | 72.56ms | 111.59ms | 329.16ms |
| molBench | 362.40ms | 483.48ms | 364.01ms | 393.37ms | 370.02ms | 389.53ms |
| create_signals | 37.39ms | 50.94ms | 6.84ms | 33.70ms | 71.42ms | 69.48ms |
| comp_0to1 | 19.62ms | 16.88ms | 20.87ms | 21.83ms | 43.35ms | 60.32ms |
| comp_1to1 | 19.98ms | 48.08ms | 13.38ms | 10.23ms | 26.68ms | 63.57ms |
| comp_2to1 | 15.15ms | 23.37ms | 28.18ms | 15.77ms | 19.40ms | 45.13ms |
| comp_4to1 | 8.74ms | 30.22ms | 2.69ms | 8.88ms | 14.81ms | 19.18ms |
| comp_1000to1 | 5μs | 18μs | 7μs | 7μs | 17μs | 54μs |
| comp_1to2 | 16.14ms | 42.19ms | 15.26ms | 19.55ms | 54.89ms | 48.35ms |
| comp_1to4 | 19.62ms | 24.86ms | 27.10ms | 21.41ms | 34.21ms | 45.75ms |
| comp_1to8 | 8.00ms | 25.16ms | 11.23ms | 12.81ms | 35.55ms | 44.11ms |
| comp_1to1000 | 6.24ms | 17.07ms | 5.64ms | 6.76ms | 15.81ms | 38.95ms |
| update_1to1 | 3.02ms | 20.63ms | 7.88ms | 26.08ms | 13.77ms | 4.72ms |
| update_2to1 | 1.63ms | 9.97ms | 3.57ms | 12.85ms | 6.85ms | 2.34ms |
| update_4to1 | 863μs | 5.84ms | 1.99ms | 6.62ms | 3.46ms | 1.32ms |
| update_1000to1 | 7μs | 50μs | 22μs | 66μs | 32μs | 11μs |
| update_1to2 | 1.59ms | 10.59ms | 3.94ms | 13.18ms | 7.47ms | 2.35ms |
| update_1to4 | 941μs | 5.26ms | 2.05ms | 6.62ms | 3.49ms | 1.23ms |
| update_1to1000 | 49μs | 205μs | 53μs | 84μs | 161μs | 381μs |
| cellx1000 | 10.42ms | 97.19ms | 11.91ms | 12.57ms | 19.27ms | 16.64ms |
| cellx2500 | 38.75ms | 315.32ms | 33.31ms | 39.70ms | 54.77ms | 48.48ms |
| cellx5000 | 102.00ms | 666.07ms | 94.36ms | 107.38ms | 138.16ms | 150.76ms |
| 10x5 - 2 sources - read 20.0% (simple) | 173.94ms | 2.07s | 455.61ms | 471.29ms | 315.99ms | 224.94ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 152.51ms | 1.53s | 261.11ms | 264.36ms | 233.60ms | 170.86ms |
| 1000x12 - 4 sources - dynamic (large) | 245.17ms | 1.75s | 3.44s | 3.13s | 382.12ms | 289.77ms |
| 1000x5 - 25 sources (wide dense) | 386.43ms | 3.46s | 2.81s | 2.73s | 640.94ms | 380.19ms |
| 5x500 - 3 sources (deep) | 181.69ms | 1.21s | 243.75ms | 232.40ms | 284.89ms | 210.89ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 207.58ms | 1.70s | 427.48ms | 433.79ms | 292.29ms | 217.80ms |

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
