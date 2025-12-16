# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.27s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.56s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.01s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.85s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.17s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.12s |

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
| avoidablePropagation | 126.10ms | 2.37s | 203.84ms | 248.74ms | 242.85ms | 168.20ms |
| broadPropagation | 235.62ms | 4.45s | 466.86ms | 448.74ms | 443.89ms | 393.78ms |
| deepPropagation | 81.36ms | 1.50s | 184.48ms | 166.64ms | 130.08ms | 159.03ms |
| diamond | 157.14ms | 2.37s | 291.99ms | 315.69ms | 302.79ms | 211.04ms |
| mux | 297.45ms | 1.86s | 386.10ms | 385.95ms | 380.75ms | 357.36ms |
| repeatedObservers | 27.65ms | 229.10ms | 41.03ms | 50.79ms | 89.83ms | 58.70ms |
| triangle | 66.52ms | 774.45ms | 101.74ms | 107.36ms | 98.41ms | 87.61ms |
| unstable | 46.45ms | 347.44ms | 71.86ms | 84.93ms | 101.48ms | 342.57ms |
| molBench | 485.33ms | 590.52ms | 488.33ms | 491.59ms | 489.56ms | 492.16ms |
| create_signals | 27.32ms | 72.50ms | 5.49ms | 27.06ms | 67.67ms | 57.75ms |
| comp_0to1 | 11.98ms | 25.13ms | 17.71ms | 20.46ms | 17.76ms | 51.70ms |
| comp_1to1 | 15.29ms | 17.34ms | 13.91ms | 8.06ms | 29.27ms | 57.61ms |
| comp_2to1 | 12.89ms | 21.18ms | 17.14ms | 11.79ms | 14.34ms | 37.30ms |
| comp_4to1 | 2.89ms | 18.40ms | 20.51ms | 2.16ms | 4.47ms | 17.30ms |
| comp_1000to1 | 3μs | 15μs | 4μs | 7μs | 14μs | 38μs |
| comp_1to2 | 11.73ms | 38.85ms | 30.33ms | 23.81ms | 34.63ms | 43.14ms |
| comp_1to4 | 17.42ms | 24.95ms | 21.00ms | 23.53ms | 21.87ms | 43.86ms |
| comp_1to8 | 5.40ms | 25.28ms | 9.39ms | 10.86ms | 23.73ms | 41.94ms |
| comp_1to1000 | 3.15ms | 23.94ms | 6.94ms | 4.28ms | 14.24ms | 37.41ms |
| update_1to1 | 7.21ms | 24.51ms | 8.88ms | 29.48ms | 13.98ms | 6.13ms |
| update_2to1 | 4.75ms | 13.46ms | 4.61ms | 14.77ms | 7.12ms | 3.04ms |
| update_4to1 | 1.68ms | 7.01ms | 2.32ms | 7.42ms | 3.48ms | 1.52ms |
| update_1000to1 | 9μs | 70μs | 22μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.74ms | 13.80ms | 4.43ms | 14.71ms | 7.04ms | 3.06ms |
| update_1to4 | 1.03ms | 6.91ms | 2.27ms | 7.39ms | 3.57ms | 1.49ms |
| update_1to1000 | 40μs | 163μs | 595μs | 63μs | 144μs | 373μs |
| cellx1000 | 5.56ms | 72.49ms | 9.90ms | 11.99ms | 12.28ms | 11.81ms |
| cellx2500 | 15.09ms | 248.35ms | 25.77ms | 27.85ms | 27.35ms | 24.47ms |
| cellx5000 | 33.39ms | 549.20ms | 67.14ms | 60.15ms | 68.75ms | 82.83ms |
| 10x5 - 2 sources - read 20.0% (simple) | 182.22ms | 1.93s | 524.60ms | 536.41ms | 323.04ms | 244.09ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.80ms | 1.45s | 291.00ms | 295.50ms | 218.56ms | 199.92ms |
| 1000x12 - 4 sources - dynamic (large) | 277.68ms | 1.88s | 4.60s | 3.46s | 442.27ms | 358.38ms |
| 1000x5 - 25 sources (wide dense) | 538.23ms | 3.44s | 3.51s | 3.23s | 815.81ms | 496.74ms |
| 5x500 - 3 sources (deep) | 156.61ms | 1.09s | 239.71ms | 234.48ms | 227.91ms | 206.54ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.88ms | 1.64s | 490.55ms | 486.62ms | 329.33ms | 261.51ms |

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
