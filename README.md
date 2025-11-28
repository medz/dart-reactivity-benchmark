# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.93s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.12s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.79s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.08s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.73s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.30s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|
| avoidablePropagation | 132.11ms | 2.24s | 198.91ms | 195.29ms | 238.82ms | 156.61ms |
| broadPropagation | 223.43ms | 4.08s | 405.08ms | 386.25ms | 428.33ms | 347.96ms |
| deepPropagation | 86.59ms | 1.44s | 189.38ms | 172.83ms | 131.84ms | 164.47ms |
| diamond | 147.00ms | 2.23s | 274.18ms | 258.53ms | 306.50ms | 212.16ms |
| mux | 290.19ms | 1.76s | 346.22ms | 327.82ms | 378.07ms | 316.74ms |
| repeatedObservers | 22.85ms | 218.98ms | 34.99ms | 39.88ms | 88.67ms | 51.03ms |
| triangle | 61.80ms | 740.09ms | 98.14ms | 92.23ms | 100.84ms | 83.92ms |
| unstable | 42.35ms | 325.72ms | 60.31ms | 65.14ms | 104.20ms | 326.87ms |
| molBench | 360.09ms | 481.75ms | 362.81ms | 389.03ms | 369.81ms | 388.71ms |
| create_signals | 33.60ms | 59.24ms | 6.76ms | 23.55ms | 117.69ms | 62.89ms |
| comp_0to1 | 14.07ms | 16.21ms | 18.90ms | 11.38ms | 20.08ms | 57.70ms |
| comp_1to1 | 18.24ms | 42.27ms | 9.50ms | 16.07ms | 46.47ms | 58.92ms |
| comp_2to1 | 15.48ms | 36.87ms | 12.21ms | 12.72ms | 22.74ms | 44.00ms |
| comp_4to1 | 3.69ms | 13.55ms | 16.67ms | 2.61ms | 14.00ms | 16.22ms |
| comp_1000to1 | 5μs | 16μs | 8μs | 8μs | 16μs | 40μs |
| comp_1to2 | 11.27ms | 35.38ms | 23.95ms | 18.52ms | 29.56ms | 44.85ms |
| comp_1to4 | 16.62ms | 28.67ms | 37.40ms | 10.60ms | 19.02ms | 45.29ms |
| comp_1to8 | 6.99ms | 29.05ms | 8.22ms | 8.35ms | 26.06ms | 44.15ms |
| comp_1to1000 | 4.67ms | 16.47ms | 7.31ms | 5.05ms | 15.30ms | 38.30ms |
| update_1to1 | 3.06ms | 20.53ms | 7.93ms | 8.94ms | 13.65ms | 4.63ms |
| update_2to1 | 1.66ms | 9.88ms | 4.15ms | 4.49ms | 6.99ms | 2.50ms |
| update_4to1 | 1.02ms | 5.40ms | 2.00ms | 2.16ms | 3.51ms | 1.30ms |
| update_1000to1 | 8μs | 46μs | 20μs | 24μs | 34μs | 11μs |
| update_1to2 | 1.67ms | 10.08ms | 4.05ms | 4.28ms | 7.13ms | 2.42ms |
| update_1to4 | 885μs | 4.86ms | 2.05ms | 2.41ms | 3.54ms | 1.11ms |
| update_1to1000 | 54μs | 190μs | 723μs | 58μs | 177μs | 392μs |
| cellx1000 | 8.07ms | 104.19ms | 10.85ms | 9.88ms | 15.99ms | 13.30ms |
| cellx2500 | 23.56ms | 287.24ms | 26.55ms | 33.45ms | 51.21ms | 37.95ms |
| cellx5000 | 59.96ms | 661.37ms | 84.00ms | 69.50ms | 112.53ms | 116.69ms |
| 10x5 - 2 sources - read 20.0% (simple) | 175.01ms | 2.03s | 448.28ms | 425.25ms | 316.79ms | 225.09ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 152.22ms | 1.46s | 262.02ms | 236.96ms | 233.68ms | 171.51ms |
| 1000x12 - 4 sources - dynamic (large) | 244.85ms | 1.70s | 3.35s | 3.08s | 384.08ms | 283.48ms |
| 1000x5 - 25 sources (wide dense) | 387.69ms | 3.39s | 2.77s | 2.56s | 627.54ms | 380.02ms |
| 5x500 - 3 sources (deep) | 172.53ms | 1.15s | 232.89ms | 213.13ms | 269.22ms | 202.92ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 202.63ms | 1.66s | 409.85ms | 393.93ms | 289.72ms | 215.59ms |

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
