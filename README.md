# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.42s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.17s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.27s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.84s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.20s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 41.07s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 177.10ms | 160.61ms | 2.39s | 205.59ms | 1.35s | 205.36ms | 273.15ms | 2.28s | 164.24ms (fail) |
| broadPropagation | 373.72ms | 316.76ms | 4.51s | 449.74ms | 80.34ms (fail) | 448.55ms | 506.16ms | 5.72s | 6.75ms (fail) |
| deepPropagation | 132.69ms | 98.36ms | 1.56s | 179.53ms | 1.89s (fail) | 166.28ms | 169.26ms | 2.09s | 145.89ms (fail) |
| diamond | 236.96ms | 216.56ms | 2.48s | 279.58ms | 2.59s (fail) | 278.36ms | 348.72ms | 3.56s | 185.06ms (fail) |
| mux | 384.31ms | 347.06ms | 1.83s | 404.66ms | 565.58ms (fail) | 414.26ms | 451.69ms | 2.12s | 191.22ms (fail) |
| repeatedObservers | 47.15ms | 52.06ms | 240.73ms | 40.10ms | 388.74ms (fail) | 45.08ms | 81.46ms | 238.69ms | 54.68ms (fail) |
| triangle | 87.79ms | 79.11ms | 782.84ms | 97.77ms | 885.52ms (fail) | 100.46ms | 121.14ms | 1.18s | 79.08ms (fail) |
| unstable | 63.02ms | 70.56ms | 355.00ms | 69.20ms | 603.73ms (fail) | 79.19ms | 99.17ms | 359.96ms | 335.50ms (fail) |
| molBench | 493.87ms | 489.20ms | 587.46ms | 486.77ms | 11.31ms | 486.17ms | 492.40ms | 1.72s | 938μs |
| create_signals | 7.68ms | 27.22ms | 67.33ms | 4.61ms | 23.13ms | 25.89ms | 75.72ms | 56.52ms | 64.56ms |
| comp_0to1 | 23.26ms | 10.49ms | 16.47ms | 17.53ms | 13.43ms | 11.77ms | 27.61ms | 23.66ms | 54.42ms |
| comp_1to1 | 12.49ms | 17.54ms | 48.50ms | 12.52ms | 22.81ms | 30.02ms | 44.14ms | 32.18ms | 61.10ms |
| comp_2to1 | 21.15ms | 15.78ms | 23.54ms | 17.59ms | 24.59ms | 8.29ms | 18.24ms | 40.69ms | 43.20ms |
| comp_4to1 | 1.71ms | 4.14ms | 17.91ms | 9.40ms | 7.19ms | 2.74ms | 9.57ms | 37.49ms | 18.82ms |
| comp_1000to1 | 4μs | 4μs | 27μs | 6μs | 3μs | 8μs | 38μs | 2.69ms | 43μs |
| comp_1to2 | 13.56ms | 9.88ms | 36.96ms | 18.72ms | 10.98ms | 24.55ms | 37.56ms | 28.56ms | 48.46ms |
| comp_1to4 | 8.03ms | 24.34ms | 18.73ms | 25.41ms | 24.50ms | 22.29ms | 19.83ms | 30.81ms | 47.50ms |
| comp_1to8 | 6.41ms | 7.74ms | 20.97ms | 6.93ms | 5.38ms | 12.02ms | 24.27ms | 26.78ms | 44.12ms |
| comp_1to1000 | 7.51ms | 4.85ms | 15.94ms | 4.72ms | 4.62ms | 4.51ms | 16.82ms | 18.51ms | 39.00ms |
| update_1to1 | 4.61ms | 5.42ms | 24.66ms | 8.70ms | 82.36ms | 8.90ms | 15.98ms | 43.20ms | 5.63ms |
| update_2to1 | 2.50ms | 2.75ms | 11.19ms | 4.28ms | 42.15ms | 4.73ms | 7.83ms | 21.43ms | 2.83ms |
| update_4to1 | 1.20ms | 1.37ms | 6.38ms | 2.22ms | 19.92ms | 2.30ms | 3.97ms | 10.81ms | 1.41ms |
| update_1000to1 | 11μs | 13μs | 60μs | 21μs | 169μs | 22μs | 40μs | 120μs | 14μs |
| update_1to2 | 2.39ms | 2.79ms | 11.03ms | 4.61ms | 42.50ms | 4.48ms | 7.83ms | 21.17ms | 2.83ms |
| update_1to4 | 1.22ms | 1.40ms | 6.33ms | 2.18ms | 20.34ms | 2.25ms | 4.03ms | 10.81ms | 1.43ms |
| update_1to1000 | 53μs | 34μs | 169μs | 166μs | 122μs | 63μs | 181μs | 213μs | 383μs |
| cellx1000 | 7.38ms | 29.43ms | 79.82ms | 9.97ms | N/A | 10.36ms | 14.08ms | 181.93ms | 6.44ms |
| cellx2500 | 31.04ms | 126.82ms | 260.77ms | 31.68ms | N/A | 30.16ms | 33.98ms | 548.73ms | 32.91ms |
| cellx5000 | 57.90ms | 407.61ms | 577.41ms | 111.46ms | N/A | 81.91ms | 76.78ms | 1.24s | 88.64ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.61ms | 233.38ms | 2.03s | 433.65ms | 2.14s | 530.44ms | 359.04ms | 2.71s (partial) | 253.62ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.68ms | 185.00ms | 1.53s | 262.19ms | 1.44s (partial) | 297.04ms | 242.42ms | 2.43s (partial) | 203.89ms |
| 1000x12 - 4 sources - dynamic (large) | 310.90ms | 357.75ms | 1.92s | 3.58s | 2.50s (partial) | 3.75s | 464.25ms | 4.13s (partial) | 355.36ms |
| 1000x5 - 25 sources (wide dense) | 454.69ms | 627.55ms | 3.55s | 2.71s | 4.30s | 3.46s | 592.02ms | 5.22s (partial) | 498.23ms |
| 5x500 - 3 sources (deep) | 204.60ms | 197.75ms | 1.15s | 233.18ms | 1.37s | 225.01ms | 245.98ms | 2.10s (partial) | 207.58ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.61ms | 286.14ms | 1.69s | 440.89ms | 1.73s (partial) | 496.27ms | 380.44ms | 2.83s (partial) | 260.56ms |

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
