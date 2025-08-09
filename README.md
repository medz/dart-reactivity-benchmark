# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.91s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.23s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.29s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.56s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.78s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 168.09ms | 2.36s | 202.29ms | 1.39s | 209.34ms | 265.65ms | 152.10ms (fail) |
| broadPropagation | 317.20ms | 4.45s | 454.07ms | 80.27ms (fail) | 451.85ms | 460.49ms | 6.24ms (fail) |
| deepPropagation | 96.87ms | 1.59s | 177.62ms | 1.98s (fail) | 172.61ms | 149.36ms | 143.63ms (fail) |
| diamond | 217.81ms | 2.48s | 278.96ms | 2.55s (fail) | 280.67ms | 316.55ms | 188.73ms (fail) |
| mux | 346.03ms | 1.84s | 409.43ms | 558.28ms (fail) | 412.09ms | 395.44ms | 197.50ms (fail) |
| repeatedObservers | 50.30ms | 240.10ms | 40.94ms | 374.20ms (fail) | 44.59ms | 89.26ms | 52.22ms (fail) |
| triangle | 76.33ms | 783.02ms | 99.33ms | 989.96ms (fail) | 103.57ms | 95.65ms | 75.67ms (fail) |
| unstable | 135.66ms | 355.57ms | 70.26ms | 664.91ms (fail) | 79.53ms | 170.36ms | 339.36ms (fail) |
| molBench | 493.45ms | 572.88ms | 489.56ms | 12.20ms | 487.67ms | 494.90ms | 879μs |
| create_signals | 25.82ms | 55.25ms | 5.36ms | 25.50ms | 28.34ms | 65.05ms | 65.59ms |
| comp_0to1 | 12.02ms | 16.63ms | 17.50ms | 15.01ms | 12.82ms | 48.11ms | 54.61ms |
| comp_1to1 | 17.43ms | 54.80ms | 12.46ms | 22.61ms | 29.46ms | 31.86ms | 56.77ms |
| comp_2to1 | 11.37ms | 36.31ms | 11.48ms | 25.66ms | 15.12ms | 8.96ms | 37.61ms |
| comp_4to1 | 6.18ms | 15.50ms | 9.74ms | 3.37ms | 4.12ms | 15.79ms | 15.88ms |
| comp_1000to1 | 5μs | 24μs | 9μs | 6μs | 5μs | 15μs | 41μs |
| comp_1to2 | 14.35ms | 31.83ms | 23.03ms | 16.36ms | 22.59ms | 45.08ms | 45.28ms |
| comp_1to4 | 17.00ms | 24.84ms | 33.51ms | 30.81ms | 11.87ms | 19.91ms | 43.96ms |
| comp_1to8 | 7.81ms | 25.76ms | 8.67ms | 5.60ms | 6.47ms | 21.75ms | 42.96ms |
| comp_1to1000 | 3.93ms | 16.48ms | 6.29ms | 4.24ms | 4.37ms | 15.35ms | 43.07ms |
| update_1to1 | 5.57ms | 26.12ms | 8.61ms | 86.38ms | 8.91ms | 16.27ms | 5.91ms |
| update_2to1 | 2.82ms | 14.21ms | 4.28ms | 44.59ms | 4.46ms | 8.14ms | 2.96ms |
| update_4to1 | 1.40ms | 6.83ms | 2.19ms | 21.02ms | 2.27ms | 4.10ms | 1.51ms |
| update_1000to1 | 13μs | 70μs | 21μs | 174μs | 22μs | 41μs | 15μs |
| update_1to2 | 2.86ms | 11.53ms | 4.60ms | 45.80ms | 4.47ms | 8.28ms | 3.56ms |
| update_1to4 | 1.43ms | 5.87ms | 2.16ms | 20.90ms | 2.27ms | 4.06ms | 2.73ms |
| update_1to1000 | 51μs | 175μs | 959μs | 105μs | 43μs | 144μs | 537μs |
| cellx1000 | 7.83ms | 92.39ms | 10.41ms | N/A | 10.77ms | 10.28ms | 6.54ms |
| cellx2500 | 21.13ms | 301.99ms | 37.35ms | N/A | 45.89ms | 34.32ms | 31.84ms |
| cellx5000 | 81.60ms | 689.23ms | 94.28ms | N/A | 97.14ms | 100.64ms | 88.72ms |
| 10x5 - 2 sources - read 20.0% (simple) | 246.92ms | 2.02s | 438.74ms | 2.13s | 515.02ms | 321.62ms | 266.05ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.02ms | 1.54s | 274.99ms | 1.42s (partial) | 279.55ms | 223.33ms | 232.40ms |
| 1000x12 - 4 sources - dynamic (large) | 354.13ms | 2.03s | 3.75s | 2.73s (partial) | 3.82s | 455.93ms | 363.57ms |
| 1000x5 - 25 sources (wide dense) | 494.93ms | 3.64s | 2.75s | 4.35s | 3.36s | 823.60ms | 513.08ms |
| 5x500 - 3 sources (deep) | 198.53ms | 1.20s | 228.81ms | 1.39s | 230.84ms | 231.77ms | 205.95ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 284.88ms | 1.76s | 455.60ms | 1.79s (partial) | 474.04ms | 337.05ms | 269.89ms |

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
