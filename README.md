# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.38s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.95s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.56s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.55s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.78s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 184.55ms | 159.58ms | 2.41s | 204.55ms | 1.38s | 206.45ms | 272.08ms | 2.19s | 155.98ms (fail) |
| broadPropagation | 376.30ms | 324.23ms | 4.27s | 458.88ms | 81.09ms (fail) | 467.49ms | 512.58ms | 5.45s | 6.22ms (fail) |
| deepPropagation | 128.05ms | 96.33ms | 1.54s | 178.09ms | 1.91s (fail) | 178.09ms | 174.58ms | 2.05s | 143.09ms (fail) |
| diamond | 235.10ms | 209.72ms | 2.43s | 282.65ms | 2.64s (fail) | 293.53ms | 352.15ms | 3.46s | 185.83ms (fail) |
| mux | 375.30ms | 342.32ms | 1.80s | 383.72ms | 579.43ms (fail) | 410.22ms | 446.86ms | 2.09s | 192.79ms (fail) |
| repeatedObservers | 47.94ms | 50.74ms | 236.55ms | 38.62ms | 389.04ms (fail) | 46.90ms | 78.25ms | 217.52ms | 53.27ms (fail) |
| triangle | 86.63ms | 74.33ms | 761.45ms | 99.08ms | 931.02ms (fail) | 106.44ms | 120.52ms | 1.14s | 75.92ms (fail) |
| unstable | 62.90ms | 68.47ms | 358.37ms | 71.06ms | 644.20ms (fail) | 73.83ms | 95.30ms | 346.42ms | 337.33ms (fail) |
| molBench | 483.17ms | 480.97ms | 579.24ms | 491.33ms | 12.31ms | 488.59ms | 493.06ms | 1.71s | 1.08ms |
| create_signals | 7.40ms | 26.33ms | 77.31ms | 5.10ms | 23.62ms | 26.10ms | 74.87ms | 88.40ms | 68.99ms |
| comp_0to1 | 20.19ms | 8.83ms | 19.82ms | 18.01ms | 13.78ms | 12.06ms | 26.27ms | 32.25ms | 53.91ms |
| comp_1to1 | 13.26ms | 21.63ms | 27.18ms | 11.50ms | 22.31ms | 26.71ms | 47.03ms | 47.59ms | 55.36ms |
| comp_2to1 | 16.14ms | 15.73ms | 8.71ms | 21.17ms | 30.17ms | 12.56ms | 23.80ms | 41.30ms | 36.49ms |
| comp_4to1 | 1.57ms | 3.49ms | 24.77ms | 7.88ms | 6.10ms | 2.98ms | 16.65ms | 21.32ms | 16.68ms |
| comp_1000to1 | 4μs | 6μs | 15μs | 4μs | 5μs | 5μs | 15μs | 3.20ms | 44μs |
| comp_1to2 | 9.18ms | 15.95ms | 36.70ms | 23.69ms | 13.61ms | 13.30ms | 26.74ms | 25.98ms | 47.79ms |
| comp_1to4 | 11.14ms | 23.46ms | 23.52ms | 26.50ms | 26.00ms | 11.87ms | 14.89ms | 30.00ms | 45.19ms |
| comp_1to8 | 3.78ms | 4.98ms | 24.36ms | 5.75ms | 6.72ms | 7.00ms | 19.99ms | 25.05ms | 44.78ms |
| comp_1to1000 | 3.30ms | 3.23ms | 15.22ms | 6.19ms | 6.01ms | 4.62ms | 15.26ms | 18.74ms | 40.08ms |
| update_1to1 | 4.92ms | 5.68ms | 24.00ms | 8.21ms | 85.11ms | 9.30ms | 16.44ms | 42.26ms | 5.76ms |
| update_2to1 | 2.38ms | 2.79ms | 12.94ms | 4.09ms | 44.25ms | 4.57ms | 8.29ms | 20.97ms | 2.91ms |
| update_4to1 | 1.28ms | 1.51ms | 6.49ms | 2.10ms | 20.84ms | 2.34ms | 4.11ms | 10.58ms | 1.48ms |
| update_1000to1 | 12μs | 26μs | 57μs | 20μs | 192μs | 23μs | 41μs | 118μs | 15μs |
| update_1to2 | 2.56ms | 2.88ms | 13.16ms | 4.18ms | 43.34ms | 4.92ms | 8.44ms | 20.92ms | 2.98ms |
| update_1to4 | 1.21ms | 1.51ms | 6.48ms | 2.08ms | 20.79ms | 2.33ms | 4.10ms | 10.54ms | 1.50ms |
| update_1to1000 | 49μs | 53μs | 163μs | 66μs | 148μs | 43μs | 163μs | 214μs | 400μs |
| cellx1000 | 7.38ms | 31.46ms | 71.62ms | 9.69ms | N/A | 9.55ms | 11.32ms | 167.39ms | 5.16ms |
| cellx2500 | 22.57ms | 128.60ms | 252.87ms | 26.73ms | N/A | 31.62ms | 31.10ms | 489.79ms | 22.26ms |
| cellx5000 | 45.99ms | 413.54ms | 596.08ms | 73.91ms | N/A | 66.84ms | 68.01ms | 1.15s | 60.34ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.71ms | 236.32ms | 2.01s | 444.45ms | 2.21s | 508.75ms | 353.31ms | 2.61s (partial) | 238.71ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.71ms | 184.13ms | 1.57s | 270.83ms | 1.48s (partial) | 288.22ms | 249.35ms | 2.39s (partial) | 197.98ms |
| 1000x12 - 4 sources - dynamic (large) | 299.51ms | 353.76ms | 1.91s | 3.53s | 2.60s (partial) | 3.75s | 476.00ms | 4.10s (partial) | 334.88ms |
| 1000x5 - 25 sources (wide dense) | 449.70ms | 618.54ms | 3.58s | 2.56s | 4.06s | 3.42s | 604.89ms | 5.06s (partial) | 492.13ms |
| 5x500 - 3 sources (deep) | 202.28ms | 193.35ms | 1.13s | 229.90ms | 1.40s | 229.17ms | 256.93ms | 1.95s (partial) | 203.77ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 256.47ms | 278.30ms | 1.72s | 453.42ms | 1.88s (partial) | 478.85ms | 385.70ms | 2.78s (partial) | 258.69ms |

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
