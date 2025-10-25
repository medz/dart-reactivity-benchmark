# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.49s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.95s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.31s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.12s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.47ms | 2.32s | 201.51ms | 1.44s | 210.04ms | 237.23ms | 164.07ms (fail) |
| broadPropagation | 270.78ms | 4.25s | 463.44ms | 83.19ms (fail) | 464.45ms | 439.35ms | 6.43ms (fail) |
| deepPropagation | 80.76ms | 1.54s | 184.14ms | 1.94s (fail) | 177.13ms | 131.96ms | 144.48ms (fail) |
| diamond | 180.58ms | 2.39s | 282.96ms | 2.70s (fail) | 281.76ms | 317.04ms | 201.03ms (fail) |
| mux | 330.18ms | 1.81s | 390.06ms | 588.88ms (fail) | 407.60ms | 392.13ms | 196.07ms (fail) |
| repeatedObservers | 49.05ms | 231.03ms | 39.64ms | 433.13ms (fail) | 46.03ms | 87.31ms | 53.43ms (fail) |
| triangle | 67.08ms | 770.01ms | 99.70ms | 937.52ms (fail) | 102.20ms | 96.38ms | 79.70ms (fail) |
| unstable | 62.17ms | 338.23ms | 73.84ms | 636.43ms (fail) | 76.26ms | 101.86ms | 343.92ms (fail) |
| molBench | 482.59ms | 583.60ms | 489.63ms | 11.62ms | 485.57ms | 429.44ms | 1.10ms |
| create_signals | 20.76ms | 49.33ms | 4.65ms | 23.11ms | 24.89ms | 77.07ms | 62.84ms |
| comp_0to1 | 16.59ms | 15.75ms | 17.92ms | 13.56ms | 11.34ms | 26.84ms | 54.98ms |
| comp_1to1 | 19.86ms | 39.21ms | 13.95ms | 21.12ms | 28.38ms | 31.02ms | 56.73ms |
| comp_2to1 | 12.96ms | 34.38ms | 22.56ms | 24.35ms | 15.16ms | 8.68ms | 39.97ms |
| comp_4to1 | 5.16ms | 16.33ms | 15.48ms | 5.36ms | 4.01ms | 13.51ms | 18.50ms |
| comp_1000to1 | 3μs | 22μs | 4μs | 3μs | 5μs | 15μs | 44μs |
| comp_1to2 | 14.33ms | 36.99ms | 27.59ms | 12.97ms | 13.18ms | 35.91ms | 49.60ms |
| comp_1to4 | 21.42ms | 19.60ms | 21.13ms | 23.31ms | 14.60ms | 20.54ms | 49.18ms |
| comp_1to8 | 5.61ms | 22.46ms | 7.13ms | 5.25ms | 9.31ms | 18.55ms | 45.81ms |
| comp_1to1000 | 3.21ms | 15.18ms | 6.61ms | 4.26ms | 4.28ms | 14.40ms | 41.33ms |
| update_1to1 | 5.95ms | 25.88ms | 8.45ms | 81.69ms | 10.30ms | 17.28ms | 6.01ms |
| update_2to1 | 5.87ms | 12.68ms | 4.41ms | 43.27ms | 4.55ms | 8.55ms | 3.08ms |
| update_4to1 | 1.31ms | 6.78ms | 2.11ms | 21.40ms | 2.60ms | 4.26ms | 1.50ms |
| update_1000to1 | 13μs | 64μs | 37μs | 168μs | 25μs | 41μs | 15μs |
| update_1to2 | 2.60ms | 13.00ms | 4.72ms | 41.73ms | 4.49ms | 8.75ms | 3.01ms |
| update_1to4 | 1.33ms | 6.71ms | 2.15ms | 19.80ms | 3.51ms | 4.25ms | 1.50ms |
| update_1to1000 | 41μs | 168μs | 2.62ms | 91μs | 43μs | 157μs | 412μs |
| cellx1000 | 6.33ms | 69.18ms | 9.77ms | N/A | 9.66ms | 9.25ms | 5.08ms |
| cellx2500 | 18.62ms | 250.70ms | 27.11ms | N/A | 31.33ms | 25.67ms | 20.98ms |
| cellx5000 | 52.43ms | 559.96ms | 69.65ms | N/A | 61.11ms | 63.63ms | 76.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.51ms | 2.04s | 447.84ms | 2.27s | 509.02ms | 318.56ms | 260.17ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.11ms | 1.53s | 276.72ms | 1.49s (partial) | 281.75ms | 219.24ms | 204.20ms |
| 1000x12 - 4 sources - dynamic (large) | 274.27ms | 1.86s | 3.66s | 2.48s (partial) | 3.73s | 437.39ms | 348.93ms |
| 1000x5 - 25 sources (wide dense) | 553.33ms | 3.43s | 2.74s | 4.26s | 3.43s | 790.50ms | 515.12ms |
| 5x500 - 3 sources (deep) | 178.74ms | 1.13s | 229.09ms | 1.37s | 220.34ms | 229.90ms | 205.31ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.51ms | 1.70s | 463.57ms | 1.76s (partial) | 472.48ms | 328.35ms | 261.43ms |

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
