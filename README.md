# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.26s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.30s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.43s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.84s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.80s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.31s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.02ms | 163.58ms | 2.36s | 201.83ms | 1.38s | 206.16ms | 278.83ms | 2.15s | 166.74ms (fail) |
| broadPropagation | 374.27ms | 317.68ms | 4.46s | 454.81ms | 82.25ms (fail) | 452.60ms | 521.10ms | 5.40s | 6.03ms (fail) |
| deepPropagation | 121.06ms | 98.74ms | 1.56s | 176.50ms | 1.87s (fail) | 170.25ms | 169.94ms | 1.99s | 141.54ms (fail) |
| diamond | 239.52ms | 214.31ms | 2.46s | 289.50ms | 2.50s (fail) | 281.25ms | 353.15ms | 3.40s | 179.84ms (fail) |
| mux | 377.09ms | 344.38ms | 1.86s | 403.77ms | 555.41ms (fail) | 412.40ms | 451.97ms | 2.00s | 191.57ms (fail) |
| repeatedObservers | 47.17ms | 50.44ms | 230.67ms | 40.08ms | 386.68ms (fail) | 44.72ms | 81.86ms | 215.90ms | 52.88ms (fail) |
| triangle | 88.10ms | 78.81ms | 776.64ms | 97.76ms | 832.77ms (fail) | 102.48ms | 127.17ms | 1.11s | 75.94ms (fail) |
| unstable | 61.72ms | 69.81ms | 350.05ms | 70.34ms | 606.24ms (fail) | 80.16ms | 98.96ms | 350.17ms | 337.92ms (fail) |
| molBench | 493.35ms | 491.84ms | 571.46ms | 489.08ms | 11.29ms | 485.59ms | 494.12ms | 1.70s | 939μs |
| create_signals | 7.04ms | 25.05ms | 69.10ms | 5.07ms | 24.42ms | 25.63ms | 58.14ms | 86.31ms | 60.06ms |
| comp_0to1 | 23.62ms | 11.38ms | 34.62ms | 17.01ms | 14.99ms | 11.73ms | 27.28ms | 34.26ms | 54.52ms |
| comp_1to1 | 16.14ms | 18.81ms | 46.87ms | 12.43ms | 25.88ms | 29.79ms | 47.02ms | 41.44ms | 56.17ms |
| comp_2to1 | 19.53ms | 13.00ms | 30.06ms | 17.23ms | 30.20ms | 19.28ms | 25.46ms | 26.06ms | 38.03ms |
| comp_4to1 | 1.58ms | 6.50ms | 27.94ms | 8.74ms | 10.29ms | 6.10ms | 14.96ms | 29.18ms | 18.69ms |
| comp_1000to1 | 4μs | 4μs | 18μs | 7μs | 10μs | 5μs | 17μs | 2.81ms | 42μs |
| comp_1to2 | 13.15ms | 15.42ms | 37.69ms | 16.23ms | 11.40ms | 20.74ms | 47.90ms | 20.30ms | 48.25ms |
| comp_1to4 | 8.60ms | 15.67ms | 20.07ms | 29.58ms | 21.15ms | 10.89ms | 22.13ms | 37.59ms | 48.94ms |
| comp_1to8 | 4.13ms | 6.19ms | 23.72ms | 7.77ms | 6.74ms | 6.07ms | 24.71ms | 21.55ms | 44.99ms |
| comp_1to1000 | 3.32ms | 3.84ms | 16.15ms | 7.58ms | 4.56ms | 4.33ms | 17.19ms | 17.66ms | 39.25ms |
| update_1to1 | 4.54ms | 5.42ms | 27.72ms | 8.77ms | 84.15ms | 8.95ms | 15.99ms | 43.43ms | 5.65ms |
| update_2to1 | 2.31ms | 2.77ms | 10.93ms | 4.25ms | 42.88ms | 4.48ms | 7.81ms | 21.43ms | 3.03ms |
| update_4to1 | 1.18ms | 1.45ms | 7.00ms | 2.20ms | 19.96ms | 2.27ms | 4.04ms | 10.84ms | 1.42ms |
| update_1000to1 | 11μs | 23μs | 66μs | 36μs | 189μs | 22μs | 40μs | 118μs | 14μs |
| update_1to2 | 2.31ms | 2.76ms | 11.39ms | 4.67ms | 41.90ms | 4.53ms | 8.07ms | 21.18ms | 2.88ms |
| update_1to4 | 1.22ms | 1.43ms | 6.20ms | 2.14ms | 20.26ms | 2.28ms | 4.06ms | 10.87ms | 1.44ms |
| update_1to1000 | 40μs | 57μs | 169μs | 2.98ms | 98μs | 42μs | 170μs | 222μs | 383μs |
| cellx1000 | 7.29ms | 28.73ms | 75.49ms | 10.11ms | N/A | 9.62ms | 12.46ms | 178.63ms | 7.28ms |
| cellx2500 | 21.91ms | 127.92ms | 261.16ms | 28.03ms | N/A | 33.63ms | 37.52ms | 511.83ms | 33.13ms |
| cellx5000 | 46.66ms | 397.44ms | 565.69ms | 73.54ms | N/A | 69.11ms | 100.67ms | 1.16s | 88.70ms |
| 10x5 - 2 sources - read 20.0% (simple) | 228.85ms | 238.13ms | 2.02s | 439.93ms | 2.13s | 511.55ms | 351.73ms | 2.57s (partial) | 258.11ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.18ms | 186.78ms | 1.55s | 274.69ms | 1.43s (partial) | 282.50ms | 246.78ms | 2.33s (partial) | 197.02ms |
| 1000x12 - 4 sources - dynamic (large) | 303.43ms | 351.53ms | 1.97s | 3.70s | 2.54s (partial) | 3.84s | 473.69ms | 4.06s (partial) | 357.08ms |
| 1000x5 - 25 sources (wide dense) | 449.13ms | 493.28ms | 3.58s | 2.73s | 4.03s | 3.59s | 595.16ms | 5.08s (partial) | 501.05ms |
| 5x500 - 3 sources (deep) | 205.94ms | 198.25ms | 1.14s | 227.48ms | 1.34s | 225.48ms | 257.87ms | 1.96s (partial) | 206.74ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.91ms | 274.57ms | 1.68s | 447.66ms | 1.74s (partial) | 480.85ms | 383.77ms | 2.73s (partial) | 258.61ms |

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
