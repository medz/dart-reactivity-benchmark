# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.51s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.17s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.44s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.10s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.32s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.55s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.14s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.78ms | 2.34s | 199.37ms | 1.40s | 211.05ms | 236.53ms | 167.81ms (fail) |
| broadPropagation | 268.67ms | 4.20s | 466.02ms | 80.66ms (fail) | 453.09ms | 439.31ms | 6.49ms (fail) |
| deepPropagation | 80.61ms | 1.57s | 179.64ms | 1.90s (fail) | 175.03ms | 130.86ms | 160.32ms (fail) |
| diamond | 179.78ms | 2.43s | 279.97ms | 2.57s (fail) | 281.29ms | 310.86ms | 205.01ms (fail) |
| mux | 328.81ms | 1.85s | 385.94ms | 557.97ms (fail) | 407.95ms | 397.42ms | 192.65ms (fail) |
| repeatedObservers | 49.16ms | 236.00ms | 40.37ms | 386.57ms (fail) | 46.25ms | 89.29ms | 52.41ms (fail) |
| triangle | 67.59ms | 760.67ms | 104.08ms | 929.69ms (fail) | 104.26ms | 97.92ms | 82.13ms (fail) |
| unstable | 62.02ms | 342.72ms | 75.50ms | 634.17ms (fail) | 76.58ms | 103.98ms | 374.84ms (fail) |
| molBench | 485.71ms | 582.49ms | 488.39ms | 11.19ms | 485.95ms | 497.17ms | 975μs |
| create_signals | 30.00ms | 51.73ms | 5.30ms | 23.55ms | 25.44ms | 76.50ms | 66.13ms |
| comp_0to1 | 7.92ms | 19.06ms | 17.71ms | 13.81ms | 11.46ms | 26.56ms | 61.97ms |
| comp_1to1 | 12.85ms | 23.89ms | 12.51ms | 27.60ms | 26.88ms | 32.44ms | 61.98ms |
| comp_2to1 | 8.68ms | 8.67ms | 21.14ms | 29.30ms | 12.19ms | 18.38ms | 37.57ms |
| comp_4to1 | 7.45ms | 30.43ms | 15.79ms | 10.26ms | 3.64ms | 4.38ms | 17.17ms |
| comp_1000to1 | 3μs | 15μs | 4μs | 3μs | 5μs | 18μs | 46μs |
| comp_1to2 | 17.28ms | 34.57ms | 23.66ms | 13.01ms | 13.14ms | 39.78ms | 48.64ms |
| comp_1to4 | 18.64ms | 19.29ms | 22.09ms | 20.32ms | 11.61ms | 21.66ms | 46.90ms |
| comp_1to8 | 7.88ms | 21.55ms | 12.14ms | 6.60ms | 6.62ms | 21.67ms | 45.96ms |
| comp_1to1000 | 3.20ms | 15.30ms | 7.35ms | 5.87ms | 4.42ms | 13.80ms | 41.65ms |
| update_1to1 | 6.03ms | 24.46ms | 9.08ms | 88.84ms | 10.26ms | 14.77ms | 6.02ms |
| update_2to1 | 5.77ms | 12.80ms | 4.50ms | 42.77ms | 4.56ms | 7.22ms | 3.11ms |
| update_4to1 | 1.52ms | 6.43ms | 2.29ms | 19.84ms | 2.56ms | 3.63ms | 1.57ms |
| update_1000to1 | 13μs | 65μs | 20μs | 178μs | 24μs | 36μs | 15μs |
| update_1to2 | 2.64ms | 11.73ms | 4.27ms | 42.13ms | 4.54ms | 7.51ms | 3.05ms |
| update_1to4 | 1.80ms | 6.15ms | 2.07ms | 20.72ms | 2.56ms | 3.62ms | 1.58ms |
| update_1to1000 | 67μs | 166μs | 39μs | 141μs | 42μs | 152μs | 421μs |
| cellx1000 | 6.58ms | 78.86ms | 9.88ms | N/A | 9.59ms | 16.35ms | 8.01ms |
| cellx2500 | 20.92ms | 254.57ms | 27.17ms | N/A | 32.05ms | 52.20ms | 41.00ms |
| cellx5000 | 58.79ms | 589.35ms | 74.06ms | N/A | 65.87ms | 141.41ms | 74.42ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.59ms | 2.06s | 450.99ms | 2.14s | 511.30ms | 316.35ms | 249.71ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.11ms | 1.52s | 276.92ms | 1.44s (partial) | 285.13ms | 218.22ms | 198.90ms |
| 1000x12 - 4 sources - dynamic (large) | 290.23ms | 1.85s | 3.77s | 2.57s (partial) | 3.76s | 447.25ms | 340.78ms |
| 1000x5 - 25 sources (wide dense) | 558.83ms | 3.51s | 2.76s | 4.04s | 3.35s | 812.67ms | 489.58ms |
| 5x500 - 3 sources (deep) | 174.49ms | 1.13s | 233.80ms | 1.36s | 222.88ms | 229.13ms | 206.44ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.81ms | 1.74s | 461.19ms | 1.76s (partial) | 479.93ms | 338.24ms | 258.94ms |

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
