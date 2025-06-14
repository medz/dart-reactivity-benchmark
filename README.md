# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.83s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.43s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.30s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.25s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.86s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.51s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.67s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.03ms | 162.36ms | 2.41s | 196.75ms | 1.48s | 208.53ms | 274.98ms | 2.23s | 166.01ms (fail) |
| broadPropagation | 374.57ms | 316.81ms | 4.38s | 449.08ms | 87.66ms (fail) | 454.23ms | 501.86ms | 5.76s | 6.06ms (fail) |
| deepPropagation | 127.08ms | 99.59ms | 1.58s | 177.54ms | 2.04s (fail) | 173.21ms | 165.45ms | 2.10s | 143.71ms (fail) |
| diamond | 239.59ms | 214.47ms | 2.51s | 280.12ms | 2.79s (fail) | 278.00ms | 350.31ms | 3.57s | 192.26ms (fail) |
| mux | 378.62ms | 345.41ms | 1.86s | 397.85ms | 558.15ms (fail) | 413.93ms | 440.88ms | 2.07s | 192.36ms (fail) |
| repeatedObservers | 47.19ms | 50.03ms | 234.52ms | 39.79ms | 393.10ms (fail) | 45.10ms | 81.27ms | 224.19ms | 50.55ms (fail) |
| triangle | 88.75ms | 79.77ms | 792.05ms | 99.62ms | 979.50ms (fail) | 99.03ms | 116.45ms | 1.19s | 79.23ms (fail) |
| unstable | 62.40ms | 70.31ms | 357.11ms | 70.06ms | 636.69ms (fail) | 79.14ms | 97.36ms | 357.70ms | 343.80ms (fail) |
| molBench | 493.54ms | 491.31ms | 584.08ms | 488.43ms | 11.60ms | 485.55ms | 492.88ms | 1.72s | 883μs |
| create_signals | 6.73ms | 28.47ms | 51.81ms | 4.55ms | 24.54ms | 25.38ms | 91.39ms | 87.03ms | 61.42ms |
| comp_0to1 | 20.66ms | 10.96ms | 19.80ms | 17.01ms | 13.50ms | 11.65ms | 34.23ms | 35.12ms | 54.39ms |
| comp_1to1 | 19.93ms | 23.78ms | 29.78ms | 12.26ms | 22.32ms | 21.07ms | 52.10ms | 46.07ms | 56.38ms |
| comp_2to1 | 13.86ms | 19.67ms | 12.49ms | 23.51ms | 24.51ms | 13.70ms | 41.56ms | 25.96ms | 36.93ms |
| comp_4to1 | 1.69ms | 3.40ms | 27.40ms | 8.43ms | 6.98ms | 1.82ms | 13.86ms | 25.99ms | 17.92ms |
| comp_1000to1 | 4μs | 4μs | 16μs | 4μs | 3μs | 8μs | 31μs | 4.56ms | 42μs |
| comp_1to2 | 11.60ms | 14.24ms | 40.35ms | 24.34ms | 10.59ms | 21.65ms | 34.38ms | 25.50ms | 45.40ms |
| comp_1to4 | 8.02ms | 16.74ms | 30.46ms | 22.11ms | 23.84ms | 15.51ms | 17.33ms | 27.74ms | 44.36ms |
| comp_1to8 | 3.99ms | 9.02ms | 20.73ms | 9.45ms | 4.92ms | 7.09ms | 21.63ms | 23.24ms | 43.26ms |
| comp_1to1000 | 3.31ms | 5.44ms | 16.09ms | 10.86ms | 4.59ms | 4.28ms | 16.85ms | 17.94ms | 39.40ms |
| update_1to1 | 4.51ms | 5.48ms | 27.78ms | 8.56ms | 88.04ms | 8.95ms | 15.92ms | 43.08ms | 5.65ms |
| update_2to1 | 2.37ms | 2.80ms | 11.28ms | 4.34ms | 44.06ms | 4.49ms | 7.79ms | 21.36ms | 2.92ms |
| update_4to1 | 1.20ms | 1.52ms | 6.33ms | 2.21ms | 21.18ms | 2.23ms | 4.01ms | 10.82ms | 1.48ms |
| update_1000to1 | 11μs | 24μs | 71μs | 32μs | 181μs | 22μs | 40μs | 118μs | 15μs |
| update_1to2 | 2.71ms | 2.75ms | 13.75ms | 4.63ms | 44.66ms | 4.47ms | 8.03ms | 21.10ms | 2.88ms |
| update_1to4 | 1.26ms | 1.44ms | 6.20ms | 2.17ms | 22.15ms | 2.24ms | 4.03ms | 10.87ms | 1.49ms |
| update_1to1000 | 41μs | 56μs | 175μs | 63μs | 126μs | 43μs | 182μs | 209μs | 381μs |
| cellx1000 | 7.61ms | 27.49ms | 83.70ms | 9.93ms | N/A | 9.93ms | 12.33ms | 168.68ms | 5.29ms |
| cellx2500 | 23.39ms | 134.42ms | 241.74ms | 29.26ms | N/A | 33.00ms | 34.13ms | 488.44ms | 25.60ms |
| cellx5000 | 49.85ms | 419.80ms | 617.09ms | 76.80ms | N/A | 70.38ms | 80.80ms | 1.16s | 85.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 247.70ms | 233.45ms | 2.03s | 435.40ms | 2.37s | 513.84ms | 354.85ms | 2.70s (partial) | 240.15ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 182.57ms | 184.18ms | 1.55s | 272.82ms | 1.57s (partial) | 278.89ms | 242.17ms | 2.43s (partial) | 198.09ms |
| 1000x12 - 4 sources - dynamic (large) | 304.26ms | 351.55ms | 1.80s | 3.69s | 2.60s (partial) | 3.76s | 466.68ms | 4.16s (partial) | 343.13ms |
| 1000x5 - 25 sources (wide dense) | 455.23ms | 616.58ms | 3.64s | 2.70s | 4.35s | 3.41s | 591.04ms | 5.07s (partial) | 504.52ms |
| 5x500 - 3 sources (deep) | 205.51ms | 202.14ms | 1.14s | 231.06ms | 1.43s | 223.15ms | 251.73ms | 2.01s (partial) | 206.75ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.56ms | 288.28ms | 1.73s | 442.76ms | 1.86s (partial) | 488.97ms | 380.76ms | 2.84s (partial) | 259.41ms |

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
