# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.35s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.35s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.22s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.46s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.67s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 171.74ms | 161.29ms | 2.39s | 201.82ms | 1.37s | 205.85ms | 273.74ms | 2.25s | 168.96ms (fail) |
| broadPropagation | 371.01ms | 314.84ms | 4.62s | 453.60ms | 80.44ms (fail) | 454.65ms | 500.13ms | 5.71s | 5.88ms (fail) |
| deepPropagation | 130.09ms | 97.59ms | 1.57s | 177.91ms | 1.97s (fail) | 169.46ms | 169.72ms | 2.09s | 141.32ms (fail) |
| diamond | 238.94ms | 210.40ms | 2.53s | 286.18ms | 2.63s (fail) | 277.60ms | 357.56ms | 3.58s | 183.43ms (fail) |
| mux | 380.49ms | 346.95ms | 1.88s | 402.40ms | 557.32ms (fail) | 409.17ms | 451.04ms | 2.08s | 194.82ms (fail) |
| repeatedObservers | 47.24ms | 50.22ms | 239.07ms | 42.32ms | 384.53ms (fail) | 44.65ms | 80.71ms | 225.04ms | 53.19ms (fail) |
| triangle | 89.39ms | 76.25ms | 797.55ms | 103.63ms | 876.54ms (fail) | 102.05ms | 116.47ms | 1.16s | 78.76ms (fail) |
| unstable | 61.14ms | 70.53ms | 364.58ms | 70.02ms | 613.13ms (fail) | 76.95ms | 96.63ms | 360.52ms | 337.09ms (fail) |
| molBench | 492.71ms | 492.25ms | 578.49ms | 487.90ms | 11.66ms | 485.99ms | 492.23ms | 1.72s | 974μs |
| create_signals | 7.52ms | 27.29ms | 66.81ms | 5.40ms | 24.25ms | 25.82ms | 76.26ms | 86.67ms | 63.52ms |
| comp_0to1 | 21.55ms | 9.64ms | 16.27ms | 21.48ms | 15.81ms | 11.27ms | 28.18ms | 31.65ms | 59.35ms |
| comp_1to1 | 11.81ms | 25.87ms | 40.00ms | 14.41ms | 25.74ms | 20.17ms | 38.66ms | 51.17ms | 55.08ms |
| comp_2to1 | 16.60ms | 19.65ms | 22.75ms | 22.40ms | 26.38ms | 8.13ms | 38.47ms | 43.16ms | 36.02ms |
| comp_4to1 | 1.64ms | 1.73ms | 13.42ms | 14.23ms | 7.78ms | 1.93ms | 11.37ms | 29.23ms | 18.31ms |
| comp_1000to1 | 4μs | 4μs | 17μs | 4μs | 4μs | 8μs | 20μs | 3.07ms | 43μs |
| comp_1to2 | 13.14ms | 12.80ms | 34.58ms | 17.59ms | 12.17ms | 17.50ms | 28.78ms | 29.39ms | 44.60ms |
| comp_1to4 | 7.84ms | 17.84ms | 24.43ms | 31.31ms | 25.42ms | 12.71ms | 27.82ms | 28.43ms | 43.83ms |
| comp_1to8 | 6.46ms | 5.46ms | 24.33ms | 6.73ms | 8.51ms | 6.29ms | 26.09ms | 23.09ms | 42.88ms |
| comp_1to1000 | 6.76ms | 3.96ms | 16.36ms | 4.70ms | 4.88ms | 4.13ms | 16.80ms | 18.13ms | 38.73ms |
| update_1to1 | 4.75ms | 5.46ms | 25.22ms | 8.65ms | 84.08ms | 8.89ms | 15.96ms | 43.92ms | 5.69ms |
| update_2to1 | 2.45ms | 2.79ms | 12.22ms | 4.27ms | 42.58ms | 4.47ms | 7.80ms | 21.80ms | 2.93ms |
| update_4to1 | 1.22ms | 1.48ms | 6.68ms | 2.15ms | 20.22ms | 2.23ms | 3.98ms | 10.98ms | 1.48ms |
| update_1000to1 | 15μs | 23μs | 70μs | 21μs | 196μs | 22μs | 40μs | 121μs | 15μs |
| update_1to2 | 2.35ms | 2.70ms | 11.39ms | 4.86ms | 43.67ms | 4.47ms | 8.02ms | 21.59ms | 2.89ms |
| update_1to4 | 1.28ms | 1.34ms | 6.81ms | 2.18ms | 20.27ms | 2.22ms | 4.04ms | 10.96ms | 1.51ms |
| update_1to1000 | 52μs | 30μs | 175μs | 174μs | 121μs | 42μs | 169μs | 215μs | 384μs |
| cellx1000 | 7.07ms | 28.17ms | 78.56ms | 9.64ms | N/A | 9.49ms | 11.85ms | 159.26ms | 7.56ms |
| cellx2500 | 22.35ms | 124.35ms | 261.74ms | 25.94ms | N/A | 30.68ms | 32.96ms | 477.22ms | 24.24ms |
| cellx5000 | 43.40ms | 389.64ms | 571.15ms | 66.58ms | N/A | 59.30ms | 75.71ms | 1.16s | 59.84ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.58ms | 233.20ms | 2.09s | 452.43ms | 2.19s | 513.98ms | 353.04ms | 2.69s (partial) | 259.13ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 181.99ms | 183.26ms | 1.59s | 274.58ms | 1.48s (partial) | 281.49ms | 247.95ms | 2.41s (partial) | 221.92ms |
| 1000x12 - 4 sources - dynamic (large) | 295.94ms | 344.65ms | 1.90s | 3.71s | 2.56s (partial) | 3.73s | 458.59ms | 4.19s (partial) | 329.54ms |
| 1000x5 - 25 sources (wide dense) | 444.14ms | 608.69ms | 3.52s | 2.73s | 4.19s | 3.56s | 578.53ms | 5.07s (partial) | 504.41ms |
| 5x500 - 3 sources (deep) | 200.62ms | 195.88ms | 1.20s | 235.69ms | 1.37s | 227.01ms | 257.73ms | 2.06s (partial) | 203.49ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.58ms | 284.03ms | 1.71s | 459.77ms | 1.82s (partial) | 479.53ms | 382.00ms | 2.82s (partial) | 264.60ms |

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
