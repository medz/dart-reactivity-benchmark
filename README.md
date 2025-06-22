# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.40s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.40s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.36s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.19s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.55s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.95s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 173.18ms | 160.98ms | 2.31s | 205.31ms | 1.38s | 210.73ms | 286.25ms | 2.24s | 148.19ms (fail) |
| broadPropagation | 371.46ms | 317.74ms | 4.53s | 447.01ms | 81.86ms (fail) | 473.12ms | 507.11ms | 5.71s | 6.13ms (fail) |
| deepPropagation | 124.10ms | 97.18ms | 1.56s | 176.69ms | 1.93s (fail) | 168.68ms | 167.54ms | 2.12s | 142.79ms (fail) |
| diamond | 234.02ms | 212.42ms | 2.45s | 278.98ms | 2.59s (fail) | 285.29ms | 354.28ms | 3.60s | 193.96ms (fail) |
| mux | 377.63ms | 345.17ms | 1.87s | 405.17ms | 558.74ms (fail) | 453.88ms | 447.68ms | 2.10s | 206.60ms (fail) |
| repeatedObservers | 47.05ms | 50.05ms | 228.50ms | 40.08ms | 380.76ms (fail) | 44.79ms | 82.07ms | 229.59ms | 53.35ms (fail) |
| triangle | 92.53ms | 77.06ms | 768.90ms | 98.81ms | 934.20ms (fail) | 104.28ms | 119.22ms | 1.17s | 76.17ms (fail) |
| unstable | 60.55ms | 74.69ms | 349.13ms | 70.04ms | 617.31ms (fail) | 79.50ms | 98.36ms | 363.85ms | 335.87ms (fail) |
| molBench | 494.54ms | 491.88ms | 572.34ms | 489.32ms | 12.04ms | 469.84ms | 494.89ms | 1.73s | 957μs |
| create_signals | 7.98ms | 24.96ms | 66.12ms | 5.21ms | 23.13ms | 25.56ms | 95.22ms | 51.76ms | 71.31ms |
| comp_0to1 | 22.14ms | 11.33ms | 16.28ms | 17.26ms | 13.18ms | 11.71ms | 36.90ms | 22.84ms | 54.34ms |
| comp_1to1 | 22.66ms | 17.35ms | 47.76ms | 12.96ms | 21.20ms | 20.61ms | 55.59ms | 40.62ms | 56.30ms |
| comp_2to1 | 19.15ms | 25.52ms | 39.30ms | 17.73ms | 24.14ms | 10.52ms | 45.59ms | 25.50ms | 37.54ms |
| comp_4to1 | 1.75ms | 1.75ms | 14.39ms | 12.93ms | 7.54ms | 7.76ms | 16.20ms | 26.88ms | 16.50ms |
| comp_1000to1 | 3μs | 4μs | 16μs | 4μs | 3μs | 9μs | 17μs | 2.91ms | 43μs |
| comp_1to2 | 11.26ms | 12.26ms | 36.53ms | 37.16ms | 11.31ms | 16.67ms | 36.72ms | 21.20ms | 45.69ms |
| comp_1to4 | 8.09ms | 17.28ms | 20.06ms | 18.66ms | 23.61ms | 21.39ms | 22.70ms | 24.84ms | 43.42ms |
| comp_1to8 | 4.18ms | 6.56ms | 24.20ms | 5.37ms | 4.75ms | 6.56ms | 25.56ms | 19.50ms | 42.94ms |
| comp_1to1000 | 3.39ms | 4.72ms | 16.45ms | 3.56ms | 4.17ms | 4.24ms | 16.95ms | 17.61ms | 38.82ms |
| update_1to1 | 4.49ms | 5.66ms | 26.93ms | 8.67ms | 84.53ms | 8.93ms | 15.93ms | 44.09ms | 5.67ms |
| update_2to1 | 2.40ms | 2.81ms | 11.01ms | 4.26ms | 42.01ms | 4.49ms | 7.84ms | 21.69ms | 2.83ms |
| update_4to1 | 1.20ms | 1.45ms | 7.34ms | 2.23ms | 19.97ms | 2.26ms | 4.04ms | 11.01ms | 1.43ms |
| update_1000to1 | 22μs | 24μs | 69μs | 30μs | 175μs | 22μs | 40μs | 120μs | 15μs |
| update_1to2 | 2.38ms | 2.73ms | 11.23ms | 4.62ms | 42.00ms | 4.49ms | 8.02ms | 21.50ms | 2.85ms |
| update_1to4 | 1.22ms | 1.47ms | 5.79ms | 2.19ms | 20.16ms | 2.23ms | 4.02ms | 10.97ms | 1.44ms |
| update_1to1000 | 48μs | 58μs | 177μs | 63μs | 92μs | 43μs | 171μs | 226μs | 375μs |
| cellx1000 | 7.19ms | 30.15ms | 77.68ms | 12.77ms | N/A | 10.84ms | 13.06ms | 188.03ms | 6.26ms |
| cellx2500 | 22.18ms | 128.64ms | 278.18ms | 31.78ms | N/A | 37.99ms | 40.37ms | 540.88ms | 32.75ms |
| cellx5000 | 46.58ms | 402.43ms | 582.85ms | 100.05ms | N/A | 89.90ms | 110.44ms | 1.22s | 85.76ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.35ms | 234.72ms | 2.06s | 437.11ms | 2.20s | 534.17ms | 356.96ms | 2.74s (partial) | 237.24ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.43ms | 183.55ms | 1.56s | 273.31ms | 1.47s (partial) | 283.89ms | 241.79ms | 2.42s (partial) | 197.18ms |
| 1000x12 - 4 sources - dynamic (large) | 306.16ms | 352.63ms | 2.06s | 3.74s | 2.51s (partial) | 3.79s | 467.10ms | 4.11s (partial) | 353.97ms |
| 1000x5 - 25 sources (wide dense) | 457.24ms | 621.03ms | 3.68s | 2.72s | 4.37s | 3.26s | 585.58ms | 5.18s (partial) | 490.85ms |
| 5x500 - 3 sources (deep) | 206.09ms | 199.68ms | 1.19s | 229.71ms | 1.38s | 224.67ms | 251.76ms | 2.10s (partial) | 204.93ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.13ms | 287.93ms | 1.73s | 452.52ms | 1.78s (partial) | 490.42ms | 387.94ms | 2.84s (partial) | 257.49ms |

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
