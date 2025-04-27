# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.71s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.32s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.04s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.07s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.52s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.69s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.73ms | 2.35s | 205.24ms | 1.25s | 1.43s | 211.98ms | 281.29ms | 159.24ms (fail) |
| broadPropagation | 361.31ms | 4.35s | 455.83ms | 4.99s | 86.65ms (fail) | 459.55ms | 510.68ms | 6.39ms (fail) |
| deepPropagation | 126.20ms | 1.52s | 178.39ms | 4.00s | 1.96s (fail) | 175.39ms | 180.06ms | 141.48ms (fail) |
| diamond | 236.97ms | 2.45s | 282.34ms | 14.03s (fail) | 2.68s (fail) | 291.11ms | 358.78ms | 193.19ms (fail) |
| mux | 371.01ms | 1.86s | 387.17ms | 1.02s | 584.77ms (fail) | 409.74ms | 443.67ms | 191.42ms (fail) |
| repeatedObservers | 44.80ms | 231.90ms | 38.71ms | 9.74s | 385.77ms (fail) | 46.01ms | 78.01ms | 52.28ms (fail) |
| triangle | 83.76ms | 772.30ms | 99.49ms | 4.52s | 969.65ms (fail) | 102.05ms | 118.52ms | 78.06ms (fail) |
| unstable | 60.40ms | 365.77ms | 70.74ms | 7.64s | 619.56ms (fail) | 73.04ms | 99.01ms | 352.91ms (fail) |
| molBench | 490.95ms | 581.47ms | 490.50ms | 5.90s | 12.47ms | 485.00ms | 492.86ms | 1.21ms |
| create_signals | 27.71ms | 53.20ms | 4.63ms | 13.34ms | 27.54ms | 24.88ms | 91.26ms | 60.13ms |
| comp_0to1 | 8.05ms | 18.72ms | 17.55ms | 13.68ms | 18.56ms | 11.85ms | 33.80ms | 52.68ms |
| comp_1to1 | 4.15ms | 27.84ms | 11.54ms | 99.56ms | 22.46ms | 24.26ms | 49.51ms | 54.24ms |
| comp_2to1 | 2.22ms | 11.80ms | 17.06ms | 72.37ms | 27.38ms | 19.16ms | 35.99ms | 35.52ms |
| comp_4to1 | 10.83ms | 18.36ms | 12.31ms | 85.23ms | 10.85ms | 5.78ms | 4.52ms | 16.38ms |
| comp_1000to1 | 6μs | 22μs | 4μs | 59.32ms | 6μs | 5μs | 14μs | 41μs |
| comp_1to2 | 19.76ms | 39.11ms | 28.22ms | 66.89ms | 13.22ms | 15.95ms | 31.17ms | 45.16ms |
| comp_1to4 | 7.29ms | 23.89ms | 29.28ms | 99.18ms | 21.74ms | 18.13ms | 15.12ms | 44.44ms |
| comp_1to8 | 4.47ms | 20.71ms | 7.79ms | 116.37ms | 7.00ms | 6.81ms | 20.05ms | 43.54ms |
| comp_1to1000 | 3.70ms | 15.01ms | 6.36ms | 47.90ms | 5.99ms | 4.47ms | 14.56ms | 39.46ms |
| update_1to1 | 11.31ms | 25.36ms | 8.23ms | N/A | 96.39ms | 9.18ms | 16.19ms | 5.79ms |
| update_2to1 | 5.09ms | 13.79ms | 4.11ms | N/A | 48.95ms | 4.58ms | 7.90ms | 2.88ms |
| update_4to1 | 2.77ms | 6.96ms | 2.09ms | N/A | 23.62ms | 2.31ms | 4.03ms | 1.46ms |
| update_1000to1 | 23μs | 67μs | 20μs | N/A | 207μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.59ms | 13.22ms | 4.11ms | N/A | 50.19ms | 4.91ms | 8.09ms | 2.93ms |
| update_1to4 | 2.46ms | 5.74ms | 2.08ms | N/A | 24.96ms | 2.31ms | 4.06ms | 1.48ms |
| update_1to1000 | 45μs | 173μs | 163μs | N/A | 125μs | 43μs | 148μs | 377μs |
| cellx1000 | 7.96ms | 70.98ms | 9.80ms | N/A | N/A | 9.77ms | 12.61ms | 5.47ms |
| cellx2500 | 20.34ms | 249.72ms | 26.43ms | N/A | N/A | 32.10ms | 32.84ms | 24.87ms |
| cellx5000 | 46.55ms | 542.45ms | 68.23ms | N/A | N/A | 66.69ms | 75.20ms | 51.39ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.71ms | 1.99s | 443.76ms | N/A | 2.24s | 504.66ms | 353.78ms | 245.71ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.74ms | 1.52s | 270.97ms | N/A | 1.50s (partial) | 291.81ms | 244.56ms | 211.38ms |
| 1000x12 - 4 sources - dynamic (large) | 280.54ms | 1.87s | 3.55s | N/A | 2.57s (partial) | 3.72s | 465.73ms | 338.94ms |
| 1000x5 - 25 sources (wide dense) | 410.62ms | 3.62s | 2.61s | N/A | 4.09s | 3.32s | 594.51ms | 518.77ms |
| 5x500 - 3 sources (deep) | 191.35ms | 1.15s | 232.50ms | N/A | 1.37s | 231.40ms | 259.29ms | 202.82ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.42ms | 1.73s | 456.05ms | N/A | 1.79s (partial) | 489.06ms | 382.69ms | 263.47ms |

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
