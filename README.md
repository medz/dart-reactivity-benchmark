# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.26s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.24s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.13s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.05s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.24s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 177.50ms | 161.96ms | 2.41s | 198.98ms | 1.38s | 205.46ms | 274.73ms | 2.14s | 149.24ms (fail) |
| broadPropagation | 377.53ms | 316.45ms | 4.34s | 456.59ms | 79.20ms (fail) | 454.00ms | 502.67ms | 5.42s | 5.95ms (fail) |
| deepPropagation | 133.70ms | 98.25ms | 1.54s | 175.62ms | 1.90s (fail) | 172.85ms | 165.90ms | 1.96s | 147.79ms (fail) |
| diamond | 236.79ms | 215.80ms | 2.48s | 279.44ms | 2.52s (fail) | 284.36ms | 360.18ms | 3.41s | 194.02ms (fail) |
| mux | 379.55ms | 349.80ms | 1.84s | 402.58ms | 565.92ms (fail) | 403.48ms | 442.77ms | 2.02s | 193.28ms (fail) |
| repeatedObservers | 47.16ms | 50.08ms | 235.22ms | 39.62ms | 395.70ms (fail) | 46.02ms | 81.56ms | 219.52ms | 53.19ms (fail) |
| triangle | 90.44ms | 78.79ms | 780.69ms | 98.60ms | 909.16ms (fail) | 101.71ms | 118.54ms | 1.13s | 76.12ms (fail) |
| unstable | 61.76ms | 70.10ms | 354.60ms | 70.14ms | 613.39ms (fail) | 79.53ms | 95.76ms | 351.62ms | 337.56ms (fail) |
| molBench | 493.44ms | 491.36ms | 570.95ms | 487.63ms | 11.58ms | 485.51ms | 492.84ms | 1.70s | 1.23ms |
| create_signals | 8.01ms | 26.72ms | 88.70ms | 4.70ms | 23.23ms | 26.51ms | 58.41ms | 55.72ms | 62.19ms |
| comp_0to1 | 21.64ms | 9.32ms | 16.54ms | 17.33ms | 13.33ms | 12.26ms | 27.39ms | 40.18ms | 56.83ms |
| comp_1to1 | 13.09ms | 22.50ms | 53.76ms | 11.47ms | 23.14ms | 27.85ms | 49.93ms | 26.09ms | 58.21ms |
| comp_2to1 | 15.15ms | 21.65ms | 23.63ms | 13.54ms | 23.82ms | 9.14ms | 47.81ms | 31.33ms | 37.07ms |
| comp_4to1 | 2.21ms | 3.75ms | 31.00ms | 11.46ms | 7.28ms | 1.95ms | 17.56ms | 17.67ms | 17.31ms |
| comp_1000to1 | 4μs | 5μs | 41μs | 4μs | 3μs | 5μs | 18μs | 3.05ms | 74μs |
| comp_1to2 | 11.21ms | 29.88ms | 37.50ms | 27.33ms | 9.98ms | 14.15ms | 35.37ms | 37.77ms | 47.44ms |
| comp_1to4 | 8.44ms | 16.53ms | 21.80ms | 19.40ms | 25.96ms | 14.48ms | 22.20ms | 25.23ms | 46.13ms |
| comp_1to8 | 3.98ms | 7.03ms | 23.61ms | 6.83ms | 5.07ms | 6.37ms | 22.00ms | 23.95ms | 45.74ms |
| comp_1to1000 | 3.47ms | 3.79ms | 16.24ms | 3.96ms | 4.42ms | 4.34ms | 16.81ms | 17.85ms | 42.00ms |
| update_1to1 | 4.51ms | 5.39ms | 26.92ms | 8.61ms | 86.82ms | 9.50ms | 16.01ms | 43.01ms | 5.67ms |
| update_2to1 | 2.43ms | 2.85ms | 11.41ms | 4.43ms | 42.67ms | 5.20ms | 7.82ms | 21.84ms | 2.83ms |
| update_4to1 | 1.20ms | 1.39ms | 7.54ms | 2.19ms | 21.39ms | 2.33ms | 4.06ms | 10.73ms | 1.46ms |
| update_1000to1 | 13μs | 13μs | 70μs | 21μs | 177μs | 23μs | 41μs | 118μs | 15μs |
| update_1to2 | 2.36ms | 2.73ms | 12.67ms | 4.70ms | 44.50ms | 5.52ms | 8.02ms | 21.54ms | 2.82ms |
| update_1to4 | 1.23ms | 1.38ms | 5.48ms | 2.20ms | 21.46ms | 2.41ms | 4.05ms | 10.71ms | 1.44ms |
| update_1to1000 | 49μs | 35μs | 174μs | 50μs | 96μs | 44μs | 171μs | 222μs | 395μs |
| cellx1000 | 7.38ms | 26.72ms | 71.78ms | 10.10ms | N/A | 9.92ms | 12.22ms | 154.87ms | 5.44ms |
| cellx2500 | 22.84ms | 127.14ms | 261.28ms | 27.99ms | N/A | 33.63ms | 33.24ms | 480.97ms | 28.94ms |
| cellx5000 | 44.95ms | 393.32ms | 579.08ms | 80.46ms | N/A | 70.87ms | 82.81ms | 1.13s | 67.00ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.23ms | 231.58ms | 2.03s | 440.56ms | 2.13s | 516.67ms | 376.47ms | 2.57s (partial) | 247.30ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.31ms | 184.64ms | 1.60s | 270.16ms | 1.44s (partial) | 286.24ms | 248.91ms | 2.32s (partial) | 200.62ms |
| 1000x12 - 4 sources - dynamic (large) | 300.72ms | 343.61ms | 2.05s | 3.67s | 2.46s (partial) | 3.75s | 463.24ms | 4.04s (partial) | 342.50ms |
| 1000x5 - 25 sources (wide dense) | 452.75ms | 495.00ms | 3.71s | 2.72s | 4.17s | 3.44s | 591.83ms | 5.12s (partial) | 502.00ms |
| 5x500 - 3 sources (deep) | 207.56ms | 198.05ms | 1.16s | 226.62ms | 1.38s | 225.24ms | 250.68ms | 1.95s (partial) | 205.07ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.73ms | 276.07ms | 1.74s | 450.78ms | 1.75s (partial) | 490.38ms | 377.50ms | 2.74s (partial) | 262.77ms |

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
