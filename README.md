# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.42s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.31s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.32s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.74s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.91s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 41.03s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 177.64ms | 161.05ms | 2.38s | 201.60ms | 1.46s | 212.76ms | 274.98ms | 2.24s | 166.23ms (fail) |
| broadPropagation | 377.07ms | 314.75ms | 4.66s | 452.93ms | 82.30ms (fail) | 523.59ms | 505.92ms | 5.79s | 6.50ms (fail) |
| deepPropagation | 126.82ms | 98.49ms | 1.60s | 176.57ms | 1.96s (fail) | 169.76ms | 169.06ms | 2.08s | 143.06ms (fail) |
| diamond | 234.99ms | 215.23ms | 2.48s | 285.90ms | 2.60s (fail) | 294.82ms | 362.71ms | 3.69s | 178.63ms (fail) |
| mux | 383.74ms | 347.25ms | 1.90s | 409.44ms | 553.33ms (fail) | 416.40ms | 448.04ms | 2.10s | 195.22ms (fail) |
| repeatedObservers | 47.41ms | 50.31ms | 237.32ms | 40.19ms | 374.22ms (fail) | 46.62ms | 81.58ms | 235.52ms | 55.60ms (fail) |
| triangle | 89.38ms | 102.43ms | 778.85ms | 98.38ms | 871.31ms (fail) | 103.91ms | 117.19ms | 1.17s | 77.58ms (fail) |
| unstable | 61.35ms | 70.00ms | 355.94ms | 70.72ms | 618.10ms (fail) | 81.82ms | 96.98ms | 364.94ms | 337.39ms (fail) |
| molBench | 493.04ms | 491.94ms | 573.39ms | 489.19ms | 11.26ms | 486.55ms | 492.92ms | 1.73s | 915μs |
| create_signals | 7.66ms | 27.86ms | 78.29ms | 5.75ms | 25.10ms | 25.34ms | 54.84ms | 55.81ms | 59.89ms |
| comp_0to1 | 21.82ms | 9.44ms | 45.89ms | 17.75ms | 15.27ms | 11.24ms | 27.65ms | 39.99ms | 55.37ms |
| comp_1to1 | 21.36ms | 24.38ms | 18.42ms | 14.38ms | 23.13ms | 26.43ms | 43.83ms | 52.44ms | 56.10ms |
| comp_2to1 | 19.96ms | 18.58ms | 22.82ms | 17.25ms | 25.79ms | 8.27ms | 19.65ms | 25.79ms | 37.18ms |
| comp_4to1 | 1.69ms | 3.91ms | 19.70ms | 8.49ms | 5.52ms | 1.91ms | 9.32ms | 29.71ms | 16.71ms |
| comp_1000to1 | 4μs | 4μs | 20μs | 4μs | 3μs | 5μs | 21μs | 2.95ms | 41μs |
| comp_1to2 | 13.72ms | 17.09ms | 36.60ms | 24.62ms | 12.54ms | 13.33ms | 36.51ms | 20.87ms | 45.52ms |
| comp_1to4 | 9.65ms | 17.66ms | 25.43ms | 20.96ms | 25.46ms | 15.22ms | 19.57ms | 24.25ms | 44.07ms |
| comp_1to8 | 4.08ms | 7.39ms | 22.34ms | 8.83ms | 8.60ms | 8.90ms | 23.92ms | 19.54ms | 42.97ms |
| comp_1to1000 | 3.38ms | 4.67ms | 16.09ms | 7.81ms | 4.62ms | 6.22ms | 17.16ms | 17.07ms | 38.83ms |
| update_1to1 | 4.50ms | 5.41ms | 27.20ms | 8.72ms | 81.56ms | 8.98ms | 16.03ms | 43.75ms | 5.66ms |
| update_2to1 | 2.35ms | 2.88ms | 11.18ms | 4.28ms | 41.24ms | 4.55ms | 7.79ms | 21.64ms | 2.85ms |
| update_4to1 | 1.16ms | 1.44ms | 6.51ms | 2.18ms | 19.70ms | 2.26ms | 4.01ms | 11.20ms | 1.45ms |
| update_1000to1 | 11μs | 24μs | 70μs | 21μs | 176μs | 22μs | 40μs | 122μs | 14μs |
| update_1to2 | 2.33ms | 2.77ms | 11.32ms | 4.57ms | 43.98ms | 4.48ms | 7.85ms | 21.57ms | 2.83ms |
| update_1to4 | 1.19ms | 1.47ms | 6.43ms | 2.19ms | 21.76ms | 2.27ms | 4.07ms | 10.97ms | 1.44ms |
| update_1to1000 | 43μs | 56μs | 181μs | 2.99ms | 93μs | 41μs | 171μs | 207μs | 384μs |
| cellx1000 | 7.78ms | 27.71ms | 82.61ms | 9.74ms | N/A | 9.80ms | 13.05ms | 174.43ms | 5.81ms |
| cellx2500 | 27.94ms | 127.27ms | 273.70ms | 25.76ms | N/A | 32.39ms | 34.45ms | 515.57ms | 29.58ms |
| cellx5000 | 67.95ms | 398.74ms | 570.90ms | 70.10ms | N/A | 63.53ms | 80.54ms | 1.18s | 71.07ms |
| 10x5 - 2 sources - read 20.0% (simple) | 242.03ms | 233.08ms | 2.08s | 444.90ms | 2.38s | 521.00ms | 353.68ms | 2.69s (partial) | 238.70ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 184.83ms | 186.44ms | 1.61s | 269.80ms | 1.54s (partial) | 296.08ms | 249.64ms | 2.47s (partial) | 196.88ms |
| 1000x12 - 4 sources - dynamic (large) | 308.76ms | 354.41ms | 2.21s | 3.72s | 2.58s (partial) | 3.77s | 483.31ms | 4.19s (partial) | 338.38ms |
| 1000x5 - 25 sources (wide dense) | 462.16ms | 620.36ms | 3.67s | 2.72s | 4.29s | 3.43s | 594.63ms | 5.12s (partial) | 502.60ms |
| 5x500 - 3 sources (deep) | 207.02ms | 200.13ms | 1.21s | 225.56ms | 1.40s | 230.46ms | 253.57ms | 2.05s (partial) | 205.06ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 271.17ms | 276.14ms | 1.71s | 454.23ms | 1.83s (partial) | 485.07ms | 382.62ms | 2.84s (partial) | 259.78ms |

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
