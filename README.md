# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.34s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.20s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.05s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.39s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.23s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.08s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 181.84ms | 156.73ms | 2.31s | 207.35ms | 1.45s | 208.11ms | 274.88ms | 2.20s | 155.84ms (fail) |
| broadPropagation | 377.77ms | 325.09ms | 4.23s | 458.29ms | 84.08ms (fail) | 449.50ms | 503.76ms | 5.34s | 6.86ms (fail) |
| deepPropagation | 128.24ms | 95.95ms | 1.52s | 177.78ms | 1.95s (fail) | 178.31ms | 166.33ms | 2.01s | 143.16ms (fail) |
| diamond | 234.75ms | 211.81ms | 2.36s | 282.79ms | 2.73s (fail) | 284.91ms | 348.03ms | 3.40s | 196.98ms (fail) |
| mux | 385.03ms | 338.94ms | 1.84s | 382.06ms | 584.05ms (fail) | 407.14ms | 433.69ms | 2.04s | 193.25ms (fail) |
| repeatedObservers | 47.90ms | 50.72ms | 228.24ms | 38.92ms | 394.43ms (fail) | 45.69ms | 78.88ms | 221.40ms | 52.17ms (fail) |
| triangle | 88.09ms | 74.72ms | 767.52ms | 102.49ms | 950.87ms (fail) | 106.02ms | 116.84ms | 1.14s | 77.54ms (fail) |
| unstable | 61.78ms | 69.14ms | 346.39ms | 71.89ms | 618.17ms (fail) | 74.09ms | 94.23ms | 357.06ms | 341.10ms (fail) |
| molBench | 483.83ms | 480.85ms | 578.36ms | 492.09ms | 11.76ms | 489.55ms | 493.50ms | 1.71s | 1.23ms |
| create_signals | 6.78ms | 26.24ms | 81.58ms | 4.83ms | 23.07ms | 25.18ms | 72.22ms | 56.73ms | 70.72ms |
| comp_0to1 | 20.64ms | 10.91ms | 20.29ms | 17.51ms | 13.36ms | 11.40ms | 25.70ms | 38.24ms | 64.05ms |
| comp_1to1 | 17.27ms | 25.92ms | 36.02ms | 14.21ms | 22.61ms | 28.29ms | 36.33ms | 36.92ms | 61.80ms |
| comp_2to1 | 13.76ms | 16.53ms | 33.34ms | 16.26ms | 23.37ms | 20.46ms | 35.34ms | 25.78ms | 42.22ms |
| comp_4to1 | 1.61ms | 3.66ms | 16.05ms | 9.49ms | 6.46ms | 6.70ms | 4.61ms | 34.54ms | 17.05ms |
| comp_1000to1 | 4μs | 4μs | 21μs | 4μs | 5μs | 5μs | 32μs | 2.84ms | 43μs |
| comp_1to2 | 9.90ms | 9.67ms | 33.56ms | 23.52ms | 12.44ms | 21.04ms | 31.93ms | 22.10ms | 49.63ms |
| comp_1to4 | 5.68ms | 13.90ms | 19.40ms | 21.80ms | 23.51ms | 17.59ms | 15.27ms | 27.52ms | 50.51ms |
| comp_1to8 | 8.30ms | 6.10ms | 22.51ms | 9.76ms | 4.67ms | 6.81ms | 20.15ms | 23.39ms | 47.07ms |
| comp_1to1000 | 3.50ms | 4.82ms | 14.98ms | 11.42ms | 4.15ms | 4.53ms | 14.91ms | 18.66ms | 40.47ms |
| update_1to1 | 4.87ms | 5.68ms | 25.00ms | 8.27ms | 85.96ms | 9.27ms | 16.14ms | 42.27ms | 5.75ms |
| update_2to1 | 3.00ms | 2.79ms | 10.70ms | 4.13ms | 43.78ms | 4.59ms | 7.98ms | 20.97ms | 2.87ms |
| update_4to1 | 1.33ms | 1.54ms | 6.46ms | 2.22ms | 20.63ms | 2.32ms | 5.65ms | 10.56ms | 1.43ms |
| update_1000to1 | 22μs | 26μs | 54μs | 20μs | 204μs | 23μs | 40μs | 117μs | 15μs |
| update_1to2 | 2.94ms | 2.90ms | 11.25ms | 4.08ms | 43.01ms | 4.91ms | 8.08ms | 20.91ms | 2.95ms |
| update_1to4 | 1.28ms | 1.47ms | 5.36ms | 2.08ms | 21.23ms | 2.33ms | 4.04ms | 10.54ms | 1.44ms |
| update_1to1000 | 50μs | 55μs | 169μs | 1.86ms | 145μs | 45μs | 152μs | 206μs | 383μs |
| cellx1000 | 7.47ms | 31.90ms | 71.42ms | 9.75ms | N/A | 9.52ms | 13.94ms | 153.11ms | 5.48ms |
| cellx2500 | 22.57ms | 124.19ms | 238.97ms | 27.71ms | N/A | 31.31ms | 31.26ms | 451.19ms | 23.77ms |
| cellx5000 | 43.12ms | 391.80ms | 543.64ms | 78.36ms | N/A | 59.54ms | 67.16ms | 1.08s | 54.41ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.11ms | 227.47ms | 2.00s | 441.97ms | 2.30s | 506.67ms | 348.08ms | 2.56s (partial) | 240.13ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.28ms | 183.54ms | 1.56s | 276.30ms | 1.54s (partial) | 278.20ms | 247.58ms | 2.37s (partial) | 198.95ms |
| 1000x12 - 4 sources - dynamic (large) | 300.85ms | 347.84ms | 1.90s | 3.56s | 2.55s (partial) | 3.74s | 461.62ms | 3.94s (partial) | 337.20ms |
| 1000x5 - 25 sources (wide dense) | 451.95ms | 630.32ms | 3.70s | 2.62s | 4.46s | 3.51s | 593.59ms | 5.01s (partial) | 496.16ms |
| 5x500 - 3 sources (deep) | 201.04ms | 195.78ms | 1.13s | 233.53ms | 1.43s | 225.97ms | 252.60ms | 1.97s (partial) | 204.15ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 257.10ms | 275.25ms | 1.74s | 443.26ms | 1.82s (partial) | 478.81ms | 378.38ms | 2.74s (partial) | 251.37ms |

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
