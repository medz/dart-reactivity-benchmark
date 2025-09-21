# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.34s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.66s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.23s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.55s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.84s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.77ms | 2.38s | 201.71ms | 1.48s | 209.35ms | 255.45ms | 162.12ms (fail) |
| broadPropagation | 317.12ms | 4.34s | 473.75ms | 86.14ms (fail) | 464.28ms | 469.95ms | 6.66ms (fail) |
| deepPropagation | 98.67ms | 1.54s | 186.02ms | 1.94s (fail) | 175.88ms | 140.09ms | 146.16ms (fail) |
| diamond | 227.38ms | 2.41s | 281.22ms | 2.66s (fail) | 281.44ms | 309.80ms | 204.80ms (fail) |
| mux | 340.51ms | 1.81s | 389.83ms | 568.56ms (fail) | 412.07ms | 407.12ms | 194.26ms (fail) |
| repeatedObservers | 50.32ms | 237.46ms | 40.63ms | 401.77ms (fail) | 46.55ms | 90.18ms | 52.54ms (fail) |
| triangle | 85.08ms | 765.12ms | 100.40ms | 901.62ms (fail) | 101.52ms | 99.20ms | 80.48ms (fail) |
| unstable | 141.18ms | 347.31ms | 74.07ms | 651.43ms (fail) | 75.89ms | 166.79ms | 343.94ms (fail) |
| molBench | 480.30ms | 582.37ms | 489.48ms | 10.83ms | 486.20ms | 502.15ms | 943μs |
| create_signals | 26.60ms | 82.88ms | 5.21ms | 23.17ms | 26.17ms | 91.28ms | 63.37ms |
| comp_0to1 | 12.44ms | 21.12ms | 18.26ms | 15.66ms | 12.34ms | 34.62ms | 56.41ms |
| comp_1to1 | 30.94ms | 17.36ms | 14.96ms | 33.17ms | 27.62ms | 51.53ms | 57.03ms |
| comp_2to1 | 15.57ms | 21.19ms | 19.44ms | 35.65ms | 10.28ms | 30.17ms | 38.02ms |
| comp_4to1 | 3.24ms | 28.59ms | 11.49ms | 7.39ms | 2.28ms | 4.35ms | 16.91ms |
| comp_1000to1 | 7μs | 15μs | 7μs | 6μs | 5μs | 14μs | 45μs |
| comp_1to2 | 13.67ms | 43.41ms | 24.11ms | 14.73ms | 23.84ms | 37.64ms | 48.43ms |
| comp_1to4 | 12.79ms | 25.98ms | 29.33ms | 24.70ms | 15.43ms | 20.53ms | 46.21ms |
| comp_1to8 | 6.60ms | 25.17ms | 5.99ms | 9.00ms | 6.93ms | 24.39ms | 45.67ms |
| comp_1to1000 | 8.99ms | 15.44ms | 6.56ms | 5.15ms | 4.44ms | 15.13ms | 42.16ms |
| update_1to1 | 5.59ms | 24.37ms | 8.39ms | 81.89ms | 10.07ms | 16.77ms | 6.04ms |
| update_2to1 | 2.87ms | 12.48ms | 4.43ms | 42.37ms | 4.49ms | 8.41ms | 3.10ms |
| update_4to1 | 1.40ms | 6.54ms | 2.10ms | 20.10ms | 2.59ms | 4.20ms | 1.57ms |
| update_1000to1 | 13μs | 69μs | 20μs | 173μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.75ms | 12.15ms | 4.08ms | 42.08ms | 4.53ms | 8.53ms | 3.04ms |
| update_1to4 | 1.39ms | 7.25ms | 2.07ms | 20.20ms | 2.62ms | 4.21ms | 1.56ms |
| update_1to1000 | 43μs | 174μs | 854μs | 100μs | 43μs | 143μs | 409μs |
| cellx1000 | 7.27ms | 77.54ms | 11.49ms | N/A | 10.56ms | 12.53ms | 5.37ms |
| cellx2500 | 19.97ms | 269.81ms | 42.02ms | N/A | 38.81ms | 38.03ms | 24.32ms |
| cellx5000 | 50.99ms | 569.15ms | 127.11ms | N/A | 95.54ms | 119.37ms | 67.88ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.00ms | 2.00s | 511.96ms | 2.22s | 501.25ms | 334.25ms | 238.14ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.93ms | 1.54s | 289.92ms | 1.48s (partial) | 284.82ms | 221.28ms | 197.11ms |
| 1000x12 - 4 sources - dynamic (large) | 355.96ms | 1.97s | 3.78s | 2.58s (partial) | 3.75s | 444.11ms | 359.48ms |
| 1000x5 - 25 sources (wide dense) | 498.22ms | 3.49s | 2.78s | 4.21s | 3.44s | 811.98ms | 515.24ms |
| 5x500 - 3 sources (deep) | 202.45ms | 1.17s | 252.54ms | 1.47s | 223.47ms | 227.87ms | 206.01ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 282.78ms | 1.70s | 474.76ms | 1.80s (partial) | 476.61ms | 337.62ms | 263.24ms |

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
