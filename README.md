# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.43s |
| 🥈 | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥉 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.84s |
| 4 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.18s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.46s |
| 6 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.36s |
| 7 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.64s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.45s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.85ms | 133.41ms | 2.38s | 200.55ms | 1.44s | 210.96ms | 242.16ms | 187.72ms |
| broadPropagation | 267.54ms | 263.01ms | 4.52s | 473.56ms | 87.88ms (fail) | 455.41ms | 445.04ms | 420.69ms |
| deepPropagation | 82.66ms | 82.67ms | 1.55s | 179.44ms | 1.91s (fail) | 174.86ms | 130.28ms | 163.73ms |
| diamond | 184.05ms | 163.70ms | 2.45s | 281.91ms | 2.63s (fail) | 280.78ms | 308.75ms | 235.69ms |
| mux | 327.55ms | 316.57ms | 1.83s | 397.95ms | 570.19ms (fail) | 413.19ms | 395.55ms | 396.15ms |
| repeatedObservers | 49.10ms | 29.60ms | 239.22ms | 40.52ms | 387.58ms (fail) | 46.48ms | 87.48ms | 61.10ms |
| triangle | 67.53ms | 68.16ms | 762.14ms | 99.53ms | 861.14ms (fail) | 102.45ms | 94.54ms | 98.03ms |
| unstable | 61.66ms | 48.64ms | 344.89ms | 75.19ms | 629.27ms (fail) | 75.82ms | 101.48ms | 359.39ms |
| molBench | 485.44ms | 489.19ms | 587.35ms | 481.54ms | 11.72ms | 486.74ms | 497.44ms | 494.17ms |
| create_signals | 31.81ms | 29.63ms | 82.34ms | 5.32ms | 23.29ms | 27.30ms | 77.67ms | 71.38ms |
| comp_0to1 | 16.04ms | 5.62ms | 16.48ms | 17.98ms | 15.86ms | 11.95ms | 25.08ms | 58.43ms |
| comp_1to1 | 14.91ms | 12.30ms | 46.54ms | 12.07ms | 27.27ms | 30.47ms | 44.08ms | 59.45ms |
| comp_2to1 | 8.87ms | 3.70ms | 23.39ms | 12.14ms | 27.39ms | 13.77ms | 17.66ms | 43.95ms |
| comp_4to1 | 5.29ms | 7.61ms | 31.52ms | 9.50ms | 7.49ms | 3.88ms | 4.30ms | 19.35ms |
| comp_1000to1 | 4μs | 3μs | 17μs | 6μs | 3μs | 5μs | 25μs | 43μs |
| comp_1to2 | 13.71ms | 10.18ms | 33.74ms | 28.93ms | 11.82ms | 17.52ms | 34.58ms | 47.74ms |
| comp_1to4 | 17.76ms | 17.75ms | 23.15ms | 26.00ms | 28.21ms | 11.02ms | 14.36ms | 46.12ms |
| comp_1to8 | 5.03ms | 5.97ms | 24.87ms | 7.14ms | 7.74ms | 7.17ms | 20.27ms | 44.95ms |
| comp_1to1000 | 3.64ms | 9.04ms | 15.43ms | 6.09ms | 4.64ms | 4.48ms | 13.87ms | 40.75ms |
| update_1to1 | 5.38ms | 12.10ms | 27.21ms | 8.86ms | 85.08ms | 10.09ms | 14.70ms | 6.06ms |
| update_2to1 | 5.89ms | 5.58ms | 13.34ms | 4.84ms | 42.75ms | 4.52ms | 7.20ms | 3.12ms |
| update_4to1 | 1.31ms | 3.02ms | 7.35ms | 2.23ms | 20.70ms | 2.57ms | 3.60ms | 1.57ms |
| update_1000to1 | 12μs | 28μs | 69μs | 31μs | 184μs | 25μs | 36μs | 15μs |
| update_1to2 | 4.74ms | 5.84ms | 13.32ms | 4.45ms | 43.62ms | 4.52ms | 7.48ms | 3.22ms |
| update_1to4 | 1.71ms | 2.84ms | 6.69ms | 2.22ms | 20.94ms | 2.54ms | 3.59ms | 1.59ms |
| update_1to1000 | 47μs | 44μs | 174μs | 179μs | 101μs | 43μs | 144μs | 432μs |
| cellx1000 | 6.40ms | 5.80ms | 72.87ms | 10.44ms | N/A | 9.94ms | 11.93ms | 9.87ms |
| cellx2500 | 17.25ms | 16.98ms | 263.74ms | 29.37ms | N/A | 34.43ms | 41.07ms | 33.08ms |
| cellx5000 | 60.33ms | 51.47ms | 554.52ms | 79.75ms | N/A | 74.80ms | 129.21ms | 105.47ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.41ms | 192.57ms | 2.06s | 515.45ms | 2.18s | 513.15ms | 315.81ms | 272.17ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 206.32ms | 167.68ms | 1.51s | 287.24ms | 1.44s (partial) | 280.82ms | 217.86ms | 203.28ms |
| 1000x12 - 4 sources - dynamic (large) | 317.30ms | 281.26ms | 1.89s | 3.74s | 2.54s (partial) | 3.78s | 458.59ms | 386.87ms |
| 1000x5 - 25 sources (wide dense) | 561.06ms | 556.54ms | 3.45s | 2.71s | 4.20s | 3.56s | 831.84ms | 492.52ms |
| 5x500 - 3 sources (deep) | 230.95ms | 178.94ms | 1.13s | 249.30ms | 1.47s | 224.12ms | 233.22ms | 209.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 277.74ms | 249.34ms | 1.69s | 471.92ms | 1.73s (partial) | 479.99ms | 346.45ms | 265.57ms |

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
