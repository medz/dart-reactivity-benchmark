# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.39s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.28s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.06s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.23s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.36s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 171.75ms | 161.05ms | 2.33s | 201.00ms | 1.34s | 211.03ms | 279.60ms | 2.16s | 159.40ms (fail) |
| broadPropagation | 369.17ms | 316.45ms | 4.54s | 451.96ms | 82.69ms (fail) | 448.93ms | 506.60ms | 5.32s | 6.74ms (fail) |
| deepPropagation | 125.98ms | 97.69ms | 1.55s | 177.90ms | 1.93s (fail) | 174.08ms | 171.42ms | 1.99s | 143.61ms (fail) |
| diamond | 234.86ms | 215.20ms | 2.45s | 299.25ms | 2.65s (fail) | 279.74ms | 362.54ms | 3.37s | 188.22ms (fail) |
| mux | 376.97ms | 343.39ms | 1.86s | 404.51ms | 564.00ms (fail) | 409.10ms | 438.55ms | 2.00s | 193.24ms (fail) |
| repeatedObservers | 47.13ms | 50.24ms | 233.43ms | 40.27ms | 402.30ms (fail) | 44.67ms | 81.89ms | 215.59ms | 53.26ms (fail) |
| triangle | 90.29ms | 79.78ms | 778.04ms | 98.53ms | 878.46ms (fail) | 101.76ms | 117.97ms | 1.12s | 78.45ms (fail) |
| unstable | 60.97ms | 70.06ms | 351.05ms | 69.89ms | 602.66ms (fail) | 79.01ms | 97.40ms | 341.92ms | 338.83ms (fail) |
| molBench | 493.49ms | 491.75ms | 583.75ms | 490.36ms | 11.69ms | 489.21ms | 494.06ms | 1.70s | 940μs |
| create_signals | 7.42ms | 26.86ms | 89.42ms | 4.77ms | 24.15ms | 26.40ms | 54.13ms | 88.48ms | 66.98ms |
| comp_0to1 | 21.20ms | 9.11ms | 30.30ms | 17.32ms | 13.80ms | 12.12ms | 27.46ms | 32.95ms | 61.40ms |
| comp_1to1 | 23.89ms | 23.85ms | 32.16ms | 14.70ms | 27.40ms | 28.95ms | 40.96ms | 46.11ms | 63.32ms |
| comp_2to1 | 15.48ms | 15.81ms | 34.98ms | 20.40ms | 24.13ms | 16.70ms | 36.10ms | 37.55ms | 42.95ms |
| comp_4to1 | 2.37ms | 3.78ms | 15.88ms | 13.74ms | 7.21ms | 7.07ms | 5.19ms | 38.74ms | 16.56ms |
| comp_1000to1 | 3μs | 7μs | 17μs | 4μs | 3μs | 8μs | 17μs | 2.77ms | 40μs |
| comp_1to2 | 10.12ms | 11.76ms | 38.05ms | 17.71ms | 10.01ms | 14.36ms | 34.43ms | 31.33ms | 45.42ms |
| comp_1to4 | 5.63ms | 19.05ms | 22.02ms | 25.01ms | 23.37ms | 6.95ms | 17.25ms | 27.48ms | 43.92ms |
| comp_1to8 | 8.52ms | 4.83ms | 23.90ms | 5.78ms | 5.17ms | 6.77ms | 21.82ms | 24.68ms | 42.99ms |
| comp_1to1000 | 3.44ms | 4.05ms | 15.86ms | 5.96ms | 4.28ms | 4.12ms | 17.04ms | 17.70ms | 38.82ms |
| update_1to1 | 4.51ms | 5.40ms | 24.20ms | 8.71ms | 87.03ms | 8.86ms | 16.02ms | 43.34ms | 5.67ms |
| update_2to1 | 2.37ms | 2.82ms | 12.57ms | 4.30ms | 41.83ms | 4.48ms | 7.83ms | 21.47ms | 2.87ms |
| update_4to1 | 1.20ms | 1.45ms | 7.34ms | 2.19ms | 20.60ms | 2.25ms | 4.01ms | 10.84ms | 1.47ms |
| update_1000to1 | 13μs | 23μs | 71μs | 21μs | 172μs | 22μs | 40μs | 117μs | 25μs |
| update_1to2 | 2.39ms | 2.70ms | 13.54ms | 4.86ms | 41.86ms | 4.46ms | 7.98ms | 21.11ms | 2.86ms |
| update_1to4 | 1.23ms | 1.39ms | 6.41ms | 2.17ms | 20.74ms | 2.21ms | 4.02ms | 10.80ms | 1.46ms |
| update_1to1000 | 48μs | 53μs | 189μs | 1.11ms | 131μs | 42μs | 170μs | 212μs | 387μs |
| cellx1000 | 7.45ms | 29.54ms | 77.07ms | 10.09ms | N/A | 10.59ms | 13.66ms | 161.99ms | 5.32ms |
| cellx2500 | 23.11ms | 121.85ms | 262.72ms | 28.05ms | N/A | 37.44ms | 33.78ms | 476.86ms | 26.39ms |
| cellx5000 | 49.32ms | 401.40ms | 571.37ms | 77.63ms | N/A | 76.78ms | 81.20ms | 1.14s | 70.56ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.52ms | 232.30ms | 2.03s | 439.57ms | 2.13s | 510.05ms | 368.91ms | 2.59s (partial) | 236.95ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.65ms | 183.75ms | 1.60s | 269.35ms | 1.46s (partial) | 279.08ms | 245.14ms | 2.33s (partial) | 211.23ms |
| 1000x12 - 4 sources - dynamic (large) | 301.82ms | 351.25ms | 1.93s | 3.73s | 2.50s (partial) | 3.74s | 461.58ms | 4.20s (partial) | 351.66ms |
| 1000x5 - 25 sources (wide dense) | 456.32ms | 628.95ms | 3.69s | 2.70s | 4.26s | 3.42s | 596.41ms | 5.10s (partial) | 498.94ms |
| 5x500 - 3 sources (deep) | 204.37ms | 197.93ms | 1.13s | 233.35ms | 1.34s | 227.46ms | 251.94ms | 1.94s (partial) | 205.01ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.32ms | 285.25ms | 1.73s | 453.92ms | 1.71s (partial) | 486.53ms | 386.83ms | 2.76s (partial) | 259.99ms |

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
