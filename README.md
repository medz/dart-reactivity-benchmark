# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.85s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.18s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.36s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.10s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.39s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.43s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.76ms | 2.36s | 200.80ms | 1.40s | 210.51ms | 255.04ms | 152.85ms (fail) |
| broadPropagation | 317.05ms | 4.48s | 461.35ms | 81.11ms (fail) | 462.02ms | 454.63ms | 6.20ms (fail) |
| deepPropagation | 98.68ms | 1.55s | 182.15ms | 1.92s (fail) | 175.42ms | 143.39ms | 141.83ms (fail) |
| diamond | 226.40ms | 2.41s | 282.70ms | 2.56s (fail) | 285.57ms | 316.69ms | 202.62ms (fail) |
| mux | 340.93ms | 1.82s | 392.40ms | 585.45ms (fail) | 409.02ms | 400.73ms | 194.75ms (fail) |
| repeatedObservers | 50.27ms | 231.97ms | 40.62ms | 404.71ms (fail) | 46.96ms | 91.21ms | 52.51ms (fail) |
| triangle | 77.18ms | 756.26ms | 98.97ms | 936.99ms (fail) | 100.79ms | 96.59ms | 81.09ms (fail) |
| unstable | 139.49ms | 349.68ms | 74.84ms | 629.66ms (fail) | 76.94ms | 168.68ms | 341.60ms (fail) |
| molBench | 485.19ms | 580.97ms | 489.11ms | 11.50ms | 485.46ms | 501.67ms | 922μs |
| create_signals | 28.06ms | 66.16ms | 4.51ms | 22.80ms | 24.97ms | 79.89ms | 60.86ms |
| comp_0to1 | 10.07ms | 30.23ms | 17.39ms | 13.06ms | 10.98ms | 47.68ms | 55.40ms |
| comp_1to1 | 24.95ms | 41.28ms | 12.45ms | 24.19ms | 17.80ms | 40.56ms | 56.86ms |
| comp_2to1 | 19.43ms | 9.20ms | 17.73ms | 32.75ms | 8.85ms | 19.15ms | 37.95ms |
| comp_4to1 | 1.70ms | 21.43ms | 11.31ms | 12.73ms | 6.05ms | 4.62ms | 16.86ms |
| comp_1000to1 | 5μs | 16μs | 4μs | 5μs | 5μs | 19μs | 46μs |
| comp_1to2 | 11.75ms | 41.53ms | 15.40ms | 13.04ms | 12.73ms | 29.45ms | 47.27ms |
| comp_1to4 | 22.70ms | 26.34ms | 28.61ms | 26.51ms | 11.07ms | 28.03ms | 45.78ms |
| comp_1to8 | 7.60ms | 25.85ms | 6.66ms | 6.61ms | 6.65ms | 24.45ms | 45.18ms |
| comp_1to1000 | 7.83ms | 20.56ms | 5.96ms | 4.87ms | 4.38ms | 15.65ms | 41.23ms |
| update_1to1 | 5.57ms | 30.95ms | 8.27ms | 82.69ms | 10.19ms | 18.22ms | 6.04ms |
| update_2to1 | 2.74ms | 14.53ms | 4.40ms | 44.31ms | 4.52ms | 9.15ms | 3.10ms |
| update_4to1 | 1.44ms | 6.95ms | 2.12ms | 20.21ms | 2.64ms | 4.53ms | 1.56ms |
| update_1000to1 | 16μs | 70μs | 20μs | 173μs | 25μs | 44μs | 15μs |
| update_1to2 | 2.74ms | 14.51ms | 4.11ms | 43.59ms | 4.50ms | 9.25ms | 3.05ms |
| update_1to4 | 1.38ms | 6.76ms | 2.11ms | 20.83ms | 2.58ms | 4.51ms | 1.56ms |
| update_1to1000 | 50μs | 173μs | 168μs | 150μs | 44μs | 150μs | 406μs |
| cellx1000 | 7.25ms | 78.43ms | 9.76ms | N/A | 9.85ms | 9.70ms | 5.19ms |
| cellx2500 | 19.34ms | 267.42ms | 26.41ms | N/A | 32.85ms | 30.08ms | 21.81ms |
| cellx5000 | 44.80ms | 572.51ms | 69.02ms | N/A | 64.31ms | 57.36ms | 63.22ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.35ms | 1.99s | 447.29ms | 2.18s | 523.38ms | 326.39ms | 232.24ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.17ms | 1.50s | 274.88ms | 1.50s (partial) | 281.03ms | 221.28ms | 188.36ms |
| 1000x12 - 4 sources - dynamic (large) | 342.44ms | 1.83s | 3.73s | 2.49s (partial) | 3.74s | 434.84ms | 342.21ms |
| 1000x5 - 25 sources (wide dense) | 490.48ms | 3.44s | 2.74s | 4.05s | 3.35s | 784.09ms | 505.69ms |
| 5x500 - 3 sources (deep) | 198.68ms | 1.11s | 231.64ms | 1.52s | 223.80ms | 225.57ms | 207.53ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 278.06ms | 1.70s | 462.28ms | 1.80s (partial) | 488.31ms | 330.65ms | 257.51ms |

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
