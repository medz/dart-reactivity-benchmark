# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.34s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.20s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.78s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.69s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.41s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.67s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 38.97s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.04ms | 155.67ms | 2.34s | 196.95ms | 1.38s | 205.81ms | 276.49ms | 2.17s | 150.97ms (fail) |
| broadPropagation | 375.40ms | 322.53ms | 4.25s | 455.80ms | 81.20ms (fail) | 462.10ms | 499.66ms | 5.38s | 5.94ms (fail) |
| deepPropagation | 133.22ms | 96.36ms | 1.53s | 178.39ms | 1.93s (fail) | 176.24ms | 168.94ms | 2.00s | 138.79ms (fail) |
| diamond | 235.61ms | 219.30ms | 2.44s | 276.36ms | 2.63s (fail) | 290.09ms | 348.23ms | 3.43s | 188.09ms (fail) |
| mux | 384.59ms | 341.83ms | 1.82s | 386.57ms | 586.84ms (fail) | 411.86ms | 436.73ms | 2.01s | 191.74ms (fail) |
| repeatedObservers | 47.91ms | 50.70ms | 228.91ms | 39.37ms | 405.14ms (fail) | 46.66ms | 80.89ms | 218.23ms | 52.17ms (fail) |
| triangle | 86.46ms | 75.69ms | 768.20ms | 99.36ms | 982.75ms (fail) | 103.15ms | 116.55ms | 1.13s | 75.58ms (fail) |
| unstable | 62.35ms | 68.46ms | 348.64ms | 69.91ms | 649.59ms (fail) | 74.83ms | 95.53ms | 348.83ms | 336.29ms (fail) |
| molBench | 483.78ms | 480.79ms | 578.40ms | 490.88ms | 11.46ms | 485.51ms | 494.90ms | 1.70s | 1.21ms |
| create_signals | 7.34ms | 25.58ms | 64.83ms | 13.96ms | 23.96ms | 24.94ms | 55.02ms | 52.56ms | 60.04ms |
| comp_0to1 | 20.91ms | 9.03ms | 20.61ms | 15.21ms | 13.75ms | 11.28ms | 24.84ms | 22.54ms | 52.18ms |
| comp_1to1 | 11.14ms | 18.37ms | 31.03ms | 7.02ms | 29.89ms | 17.21ms | 38.54ms | 30.47ms | 54.44ms |
| comp_2to1 | 14.47ms | 15.54ms | 29.06ms | 12.67ms | 30.98ms | 17.67ms | 23.67ms | 32.65ms | 36.66ms |
| comp_4to1 | 1.61ms | 5.03ms | 13.78ms | 10.99ms | 6.41ms | 1.94ms | 14.37ms | 20.27ms | 15.68ms |
| comp_1000to1 | 5μs | 4μs | 32μs | 8μs | 5μs | 9μs | 15μs | 3.11ms | 41μs |
| comp_1to2 | 14.36ms | 14.81ms | 28.84ms | 20.65ms | 13.41ms | 19.84ms | 34.49ms | 20.67ms | 44.69ms |
| comp_1to4 | 9.13ms | 18.05ms | 23.82ms | 28.24ms | 26.04ms | 15.51ms | 20.26ms | 24.34ms | 44.07ms |
| comp_1to8 | 4.42ms | 7.01ms | 22.71ms | 5.47ms | 6.73ms | 8.82ms | 22.89ms | 22.91ms | 43.06ms |
| comp_1to1000 | 3.27ms | 4.31ms | 15.02ms | 6.58ms | 5.86ms | 4.46ms | 14.58ms | 19.05ms | 38.30ms |
| update_1to1 | 4.95ms | 5.61ms | 24.56ms | 8.24ms | 84.19ms | 9.20ms | 16.16ms | 42.31ms | 5.73ms |
| update_2to1 | 2.73ms | 2.74ms | 12.01ms | 4.06ms | 42.72ms | 4.68ms | 7.93ms | 21.11ms | 2.90ms |
| update_4to1 | 1.26ms | 1.51ms | 6.96ms | 2.04ms | 21.18ms | 2.48ms | 4.03ms | 10.77ms | 1.51ms |
| update_1000to1 | 12μs | 14μs | 60μs | 20μs | 235μs | 22μs | 40μs | 120μs | 15μs |
| update_1to2 | 2.37ms | 2.83ms | 12.36ms | 4.06ms | 42.48ms | 4.91ms | 8.08ms | 20.80ms | 2.98ms |
| update_1to4 | 1.23ms | 1.47ms | 6.11ms | 2.02ms | 20.79ms | 2.31ms | 4.03ms | 10.45ms | 1.49ms |
| update_1to1000 | 37μs | 56μs | 165μs | 55μs | 148μs | 43μs | 148μs | 204μs | 385μs |
| cellx1000 | 7.20ms | 30.28ms | 71.31ms | 9.54ms | N/A | 9.45ms | 10.99ms | 154.13ms | 5.04ms |
| cellx2500 | 22.43ms | 124.63ms | 256.52ms | 26.05ms | N/A | 30.53ms | 29.62ms | 450.36ms | 27.05ms |
| cellx5000 | 42.17ms | 402.54ms | 588.27ms | 72.52ms | N/A | 58.96ms | 64.45ms | 1.04s | 71.31ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.19ms | 228.94ms | 2.01s | 440.45ms | 2.20s | 630.68ms | 349.19ms | 2.58s (partial) | 247.53ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.31ms | 183.38ms | 1.54s | 277.44ms | 1.46s (partial) | 312.97ms | 243.68ms | 2.37s (partial) | 201.38ms |
| 1000x12 - 4 sources - dynamic (large) | 309.18ms | 345.50ms | 1.86s | 3.37s | 2.55s (partial) | 3.95s | 462.03ms | 3.91s (partial) | 336.59ms |
| 1000x5 - 25 sources (wide dense) | 435.24ms | 613.95ms | 3.60s | 2.57s | 4.20s | 3.57s | 595.06ms | 5.01s (partial) | 507.41ms |
| 5x500 - 3 sources (deep) | 201.62ms | 193.64ms | 1.14s | 230.47ms | 1.37s | 227.67ms | 251.26ms | 1.97s (partial) | 205.69ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.98ms | 278.28ms | 1.73s | 439.61ms | 1.88s (partial) | 499.52ms | 386.54ms | 2.74s (partial) | 258.67ms |

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
