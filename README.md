# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.36s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.88s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.84ms | 2.35s | 207.18ms | 1.40s | 211.54ms | 266.18ms | 166.07ms (fail) |
| broadPropagation | 315.56ms | 4.28s | 471.34ms | 91.17ms (fail) | 461.96ms | 454.19ms | 6.43ms (fail) |
| deepPropagation | 98.56ms | 1.53s | 179.49ms | 1.99s (fail) | 176.32ms | 140.94ms | 142.63ms (fail) |
| diamond | 220.19ms | 2.41s | 298.32ms | 2.64s (fail) | 284.34ms | 309.87ms | 190.09ms (fail) |
| mux | 341.09ms | 1.83s | 388.86ms | 576.82ms (fail) | 417.40ms | 401.16ms | 196.99ms (fail) |
| repeatedObservers | 50.65ms | 233.46ms | 42.28ms | 391.20ms (fail) | 46.40ms | 90.53ms | 52.57ms (fail) |
| triangle | 98.38ms | 780.20ms | 100.16ms | 890.71ms (fail) | 113.85ms | 96.97ms | 83.30ms (fail) |
| unstable | 137.61ms | 341.32ms | 73.88ms | 635.57ms (fail) | 75.99ms | 167.03ms | 339.39ms (fail) |
| molBench | 488.07ms | 582.76ms | 486.10ms | 11.44ms | 485.53ms | 501.93ms | 1.30ms |
| create_signals | 27.12ms | 84.62ms | 15.77ms | 25.56ms | 25.93ms | 70.17ms | 68.94ms |
| comp_0to1 | 9.92ms | 15.48ms | 15.72ms | 14.55ms | 12.20ms | 36.83ms | 58.98ms |
| comp_1to1 | 24.62ms | 42.35ms | 7.13ms | 24.89ms | 29.45ms | 40.77ms | 64.23ms |
| comp_2to1 | 20.13ms | 36.28ms | 10.27ms | 26.07ms | 21.65ms | 21.92ms | 46.99ms |
| comp_4to1 | 1.84ms | 14.99ms | 24.16ms | 3.33ms | 6.40ms | 8.09ms | 19.34ms |
| comp_1000to1 | 4μs | 17μs | 7μs | 4μs | 7μs | 18μs | 44μs |
| comp_1to2 | 11.12ms | 38.23ms | 15.07ms | 11.69ms | 15.29ms | 35.56ms | 53.19ms |
| comp_1to4 | 15.06ms | 17.72ms | 32.02ms | 28.62ms | 14.91ms | 14.82ms | 53.02ms |
| comp_1to8 | 5.10ms | 21.84ms | 8.03ms | 5.48ms | 7.73ms | 19.46ms | 47.25ms |
| comp_1to1000 | 4.75ms | 15.23ms | 8.48ms | 4.37ms | 4.44ms | 14.55ms | 41.62ms |
| update_1to1 | 5.46ms | 24.80ms | 8.35ms | 87.76ms | 10.31ms | 16.87ms | 6.02ms |
| update_2to1 | 2.77ms | 12.00ms | 4.49ms | 45.72ms | 4.52ms | 8.39ms | 3.07ms |
| update_4to1 | 1.40ms | 6.54ms | 2.11ms | 20.89ms | 2.55ms | 4.28ms | 1.50ms |
| update_1000to1 | 13μs | 73μs | 20μs | 178μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.73ms | 11.94ms | 4.16ms | 43.37ms | 4.55ms | 8.52ms | 3.02ms |
| update_1to4 | 1.40ms | 6.03ms | 2.10ms | 20.75ms | 2.49ms | 4.20ms | 1.53ms |
| update_1to1000 | 43μs | 176μs | 1.27ms | 95μs | 80μs | 159μs | 411μs |
| cellx1000 | 9.36ms | 90.56ms | 9.63ms | N/A | 9.72ms | 10.94ms | 5.25ms |
| cellx2500 | 19.26ms | 275.96ms | 26.27ms | N/A | 32.52ms | 36.04ms | 26.42ms |
| cellx5000 | 47.06ms | 614.99ms | 81.67ms | N/A | 62.18ms | 106.35ms | 79.07ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.37ms | 2.01s | 449.69ms | 2.18s | 503.45ms | 326.22ms | 255.75ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.09ms | 1.53s | 288.95ms | 1.50s (partial) | 279.50ms | 224.88ms | 200.45ms |
| 1000x12 - 4 sources - dynamic (large) | 349.31ms | 1.88s | 3.70s | 2.67s (partial) | 3.78s | 455.90ms | 349.24ms |
| 1000x5 - 25 sources (wide dense) | 496.27ms | 3.44s | 2.75s | 4.36s | 3.44s | 818.25ms | 508.47ms |
| 5x500 - 3 sources (deep) | 196.26ms | 1.12s | 232.62ms | 1.36s | 221.36ms | 231.93ms | 208.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 283.74ms | 1.69s | 462.37ms | 1.83s (partial) | 484.27ms | 339.26ms | 263.68ms |

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
