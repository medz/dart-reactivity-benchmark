# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.36s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.34s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.27s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.57s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.15s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.03s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.75ms | 164.17ms | 2.32s | 201.34ms | 1.41s | 205.50ms | 272.96ms | 2.20s | 156.74ms (fail) |
| broadPropagation | 372.45ms | 316.55ms | 4.48s | 447.33ms | 82.86ms (fail) | 523.25ms | 513.61ms | 5.68s | 6.37ms (fail) |
| deepPropagation | 124.82ms | 98.72ms | 1.55s | 176.15ms | 1.91s (fail) | 168.16ms | 166.93ms | 2.07s | 140.96ms (fail) |
| diamond | 238.66ms | 209.69ms | 2.39s | 285.77ms | 2.59s (fail) | 292.26ms | 352.41ms | 3.55s | 200.57ms (fail) |
| mux | 378.92ms | 345.25ms | 1.82s | 404.87ms | 549.11ms (fail) | 409.75ms | 444.49ms | 2.07s | 197.46ms (fail) |
| repeatedObservers | 47.34ms | 50.22ms | 227.09ms | 40.52ms | 386.77ms (fail) | 46.18ms | 80.72ms | 223.56ms | 51.20ms (fail) |
| triangle | 104.63ms | 77.52ms | 764.77ms | 98.14ms | 925.22ms (fail) | 101.37ms | 116.75ms | 1.17s | 76.00ms (fail) |
| unstable | 62.09ms | 69.89ms | 345.41ms | 69.71ms | 617.55ms (fail) | 82.54ms | 96.67ms | 356.20ms | 336.40ms (fail) |
| molBench | 493.24ms | 489.76ms | 566.73ms | 485.71ms | 10.83ms | 486.58ms | 493.33ms | 1.71s | 1.12ms |
| create_signals | 6.76ms | 26.64ms | 59.77ms | 5.08ms | 23.50ms | 24.30ms | 77.49ms | 46.10ms | 65.28ms |
| comp_0to1 | 20.56ms | 11.62ms | 20.13ms | 17.02ms | 13.06ms | 10.71ms | 28.07ms | 21.61ms | 52.72ms |
| comp_1to1 | 20.02ms | 25.54ms | 31.46ms | 12.27ms | 23.20ms | 26.75ms | 41.67ms | 40.01ms | 54.86ms |
| comp_2to1 | 13.77ms | 18.15ms | 9.13ms | 9.62ms | 23.59ms | 12.89ms | 39.70ms | 39.80ms | 35.55ms |
| comp_4to1 | 1.67ms | 7.61ms | 31.64ms | 7.29ms | 7.15ms | 3.40ms | 21.06ms | 16.92ms | 16.00ms |
| comp_1000to1 | 6μs | 7μs | 15μs | 4μs | 5μs | 4μs | 17μs | 2.71ms | 42μs |
| comp_1to2 | 14.45ms | 10.68ms | 34.52ms | 15.21ms | 12.86ms | 17.91ms | 38.09ms | 31.95ms | 45.13ms |
| comp_1to4 | 9.18ms | 14.74ms | 24.14ms | 27.10ms | 25.10ms | 7.82ms | 23.84ms | 28.20ms | 43.77ms |
| comp_1to8 | 4.17ms | 4.56ms | 25.71ms | 6.09ms | 6.36ms | 6.13ms | 25.07ms | 25.32ms | 43.90ms |
| comp_1to1000 | 3.53ms | 3.88ms | 16.78ms | 4.66ms | 4.63ms | 6.74ms | 17.11ms | 17.95ms | 38.71ms |
| update_1to1 | 4.51ms | 5.42ms | 26.30ms | 8.60ms | 81.45ms | 8.98ms | 16.19ms | 43.31ms | 5.64ms |
| update_2to1 | 2.35ms | 2.81ms | 13.63ms | 4.24ms | 41.10ms | 4.49ms | 8.03ms | 21.44ms | 2.67ms |
| update_4to1 | 1.19ms | 1.45ms | 6.85ms | 2.21ms | 19.84ms | 2.27ms | 4.07ms | 10.79ms | 1.36ms |
| update_1000to1 | 12μs | 24μs | 67μs | 21μs | 170μs | 23μs | 40μs | 119μs | 15μs |
| update_1to2 | 2.35ms | 2.71ms | 13.48ms | 4.54ms | 40.63ms | 4.47ms | 8.14ms | 21.09ms | 2.86ms |
| update_1to4 | 1.22ms | 1.36ms | 7.12ms | 2.18ms | 20.83ms | 2.33ms | 4.07ms | 10.81ms | 1.48ms |
| update_1to1000 | 47μs | 32μs | 188μs | 130μs | 143μs | 58μs | 170μs | 211μs | 364μs |
| cellx1000 | 7.36ms | 27.52ms | 69.74ms | 9.63ms | N/A | 9.75ms | 13.35ms | 166.80ms | 5.17ms |
| cellx2500 | 22.98ms | 119.37ms | 257.89ms | 25.61ms | N/A | 26.02ms | 41.09ms | 451.79ms | 26.39ms |
| cellx5000 | 41.60ms | 381.48ms | 536.90ms | 63.37ms | N/A | 61.59ms | 87.66ms | 1.08s | 77.51ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.41ms | 245.33ms | 2.03s | 442.58ms | 2.15s | 522.20ms | 354.05ms | 2.68s (partial) | 248.42ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.04ms | 189.88ms | 1.54s | 279.81ms | 1.45s (partial) | 286.93ms | 245.39ms | 2.39s (partial) | 198.35ms |
| 1000x12 - 4 sources - dynamic (large) | 298.36ms | 346.06ms | 1.92s | 3.72s | 2.52s (partial) | 3.83s | 473.45ms | 4.04s (partial) | 336.15ms |
| 1000x5 - 25 sources (wide dense) | 448.39ms | 608.35ms | 3.54s | 2.72s | 4.05s | 3.44s | 590.70ms | 5.02s (partial) | 499.58ms |
| 5x500 - 3 sources (deep) | 200.87ms | 196.57ms | 1.14s | 229.19ms | 1.43s | 224.17ms | 256.79ms | 2.00s (partial) | 204.35ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.38ms | 282.91ms | 1.74s | 453.03ms | 1.74s (partial) | 478.37ms | 386.58ms | 2.78s (partial) | 253.80ms |

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
