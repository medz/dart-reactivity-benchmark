# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.97s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.12s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.81s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.69s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.72s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.64s |

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
| avoidablePropagation | 132.42ms | 2.24s | 198.96ms | 252.32ms | 238.57ms | 156.92ms |
| broadPropagation | 220.10ms | 4.16s | 412.75ms | 402.24ms | 430.71ms | 355.22ms |
| deepPropagation | 86.99ms | 1.46s | 189.60ms | 180.99ms | 132.21ms | 163.63ms |
| diamond | 149.60ms | 2.22s | 274.14ms | 302.99ms | 302.57ms | 206.07ms |
| mux | 286.73ms | 1.76s | 337.83ms | 339.99ms | 376.06ms | 313.07ms |
| repeatedObservers | 23.31ms | 220.24ms | 34.95ms | 45.41ms | 87.34ms | 51.20ms |
| triangle | 62.17ms | 755.86ms | 98.85ms | 103.88ms | 100.86ms | 83.82ms |
| unstable | 41.69ms | 324.31ms | 60.46ms | 73.79ms | 105.03ms | 323.84ms |
| molBench | 359.90ms | 481.93ms | 364.10ms | 394.28ms | 369.29ms | 387.65ms |
| create_signals | 31.83ms | 71.48ms | 6.98ms | 26.93ms | 69.09ms | 73.80ms |
| comp_0to1 | 17.39ms | 26.98ms | 20.06ms | 29.19ms | 42.04ms | 53.48ms |
| comp_1to1 | 17.10ms | 43.45ms | 9.96ms | 10.22ms | 41.08ms | 53.81ms |
| comp_2to1 | 13.38ms | 36.38ms | 12.53ms | 10.57ms | 13.35ms | 39.80ms |
| comp_4to1 | 2.69ms | 18.84ms | 16.95ms | 2.86ms | 15.80ms | 16.41ms |
| comp_1000to1 | 7μs | 17μs | 10μs | 10μs | 16μs | 39μs |
| comp_1to2 | 16.93ms | 35.49ms | 24.77ms | 27.16ms | 27.59ms | 45.09ms |
| comp_1to4 | 24.82ms | 18.40ms | 24.45ms | 21.43ms | 28.71ms | 43.71ms |
| comp_1to8 | 6.89ms | 22.53ms | 8.02ms | 14.09ms | 25.18ms | 43.94ms |
| comp_1to1000 | 5.60ms | 16.93ms | 7.55ms | 5.83ms | 15.56ms | 38.54ms |
| update_1to1 | 3.00ms | 23.77ms | 7.91ms | 26.63ms | 13.81ms | 4.76ms |
| update_2to1 | 1.69ms | 11.17ms | 4.04ms | 12.86ms | 6.95ms | 2.40ms |
| update_4to1 | 810μs | 7.05ms | 2.13ms | 6.69ms | 3.54ms | 1.42ms |
| update_1000to1 | 7μs | 50μs | 19μs | 64μs | 34μs | 11μs |
| update_1to2 | 1.61ms | 10.60ms | 4.26ms | 13.22ms | 6.82ms | 2.47ms |
| update_1to4 | 1.18ms | 5.14ms | 2.10ms | 6.64ms | 3.67ms | 1.26ms |
| update_1to1000 | 40μs | 222μs | 629μs | 85μs | 157μs | 396μs |
| cellx1000 | 9.35ms | 100.71ms | 11.92ms | 12.78ms | 17.65ms | 15.07ms |
| cellx2500 | 28.33ms | 295.52ms | 31.77ms | 33.84ms | 52.83ms | 45.56ms |
| cellx5000 | 64.62ms | 590.60ms | 90.99ms | 84.11ms | 125.47ms | 111.00ms |
| 10x5 - 2 sources - read 20.0% (simple) | 189.23ms | 2.08s | 446.09ms | 472.76ms | 319.05ms | 224.11ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 152.77ms | 1.51s | 265.12ms | 264.66ms | 234.63ms | 171.05ms |
| 1000x12 - 4 sources - dynamic (large) | 248.48ms | 1.74s | 3.36s | 3.15s | 387.13ms | 288.57ms |
| 1000x5 - 25 sources (wide dense) | 388.73ms | 3.41s | 2.74s | 2.70s | 644.10ms | 379.37ms |
| 5x500 - 3 sources (deep) | 180.33ms | 1.25s | 233.03ms | 232.46ms | 282.11ms | 205.38ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 204.74ms | 1.69s | 419.43ms | 430.53ms | 293.91ms | 214.92ms |

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
