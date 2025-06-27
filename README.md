# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.43s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.23s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.08s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.35s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.97s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 38.86s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.50ms | 161.50ms | 2.34s | 199.23ms | 1.37s | 209.78ms | 275.01ms | 2.11s | 166.45ms (fail) |
| broadPropagation | 375.79ms | 317.87ms | 4.57s | 451.58ms | 82.91ms (fail) | 450.41ms | 511.20ms | 5.41s | 6.25ms (fail) |
| deepPropagation | 132.43ms | 98.66ms | 1.59s | 175.36ms | 2.05s (fail) | 164.96ms | 170.96ms | 1.96s | 142.50ms (fail) |
| diamond | 237.27ms | 211.28ms | 2.50s | 286.07ms | 2.99s (fail) | 279.37ms | 351.36ms | 3.42s | 183.83ms (fail) |
| mux | 379.73ms | 343.33ms | 1.83s | 403.35ms | 579.56ms (fail) | 409.98ms | 442.18ms | 2.01s | 191.68ms (fail) |
| repeatedObservers | 46.98ms | 50.15ms | 234.46ms | 39.34ms | 393.73ms (fail) | 44.49ms | 81.74ms | 213.19ms | 52.83ms (fail) |
| triangle | 88.37ms | 78.51ms | 763.91ms | 98.39ms | 972.16ms (fail) | 102.78ms | 117.62ms | 1.12s | 75.98ms (fail) |
| unstable | 62.01ms | 69.75ms | 369.92ms | 70.09ms | 642.67ms (fail) | 79.45ms | 96.79ms | 341.73ms | 335.85ms (fail) |
| molBench | 493.44ms | 492.96ms | 579.45ms | 486.25ms | 12.20ms | 485.18ms | 494.08ms | 1.70s | 925μs |
| create_signals | 6.82ms | 27.67ms | 68.50ms | 4.58ms | 27.20ms | 24.96ms | 103.07ms | 84.41ms | 59.10ms |
| comp_0to1 | 20.99ms | 10.74ms | 27.96ms | 17.24ms | 13.63ms | 11.57ms | 38.88ms | 35.48ms | 52.89ms |
| comp_1to1 | 17.02ms | 21.98ms | 49.30ms | 14.25ms | 23.13ms | 17.99ms | 40.39ms | 45.06ms | 54.38ms |
| comp_2to1 | 19.93ms | 18.76ms | 21.85ms | 17.02ms | 24.72ms | 10.87ms | 37.80ms | 39.72ms | 35.74ms |
| comp_4to1 | 1.66ms | 1.70ms | 31.78ms | 13.89ms | 4.38ms | 3.95ms | 13.63ms | 21.18ms | 16.00ms |
| comp_1000to1 | 3μs | 6μs | 16μs | 4μs | 3μs | 4μs | 20μs | 3.01ms | 41μs |
| comp_1to2 | 10.34ms | 9.73ms | 34.68ms | 18.26ms | 11.56ms | 15.96ms | 40.31ms | 30.16ms | 44.63ms |
| comp_1to4 | 5.60ms | 23.44ms | 23.80ms | 31.81ms | 24.26ms | 14.03ms | 22.55ms | 27.57ms | 43.19ms |
| comp_1to8 | 8.13ms | 9.51ms | 24.41ms | 7.09ms | 4.79ms | 7.57ms | 21.90ms | 23.06ms | 41.99ms |
| comp_1to1000 | 3.40ms | 7.89ms | 16.18ms | 6.22ms | 4.77ms | 6.15ms | 16.77ms | 18.15ms | 38.29ms |
| update_1to1 | 4.54ms | 5.46ms | 25.78ms | 8.63ms | 85.89ms | 8.89ms | 15.98ms | 43.16ms | 5.65ms |
| update_2to1 | 2.35ms | 2.77ms | 11.75ms | 4.36ms | 43.17ms | 4.51ms | 7.81ms | 21.37ms | 2.83ms |
| update_4to1 | 1.20ms | 1.34ms | 7.01ms | 2.20ms | 20.64ms | 2.25ms | 4.00ms | 10.83ms | 1.44ms |
| update_1000to1 | 11μs | 13μs | 68μs | 21μs | 170μs | 22μs | 41μs | 117μs | 14μs |
| update_1to2 | 2.32ms | 2.68ms | 11.00ms | 4.64ms | 43.50ms | 4.51ms | 8.01ms | 21.28ms | 2.84ms |
| update_1to4 | 1.20ms | 1.46ms | 7.27ms | 2.17ms | 20.73ms | 2.23ms | 4.12ms | 10.80ms | 1.45ms |
| update_1to1000 | 43μs | 31μs | 175μs | 766μs | 104μs | 50μs | 171μs | 211μs | 371μs |
| cellx1000 | 7.21ms | 28.80ms | 77.91ms | 9.62ms | N/A | 10.79ms | 12.38ms | 156.23ms | 5.24ms |
| cellx2500 | 21.72ms | 125.84ms | 243.69ms | 25.72ms | N/A | 32.53ms | 32.42ms | 451.54ms | 22.74ms |
| cellx5000 | 43.14ms | 411.80ms | 554.20ms | 65.52ms | N/A | 59.92ms | 69.88ms | 1.08s | 52.82ms |
| 10x5 - 2 sources - read 20.0% (simple) | 227.10ms | 243.89ms | 2.03s | 438.59ms | 2.22s | 534.62ms | 366.08ms | 2.54s (partial) | 235.69ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.75ms | 190.58ms | 1.59s | 274.89ms | 1.46s (partial) | 291.67ms | 244.46ms | 2.32s (partial) | 196.86ms |
| 1000x12 - 4 sources - dynamic (large) | 298.42ms | 343.01ms | 1.94s | 3.67s | 2.47s (partial) | 3.93s | 461.71ms | 3.94s (partial) | 329.12ms |
| 1000x5 - 25 sources (wide dense) | 452.66ms | 625.62ms | 3.65s | 2.71s | 4.28s | 3.29s | 587.87ms | 5.03s (partial) | 490.61ms |
| 5x500 - 3 sources (deep) | 202.40ms | 199.80ms | 1.16s | 226.90ms | 1.36s | 224.24ms | 251.83ms | 1.92s (partial) | 204.02ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.51ms | 288.96ms | 1.69s | 447.20ms | 1.75s (partial) | 480.79ms | 382.27ms | 2.70s (partial) | 257.08ms |

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
