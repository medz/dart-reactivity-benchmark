# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.22s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.28s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.95s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.16s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.31s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.63s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.28s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 183.41ms | 157.50ms | 2.36s | 203.30ms | 1.49s | 206.49ms | 271.43ms | 2.17s | 151.28ms (fail) |
| broadPropagation | 375.39ms | 325.11ms | 4.22s | 452.73ms | 84.82ms (fail) | 465.79ms | 502.88ms | 5.38s | 6.19ms (fail) |
| deepPropagation | 128.97ms | 96.39ms | 1.50s | 176.44ms | 2.01s (fail) | 178.50ms | 168.95ms | 2.01s | 139.51ms (fail) |
| diamond | 237.03ms | 211.56ms | 2.43s | 279.76ms | 2.72s (fail) | 291.31ms | 369.99ms | 3.45s | 195.95ms (fail) |
| mux | 382.38ms | 343.61ms | 1.81s | 390.20ms | 583.15ms (fail) | 410.02ms | 458.23ms | 2.03s | 193.18ms (fail) |
| repeatedObservers | 48.24ms | 50.90ms | 237.25ms | 38.27ms | 416.02ms (fail) | 46.60ms | 78.36ms | 217.88ms | 52.16ms (fail) |
| triangle | 85.57ms | 75.70ms | 761.09ms | 98.96ms | 1.02s (fail) | 105.73ms | 115.94ms | 1.13s | 78.55ms (fail) |
| unstable | 62.28ms | 68.74ms | 354.53ms | 70.86ms | 687.49ms (fail) | 74.39ms | 94.64ms | 345.70ms | 337.61ms (fail) |
| molBench | 482.22ms | 480.38ms | 579.23ms | 489.55ms | 11.45ms | 489.50ms | 492.65ms | 1.70s | 1.29ms |
| create_signals | 7.65ms | 32.87ms | 50.16ms | 5.27ms | 27.65ms | 25.35ms | 90.13ms | 54.10ms | 59.66ms |
| comp_0to1 | 20.49ms | 11.52ms | 18.16ms | 22.39ms | 13.24ms | 11.36ms | 33.03ms | 22.06ms | 52.90ms |
| comp_1to1 | 20.44ms | 18.13ms | 27.22ms | 14.08ms | 22.41ms | 28.09ms | 39.33ms | 52.55ms | 54.12ms |
| comp_2to1 | 13.66ms | 17.05ms | 10.69ms | 16.19ms | 28.47ms | 16.99ms | 41.92ms | 25.39ms | 35.93ms |
| comp_4to1 | 1.61ms | 3.47ms | 27.35ms | 14.23ms | 10.96ms | 6.41ms | 4.56ms | 23.34ms | 16.07ms |
| comp_1000to1 | 3μs | 4μs | 19μs | 4μs | 5μs | 5μs | 15μs | 3.10ms | 41μs |
| comp_1to2 | 12.59ms | 17.82ms | 30.13ms | 17.93ms | 12.33ms | 13.28ms | 31.45ms | 26.47ms | 46.35ms |
| comp_1to4 | 5.83ms | 10.57ms | 18.55ms | 32.53ms | 25.57ms | 11.84ms | 15.21ms | 29.04ms | 47.45ms |
| comp_1to8 | 8.57ms | 8.59ms | 25.56ms | 6.76ms | 7.01ms | 6.82ms | 20.65ms | 23.78ms | 45.15ms |
| comp_1to1000 | 3.55ms | 3.34ms | 20.66ms | 5.43ms | 6.01ms | 4.45ms | 14.18ms | 18.81ms | 38.78ms |
| update_1to1 | 4.86ms | 5.62ms | 25.72ms | 8.36ms | 84.33ms | 9.04ms | 16.20ms | 42.68ms | 5.73ms |
| update_2to1 | 2.40ms | 2.76ms | 10.73ms | 4.12ms | 41.86ms | 4.51ms | 7.90ms | 21.17ms | 6.68ms |
| update_4to1 | 1.24ms | 1.40ms | 6.16ms | 2.09ms | 20.20ms | 2.22ms | 4.05ms | 10.66ms | 1.50ms |
| update_1000to1 | 12μs | 14μs | 64μs | 20μs | 209μs | 23μs | 40μs | 118μs | 15μs |
| update_1to2 | 2.39ms | 3.88ms | 11.19ms | 4.10ms | 42.87ms | 4.78ms | 8.10ms | 20.96ms | 2.95ms |
| update_1to4 | 1.21ms | 1.40ms | 5.22ms | 2.03ms | 21.38ms | 2.23ms | 4.03ms | 10.69ms | 1.45ms |
| update_1to1000 | 30μs | 35μs | 163μs | 138μs | 94μs | 43μs | 149μs | 201μs | 378μs |
| cellx1000 | 7.37ms | 28.07ms | 70.02ms | 9.56ms | N/A | 9.50ms | 11.09ms | 160.96ms | 5.29ms |
| cellx2500 | 22.07ms | 123.19ms | 237.91ms | 25.74ms | N/A | 30.54ms | 29.74ms | 470.28ms | 26.50ms |
| cellx5000 | 42.59ms | 391.38ms | 552.13ms | 75.56ms | N/A | 61.36ms | 65.16ms | 1.12s | 54.45ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.47ms | 235.09ms | 2.00s | 439.08ms | 2.39s | 506.78ms | 347.64ms | 2.60s (partial) | 245.41ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 173.49ms | 183.56ms | 1.57s | 275.21ms | 1.59s (partial) | 277.49ms | 244.73ms | 2.40s (partial) | 202.37ms |
| 1000x12 - 4 sources - dynamic (large) | 297.28ms | 340.00ms | 1.88s | 3.54s | 2.67s (partial) | 3.74s | 466.86ms | 3.99s (partial) | 337.36ms |
| 1000x5 - 25 sources (wide dense) | 444.14ms | 497.87ms | 3.58s | 2.57s | 4.21s | 3.41s | 588.56ms | 5.01s (partial) | 504.15ms |
| 5x500 - 3 sources (deep) | 202.31ms | 195.10ms | 1.15s | 229.06ms | 1.46s | 226.01ms | 264.69ms | 1.98s (partial) | 203.77ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.73ms | 280.52ms | 1.73s | 436.43ms | 1.92s (partial) | 479.20ms | 381.25ms | 2.74s (partial) | 259.53ms |

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
