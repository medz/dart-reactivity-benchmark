# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.48s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.08s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.56s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.94s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.58s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.56ms | 2.34s | 199.60ms | 1.41s | 227.20ms | 239.20ms | 171.52ms (fail) |
| broadPropagation | 267.76ms | 4.43s | 455.13ms | 82.59ms (fail) | 460.44ms | 451.81ms | 7.30ms (fail) |
| deepPropagation | 80.79ms | 1.54s | 181.33ms | 1.95s (fail) | 176.30ms | 132.35ms | 161.06ms (fail) |
| diamond | 178.56ms | 2.41s | 279.09ms | 2.69s (fail) | 286.86ms | 316.33ms | 192.47ms (fail) |
| mux | 325.68ms | 1.83s | 397.72ms | 615.29ms (fail) | 410.28ms | 411.56ms | 192.89ms (fail) |
| repeatedObservers | 49.13ms | 229.62ms | 40.26ms | 392.88ms (fail) | 46.27ms | 86.73ms | 53.62ms (fail) |
| triangle | 67.35ms | 759.61ms | 100.15ms | 1.03s (fail) | 102.77ms | 94.42ms | 80.76ms (fail) |
| unstable | 61.71ms | 344.49ms | 74.46ms | 659.81ms (fail) | 76.17ms | 101.56ms | 376.26ms (fail) |
| molBench | 482.81ms | 582.96ms | 480.50ms | 11.64ms | 485.53ms | 497.64ms | 1.96ms |
| create_signals | 31.27ms | 76.98ms | 5.18ms | 24.32ms | 25.12ms | 70.48ms | 81.84ms |
| comp_0to1 | 15.72ms | 22.01ms | 17.60ms | 14.03ms | 10.97ms | 36.95ms | 78.39ms |
| comp_1to1 | 12.68ms | 17.58ms | 14.84ms | 28.56ms | 28.43ms | 48.02ms | 77.71ms |
| comp_2to1 | 2.64ms | 20.59ms | 20.56ms | 30.41ms | 9.46ms | 8.47ms | 48.17ms |
| comp_4to1 | 8.30ms | 22.77ms | 14.39ms | 7.37ms | 2.05ms | 14.77ms | 20.96ms |
| comp_1000to1 | 3μs | 15μs | 4μs | 223μs | 5μs | 23μs | 65μs |
| comp_1to2 | 14.98ms | 34.60ms | 18.50ms | 11.91ms | 13.94ms | 33.47ms | 69.27ms |
| comp_1to4 | 18.59ms | 18.73ms | 32.89ms | 21.95ms | 9.29ms | 14.47ms | 68.23ms |
| comp_1to8 | 5.47ms | 21.38ms | 7.42ms | 7.49ms | 9.43ms | 19.57ms | 67.34ms |
| comp_1to1000 | 3.14ms | 15.31ms | 6.81ms | 5.63ms | 10.04ms | 13.88ms | 63.34ms |
| update_1to1 | 5.25ms | 27.28ms | 8.27ms | 82.62ms | 10.32ms | 14.74ms | 10.74ms |
| update_2to1 | 5.78ms | 14.59ms | 4.37ms | 44.37ms | 4.51ms | 7.20ms | 5.07ms |
| update_4to1 | 1.92ms | 7.03ms | 2.12ms | 19.64ms | 2.57ms | 3.60ms | 3.13ms |
| update_1000to1 | 23μs | 69μs | 20μs | 192μs | 25μs | 46μs | 22μs |
| update_1to2 | 2.73ms | 11.85ms | 4.07ms | 42.05ms | 4.50ms | 7.45ms | 5.96ms |
| update_1to4 | 2.42ms | 6.56ms | 2.08ms | 21.49ms | 2.58ms | 3.59ms | 2.54ms |
| update_1to1000 | 47μs | 170μs | 846μs | 98μs | 43μs | 156μs | 599μs |
| cellx1000 | 6.35ms | 74.59ms | 10.60ms | N/A | 9.64ms | 9.90ms | 5.43ms |
| cellx2500 | 20.35ms | 247.89ms | 27.70ms | N/A | 31.79ms | 26.67ms | 22.52ms |
| cellx5000 | 58.84ms | 566.79ms | 73.71ms | N/A | 65.49ms | 62.27ms | 64.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 199.65ms | 2.09s | 463.09ms | 2.22s | 505.13ms | 316.22ms | 251.01ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.75ms | 1.55s | 273.34ms | 1.50s (partial) | 286.84ms | 218.32ms | 217.54ms |
| 1000x12 - 4 sources - dynamic (large) | 276.70ms | 1.92s | 3.71s | 2.44s (partial) | 3.78s | 437.29ms | 360.95ms |
| 1000x5 - 25 sources (wide dense) | 551.45ms | 3.48s | 2.72s | 4.09s | 3.48s | 815.21ms | 700.92ms |
| 5x500 - 3 sources (deep) | 176.75ms | 1.12s | 230.13ms | 1.37s | 227.74ms | 227.05ms | 205.66ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.42ms | 1.72s | 459.97ms | 1.75s (partial) | 487.12ms | 336.59ms | 270.58ms |

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
