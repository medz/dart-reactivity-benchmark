# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.54s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.36s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.55s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.66s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.21s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.78s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.75ms | 164.07ms | 2.35s | 202.28ms | 1.41s | 206.37ms | 277.51ms | 2.17s | 151.86ms (fail) |
| broadPropagation | 364.61ms | 317.81ms | 4.55s | 452.99ms | 81.04ms (fail) | 448.29ms | 506.92ms | 5.50s | 6.18ms (fail) |
| deepPropagation | 128.22ms | 98.30ms | 1.59s | 175.93ms | 1.94s (fail) | 167.60ms | 171.64ms | 2.00s | 142.21ms (fail) |
| diamond | 237.97ms | 216.70ms | 2.49s | 279.22ms | 2.53s (fail) | 281.14ms | 345.46ms | 3.44s | 186.43ms (fail) |
| mux | 377.20ms | 347.56ms | 1.90s | 403.36ms | 553.39ms (fail) | 413.61ms | 442.08ms | 2.04s | 193.45ms (fail) |
| repeatedObservers | 47.12ms | 50.32ms | 233.36ms | 40.11ms | 402.44ms (fail) | 44.38ms | 73.14ms | 221.22ms | 52.52ms (fail) |
| triangle | 90.32ms | 79.87ms | 782.83ms | 98.89ms | 975.63ms (fail) | 104.06ms | 115.17ms | 1.15s | 77.70ms (fail) |
| unstable | 63.61ms | 70.03ms | 356.52ms | 70.49ms | 620.27ms (fail) | 78.95ms | 98.38ms | 354.60ms | 340.13ms (fail) |
| molBench | 494.51ms | 492.81ms | 572.56ms | 487.70ms | 11.60ms | 486.54ms | 493.42ms | 1.71s | 903μs |
| create_signals | 7.36ms | 27.39ms | 86.06ms | 5.23ms | 23.42ms | 26.24ms | 98.02ms | 81.38ms | 59.98ms |
| comp_0to1 | 22.29ms | 10.79ms | 22.54ms | 17.31ms | 13.57ms | 11.75ms | 37.53ms | 34.17ms | 53.52ms |
| comp_1to1 | 17.86ms | 19.48ms | 41.16ms | 12.56ms | 24.72ms | 18.84ms | 44.19ms | 50.15ms | 55.35ms |
| comp_2to1 | 14.76ms | 12.44ms | 41.42ms | 9.78ms | 34.42ms | 17.24ms | 37.86ms | 39.38ms | 36.43ms |
| comp_4to1 | 1.82ms | 5.65ms | 16.57ms | 7.27ms | 12.29ms | 2.14ms | 11.54ms | 37.09ms | 16.30ms |
| comp_1000to1 | 5μs | 7μs | 17μs | 6μs | 6μs | 7μs | 18μs | 2.80ms | 41μs |
| comp_1to2 | 11.96ms | 10.42ms | 38.91ms | 14.10ms | 19.48ms | 19.60ms | 30.36ms | 31.05ms | 45.21ms |
| comp_1to4 | 9.34ms | 22.95ms | 23.83ms | 26.63ms | 21.26ms | 9.57ms | 22.81ms | 29.84ms | 43.84ms |
| comp_1to8 | 4.87ms | 7.78ms | 25.95ms | 6.78ms | 8.67ms | 6.03ms | 24.92ms | 24.26ms | 43.15ms |
| comp_1to1000 | 3.62ms | 7.69ms | 16.44ms | 4.65ms | 8.28ms | 4.16ms | 16.97ms | 18.23ms | 38.90ms |
| update_1to1 | 4.53ms | 5.43ms | 23.22ms | 8.60ms | 89.77ms | 9.01ms | 15.98ms | 43.23ms | 5.65ms |
| update_2to1 | 2.36ms | 2.79ms | 12.73ms | 4.24ms | 44.52ms | 4.45ms | 7.81ms | 21.46ms | 2.87ms |
| update_4to1 | 1.12ms | 1.42ms | 6.53ms | 2.14ms | 21.90ms | 2.24ms | 4.03ms | 10.89ms | 1.47ms |
| update_1000to1 | 15μs | 25μs | 71μs | 21μs | 184μs | 22μs | 40μs | 119μs | 14μs |
| update_1to2 | 2.34ms | 2.76ms | 11.34ms | 4.82ms | 43.04ms | 4.47ms | 8.02ms | 21.26ms | 2.86ms |
| update_1to4 | 1.15ms | 1.45ms | 5.72ms | 2.15ms | 21.32ms | 2.26ms | 4.05ms | 10.83ms | 1.49ms |
| update_1to1000 | 36μs | 57μs | 177μs | 188μs | 121μs | 42μs | 172μs | 212μs | 408μs |
| cellx1000 | 7.99ms | 31.28ms | 86.15ms | 10.30ms | N/A | 10.05ms | 12.65ms | 167.19ms | 5.67ms |
| cellx2500 | 28.57ms | 138.74ms | 305.74ms | 35.62ms | N/A | 37.28ms | 38.27ms | 501.10ms | 30.08ms |
| cellx5000 | 66.81ms | 460.88ms | 625.07ms | 97.49ms | N/A | 72.61ms | 88.95ms | 1.14s | 74.57ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.77ms | 233.26ms | 2.08s | 446.49ms | 2.15s | 504.19ms | 359.44ms | 2.61s (partial) | 241.66ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.38ms | 183.50ms | 1.57s | 270.41ms | 1.45s (partial) | 282.13ms | 243.33ms | 2.36s (partial) | 198.01ms |
| 1000x12 - 4 sources - dynamic (large) | 313.24ms | 376.03ms | 2.08s | 3.75s | 2.51s (partial) | 3.99s | 467.39ms | 4.09s (partial) | 347.15ms |
| 1000x5 - 25 sources (wide dense) | 467.98ms | 630.75ms | 3.67s | 2.73s | 4.07s | 3.58s | 597.03ms | 5.11s (partial) | 501.06ms |
| 5x500 - 3 sources (deep) | 209.62ms | 201.14ms | 1.24s | 231.79ms | 1.37s | 227.07ms | 254.81ms | 1.99s (partial) | 206.33ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 269.05ms | 309.53ms | 1.81s | 458.93ms | 1.75s (partial) | 478.93ms | 378.90ms | 2.76s (partial) | 261.96ms |

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
