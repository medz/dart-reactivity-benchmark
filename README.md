# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.83s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.45s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.45s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.48s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.13s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.36s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.18s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.36ms | 170.37ms | 2.36s | 201.26ms | 1.39s | 207.73ms | 282.64ms | 2.11s | 148.14ms (fail) |
| broadPropagation | 377.86ms | 316.88ms | 4.47s | 495.86ms | 82.47ms (fail) | 458.54ms | 510.14ms | 5.37s | 6.08ms (fail) |
| deepPropagation | 121.22ms | 98.33ms | 1.57s | 177.91ms | 1.95s (fail) | 174.88ms | 179.83ms | 1.95s | 140.16ms (fail) |
| diamond | 234.54ms | 217.47ms | 2.47s | 294.26ms | 2.68s (fail) | 282.68ms | 358.63ms | 3.29s | 184.12ms (fail) |
| mux | 379.17ms | 353.79ms | 1.83s | 404.08ms | 531.21ms (fail) | 419.01ms | 451.93ms | 1.97s | 190.32ms (fail) |
| repeatedObservers | 47.08ms | 50.56ms | 244.25ms | 41.07ms | 383.10ms (fail) | 44.84ms | 81.27ms | 213.71ms | 55.08ms (fail) |
| triangle | 86.36ms | 78.56ms | 787.93ms | 103.20ms | 842.56ms (fail) | 103.42ms | 124.79ms | 1.10s | 76.06ms (fail) |
| unstable | 61.23ms | 69.74ms | 359.48ms | 73.52ms | 597.39ms (fail) | 83.04ms | 97.80ms | 345.68ms | 336.12ms (fail) |
| molBench | 493.49ms | 492.15ms | 574.36ms | 488.60ms | 10.73ms | 486.51ms | 494.20ms | 1.67s | 941μs |
| create_signals | 7.47ms | 30.94ms | 55.12ms | 5.70ms | 23.70ms | 26.94ms | 81.06ms | 55.36ms | 68.11ms |
| comp_0to1 | 26.14ms | 16.77ms | 16.38ms | 23.44ms | 14.64ms | 11.91ms | 28.94ms | 39.62ms | 62.65ms |
| comp_1to1 | 21.68ms | 25.86ms | 40.32ms | 20.59ms | 23.15ms | 29.41ms | 40.52ms | 46.05ms | 63.87ms |
| comp_2to1 | 15.33ms | 24.44ms | 36.04ms | 10.17ms | 28.49ms | 9.32ms | 46.39ms | 42.37ms | 45.49ms |
| comp_4to1 | 2.06ms | 4.02ms | 17.53ms | 11.85ms | 6.32ms | 1.96ms | 12.16ms | 20.04ms | 16.91ms |
| comp_1000to1 | 5μs | 4μs | 22μs | 4μs | 4μs | 5μs | 17μs | 3.10ms | 41μs |
| comp_1to2 | 11.31ms | 14.95ms | 31.33ms | 22.87ms | 15.11ms | 13.97ms | 31.99ms | 34.74ms | 46.47ms |
| comp_1to4 | 8.48ms | 15.34ms | 30.09ms | 28.63ms | 26.64ms | 9.43ms | 28.77ms | 28.20ms | 44.35ms |
| comp_1to8 | 4.24ms | 4.76ms | 21.49ms | 5.43ms | 8.63ms | 7.81ms | 31.27ms | 24.00ms | 43.67ms |
| comp_1to1000 | 3.31ms | 3.90ms | 15.89ms | 6.08ms | 4.86ms | 4.24ms | 17.09ms | 18.24ms | 38.98ms |
| update_1to1 | 4.50ms | 5.43ms | 25.87ms | 8.66ms | 84.07ms | 9.00ms | 16.00ms | 43.18ms | 7.93ms |
| update_2to1 | 2.33ms | 2.75ms | 12.72ms | 4.25ms | 40.79ms | 4.58ms | 7.80ms | 21.34ms | 3.89ms |
| update_4to1 | 1.13ms | 1.39ms | 7.13ms | 2.27ms | 20.19ms | 2.26ms | 4.03ms | 10.82ms | 1.93ms |
| update_1000to1 | 11μs | 13μs | 69μs | 36μs | 223μs | 22μs | 40μs | 129μs | 15μs |
| update_1to2 | 2.36ms | 2.75ms | 13.68ms | 4.85ms | 42.29ms | 4.49ms | 8.09ms | 21.15ms | 3.94ms |
| update_1to4 | 1.16ms | 2.14ms | 5.76ms | 2.18ms | 20.15ms | 2.27ms | 3.99ms | 10.92ms | 1.95ms |
| update_1to1000 | 30μs | 33μs | 187μs | 972μs | 142μs | 43μs | 181μs | 224μs | 377μs |
| cellx1000 | 7.61ms | 29.64ms | 89.62ms | 10.88ms | N/A | 10.16ms | 13.59ms | 168.19ms | 5.58ms |
| cellx2500 | 27.37ms | 124.44ms | 258.54ms | 31.11ms | N/A | 38.80ms | 49.52ms | 554.28ms | 30.89ms |
| cellx5000 | 56.44ms | 413.35ms | 619.61ms | 86.61ms | N/A | 76.71ms | 132.94ms | 1.38s | 100.69ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.88ms | 231.21ms | 2.07s | 438.11ms | 2.24s | 513.78ms | 353.91ms | 2.57s (partial) | 237.19ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.30ms | 184.44ms | 1.56s | 267.39ms | 1.49s (partial) | 279.31ms | 245.60ms | 2.35s (partial) | 196.77ms |
| 1000x12 - 4 sources - dynamic (large) | 308.53ms | 360.73ms | 1.88s | 3.76s | 2.53s (partial) | 4.03s | 476.67ms | 3.99s (partial) | 347.63ms |
| 1000x5 - 25 sources (wide dense) | 461.75ms | 623.52ms | 3.71s | 2.70s | 4.02s | 3.43s | 586.04ms | 5.04s (partial) | 501.00ms |
| 5x500 - 3 sources (deep) | 205.10ms | 196.61ms | 1.19s | 230.43ms | 1.46s | 223.09ms | 261.81ms | 1.95s (partial) | 206.65ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.98ms | 282.62ms | 1.75s | 451.93ms | 1.78s (partial) | 479.64ms | 387.56ms | 2.73s (partial) | 260.38ms |

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
