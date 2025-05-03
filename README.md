# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.32s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.25s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.06s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.14s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.49s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.55s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.33s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.53s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.32ms | 156.60ms | 2.34s | 204.84ms | 1.44s | 210.36ms | 269.20ms | 2.16s | 148.91ms (fail) |
| broadPropagation | 378.71ms | 327.06ms | 4.30s | 459.53ms | 79.36ms (fail) | 457.37ms | 498.01ms | 5.43s | 6.08ms (fail) |
| deepPropagation | 129.43ms | 95.76ms | 1.54s | 177.19ms | 1.91s (fail) | 172.28ms | 168.21ms | 2.01s | 147.19ms (fail) |
| diamond | 236.85ms | 208.88ms | 2.41s | 279.81ms | 2.61s (fail) | 290.79ms | 349.60ms | 3.46s | 185.24ms (fail) |
| mux | 379.14ms | 345.75ms | 1.81s | 387.20ms | 571.87ms (fail) | 412.48ms | 452.30ms | 2.02s | 190.14ms (fail) |
| repeatedObservers | 48.02ms | 51.41ms | 227.89ms | 37.77ms | 388.72ms (fail) | 46.88ms | 78.03ms | 219.12ms | 52.08ms (fail) |
| triangle | 85.97ms | 75.13ms | 786.97ms | 99.39ms | 858.72ms (fail) | 101.96ms | 116.71ms | 1.15s | 76.37ms (fail) |
| unstable | 62.33ms | 70.12ms | 342.80ms | 70.34ms | 617.12ms (fail) | 74.91ms | 94.41ms | 351.00ms | 335.52ms (fail) |
| molBench | 483.14ms | 481.04ms | 577.75ms | 492.26ms | 12.14ms | 487.07ms | 493.21ms | 1.71s | 1.15ms |
| create_signals | 6.67ms | 26.14ms | 58.08ms | 5.31ms | 24.66ms | 25.81ms | 90.96ms | 50.45ms | 59.61ms |
| comp_0to1 | 21.99ms | 10.62ms | 17.78ms | 17.28ms | 14.14ms | 11.50ms | 28.74ms | 22.76ms | 53.88ms |
| comp_1to1 | 13.46ms | 24.91ms | 45.96ms | 10.81ms | 25.68ms | 19.89ms | 27.09ms | 38.21ms | 55.37ms |
| comp_2to1 | 14.10ms | 15.05ms | 22.42ms | 13.38ms | 23.19ms | 11.67ms | 43.23ms | 41.13ms | 36.94ms |
| comp_4to1 | 1.55ms | 6.92ms | 23.66ms | 9.40ms | 6.98ms | 2.27ms | 4.63ms | 36.36ms | 16.47ms |
| comp_1000to1 | 6μs | 4μs | 15μs | 4μs | 4μs | 5μs | 15μs | 2.76ms | 42μs |
| comp_1to2 | 13.28ms | 10.95ms | 32.31ms | 22.35ms | 12.38ms | 19.15ms | 30.98ms | 30.99ms | 46.70ms |
| comp_1to4 | 8.63ms | 20.34ms | 17.33ms | 26.52ms | 22.83ms | 9.21ms | 20.12ms | 29.59ms | 44.98ms |
| comp_1to8 | 4.15ms | 7.04ms | 19.30ms | 9.02ms | 5.15ms | 6.41ms | 22.32ms | 24.06ms | 44.72ms |
| comp_1to1000 | 3.54ms | 9.39ms | 14.98ms | 8.78ms | 4.38ms | 4.47ms | 14.39ms | 19.33ms | 39.84ms |
| update_1to1 | 4.91ms | 5.83ms | 23.42ms | 8.17ms | 86.28ms | 9.35ms | 16.12ms | 41.91ms | 5.72ms |
| update_2to1 | 2.40ms | 2.85ms | 11.75ms | 4.08ms | 43.62ms | 4.61ms | 7.96ms | 20.90ms | 2.90ms |
| update_4to1 | 1.32ms | 1.52ms | 6.13ms | 2.21ms | 21.09ms | 2.33ms | 4.04ms | 10.84ms | 1.47ms |
| update_1000to1 | 21μs | 14μs | 67μs | 20μs | 175μs | 23μs | 40μs | 117μs | 15μs |
| update_1to2 | 3.38ms | 3.72ms | 11.61ms | 4.14ms | 43.29ms | 4.96ms | 8.07ms | 20.81ms | 2.94ms |
| update_1to4 | 1.46ms | 1.44ms | 5.81ms | 2.05ms | 21.18ms | 2.33ms | 4.03ms | 10.54ms | 1.46ms |
| update_1to1000 | 49μs | 35μs | 173μs | 997μs | 98μs | 45μs | 148μs | 196μs | 394μs |
| cellx1000 | 7.33ms | 26.63ms | 69.40ms | 10.18ms | N/A | 9.60ms | 11.41ms | 156.27ms | 5.33ms |
| cellx2500 | 22.75ms | 121.16ms | 257.79ms | 25.89ms | N/A | 30.85ms | 32.64ms | 455.76ms | 25.20ms |
| cellx5000 | 44.26ms | 379.51ms | 568.44ms | 64.41ms | N/A | 59.50ms | 73.76ms | 1.06s | 68.88ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.93ms | 229.70ms | 2.02s | 449.38ms | 2.24s | 499.45ms | 345.45ms | 2.59s (partial) | 275.37ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 173.50ms | 181.54ms | 1.51s | 275.80ms | 1.47s (partial) | 276.04ms | 248.13ms | 2.40s (partial) | 244.43ms |
| 1000x12 - 4 sources - dynamic (large) | 305.87ms | 344.90ms | 1.89s | 3.57s | 2.50s (partial) | 3.77s | 463.83ms | 4.12s (partial) | 342.23ms |
| 1000x5 - 25 sources (wide dense) | 448.52ms | 608.09ms | 3.60s | 2.61s | 4.14s | 3.39s | 599.09ms | 5.11s (partial) | 547.03ms |
| 5x500 - 3 sources (deep) | 202.57ms | 192.39ms | 1.16s | 235.20ms | 1.36s | 230.81ms | 258.75ms | 1.94s (partial) | 208.29ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.85ms | 272.72ms | 1.77s | 456.83ms | 1.77s (partial) | 486.01ms | 375.48ms | 2.81s (partial) | 277.49ms |

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
