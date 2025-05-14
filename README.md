# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.46s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.37s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.12s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.14s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.57s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.42s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.44s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.41ms | 158.44ms | 2.32s | 206.66ms | 1.37s | 208.96ms | 273.51ms | 2.19s | 153.43ms (fail) |
| broadPropagation | 377.76ms | 324.61ms | 4.24s | 462.31ms | 80.52ms (fail) | 453.76ms | 502.77ms | 5.44s | 6.58ms (fail) |
| deepPropagation | 130.82ms | 97.21ms | 1.50s | 178.14ms | 1.91s (fail) | 179.12ms | 170.18ms | 2.03s | 137.98ms (fail) |
| diamond | 236.07ms | 211.49ms | 2.38s | 284.09ms | 2.59s (fail) | 292.77ms | 353.52ms | 3.45s | 197.92ms (fail) |
| mux | 375.43ms | 348.30ms | 1.81s | 382.73ms | 576.70ms (fail) | 411.85ms | 442.09ms | 2.02s | 191.01ms (fail) |
| repeatedObservers | 47.94ms | 52.73ms | 232.53ms | 38.19ms | 380.30ms (fail) | 45.72ms | 78.45ms | 220.59ms | 52.34ms (fail) |
| triangle | 85.45ms | 75.35ms | 768.80ms | 99.30ms | 856.54ms (fail) | 103.37ms | 115.40ms | 1.15s | 77.57ms (fail) |
| unstable | 63.07ms | 70.62ms | 342.78ms | 70.43ms | 613.44ms (fail) | 71.41ms | 96.03ms | 347.74ms | 336.93ms (fail) |
| molBench | 482.79ms | 481.14ms | 577.60ms | 492.01ms | 11.96ms | 489.98ms | 493.25ms | 1.71s | 1.21ms |
| create_signals | 6.87ms | 28.51ms | 82.22ms | 5.62ms | 24.43ms | 26.19ms | 79.55ms | 53.81ms | 59.95ms |
| comp_0to1 | 22.78ms | 12.58ms | 34.67ms | 18.35ms | 14.39ms | 11.67ms | 34.20ms | 39.20ms | 54.15ms |
| comp_1to1 | 15.40ms | 18.92ms | 17.57ms | 10.78ms | 22.97ms | 20.74ms | 55.60ms | 44.18ms | 54.62ms |
| comp_2to1 | 14.19ms | 16.93ms | 14.09ms | 22.76ms | 24.55ms | 13.64ms | 28.18ms | 37.65ms | 37.00ms |
| comp_4to1 | 1.68ms | 1.82ms | 20.43ms | 8.68ms | 3.02ms | 1.94ms | 21.82ms | 20.33ms | 16.57ms |
| comp_1000to1 | 4μs | 4μs | 34μs | 6μs | 4μs | 5μs | 21μs | 2.89ms | 42μs |
| comp_1to2 | 10.03ms | 9.88ms | 39.12ms | 16.46ms | 14.62ms | 20.66ms | 36.10ms | 20.53ms | 46.17ms |
| comp_1to4 | 4.58ms | 17.26ms | 23.22ms | 23.75ms | 26.55ms | 9.44ms | 17.85ms | 28.95ms | 44.44ms |
| comp_1to8 | 6.97ms | 5.99ms | 25.67ms | 6.99ms | 5.37ms | 6.72ms | 25.55ms | 21.84ms | 43.48ms |
| comp_1to1000 | 3.31ms | 3.93ms | 15.38ms | 6.31ms | 4.18ms | 4.68ms | 15.13ms | 18.51ms | 39.16ms |
| update_1to1 | 4.87ms | 5.67ms | 25.89ms | 8.21ms | 86.63ms | 9.28ms | 16.49ms | 43.66ms | 5.73ms |
| update_2to1 | 3.04ms | 2.79ms | 12.92ms | 4.12ms | 43.56ms | 4.58ms | 7.94ms | 21.56ms | 3.88ms |
| update_4to1 | 1.26ms | 1.50ms | 6.86ms | 2.10ms | 20.65ms | 2.35ms | 4.06ms | 10.97ms | 1.45ms |
| update_1000to1 | 12μs | 26μs | 59μs | 20μs | 178μs | 23μs | 40μs | 128μs | 15μs |
| update_1to2 | 2.91ms | 2.86ms | 13.14ms | 4.10ms | 42.81ms | 4.89ms | 7.94ms | 21.27ms | 2.94ms |
| update_1to4 | 1.18ms | 1.58ms | 6.23ms | 2.10ms | 22.85ms | 2.35ms | 4.07ms | 10.98ms | 1.45ms |
| update_1to1000 | 31μs | 33μs | 168μs | 1.01ms | 97μs | 44μs | 152μs | 220μs | 378μs |
| cellx1000 | 7.52ms | 30.00ms | 85.04ms | 15.65ms | N/A | 9.86ms | 14.91ms | 156.93ms | 5.36ms |
| cellx2500 | 25.13ms | 125.28ms | 313.43ms | 36.12ms | N/A | 39.52ms | 50.17ms | 475.79ms | 29.89ms |
| cellx5000 | 54.62ms | 430.22ms | 648.58ms | 110.74ms | N/A | 74.26ms | 122.28ms | 1.11s | 71.53ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.57ms | 248.82ms | 2.00s | 445.66ms | 2.23s | 504.76ms | 348.52ms | 2.59s (partial) | 240.35ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 173.33ms | 188.35ms | 1.54s | 282.81ms | 1.46s (partial) | 277.17ms | 241.14ms | 2.36s (partial) | 201.00ms |
| 1000x12 - 4 sources - dynamic (large) | 309.57ms | 364.90ms | 1.90s | 3.57s | 2.51s (partial) | 3.77s | 470.89ms | 3.99s (partial) | 354.53ms |
| 1000x5 - 25 sources (wide dense) | 460.76ms | 638.57ms | 3.57s | 2.61s | 4.20s | 3.36s | 598.90ms | 5.06s (partial) | 505.55ms |
| 5x500 - 3 sources (deep) | 205.07ms | 199.79ms | 1.18s | 231.47ms | 1.46s | 226.64ms | 251.10ms | 1.96s (partial) | 203.74ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.18ms | 279.04ms | 1.83s | 457.75ms | 1.79s (partial) | 492.53ms | 390.10ms | 2.77s (partial) | 259.04ms |

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
