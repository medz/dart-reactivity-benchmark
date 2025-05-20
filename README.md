# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.76s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.35s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.25s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.97s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.27s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.96s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.41s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.15ms | 154.46ms | 2.33s | 206.26ms | 1.42s | 208.12ms | 269.47ms | 2.17s | 158.48ms (fail) |
| broadPropagation | 377.54ms | 326.08ms | 4.29s | 456.48ms | 81.25ms (fail) | 477.04ms | 503.85ms | 5.40s | 6.23ms (fail) |
| deepPropagation | 128.46ms | 95.60ms | 1.52s | 173.63ms | 1.90s (fail) | 178.01ms | 167.89ms | 2.04s | 140.78ms (fail) |
| diamond | 237.07ms | 210.34ms | 2.41s | 283.10ms | 2.68s (fail) | 291.90ms | 345.97ms | 3.47s | 208.60ms (fail) |
| mux | 379.07ms | 347.52ms | 1.79s | 379.67ms | 569.77ms (fail) | 416.23ms | 433.05ms | 2.02s | 193.20ms (fail) |
| repeatedObservers | 47.82ms | 52.75ms | 223.70ms | 38.96ms | 381.36ms (fail) | 45.99ms | 78.70ms | 220.00ms | 52.30ms (fail) |
| triangle | 86.52ms | 75.50ms | 769.01ms | 99.19ms | 881.48ms (fail) | 103.74ms | 118.14ms | 1.14s | 89.06ms (fail) |
| unstable | 63.01ms | 69.33ms | 347.56ms | 75.12ms | 692.42ms (fail) | 74.15ms | 94.26ms | 345.93ms | 336.89ms (fail) |
| molBench | 480.46ms | 481.15ms | 576.37ms | 491.22ms | 13.10ms | 485.95ms | 486.67ms | 1.70s | 955μs |
| create_signals | 6.70ms | 28.01ms | 66.80ms | 5.25ms | 23.89ms | 25.27ms | 98.11ms | 74.48ms | 63.55ms |
| comp_0to1 | 20.59ms | 11.07ms | 25.64ms | 17.57ms | 15.15ms | 11.52ms | 35.31ms | 35.22ms | 51.73ms |
| comp_1to1 | 10.95ms | 22.68ms | 35.98ms | 11.81ms | 25.61ms | 26.32ms | 44.57ms | 42.26ms | 53.55ms |
| comp_2to1 | 14.46ms | 15.90ms | 41.51ms | 16.48ms | 24.98ms | 12.58ms | 46.66ms | 24.38ms | 36.06ms |
| comp_4to1 | 1.50ms | 5.09ms | 13.14ms | 11.85ms | 5.81ms | 3.70ms | 18.60ms | 28.14ms | 15.91ms |
| comp_1000to1 | 3μs | 4μs | 20μs | 9μs | 4μs | 5μs | 15μs | 3.56ms | 41μs |
| comp_1to2 | 11.42ms | 11.92ms | 28.49ms | 21.86ms | 14.01ms | 17.52ms | 28.10ms | 26.14ms | 43.84ms |
| comp_1to4 | 8.20ms | 16.73ms | 23.64ms | 32.42ms | 26.09ms | 9.02ms | 14.61ms | 27.47ms | 42.78ms |
| comp_1to8 | 4.29ms | 6.49ms | 27.17ms | 6.78ms | 7.92ms | 6.44ms | 19.23ms | 24.51ms | 42.09ms |
| comp_1to1000 | 3.12ms | 4.60ms | 14.55ms | 6.51ms | 4.43ms | 4.52ms | 14.31ms | 18.12ms | 37.60ms |
| update_1to1 | 4.92ms | 5.64ms | 24.46ms | 8.27ms | 89.42ms | 9.20ms | 16.17ms | 42.94ms | 5.77ms |
| update_2to1 | 2.42ms | 2.79ms | 11.34ms | 4.10ms | 44.88ms | 4.60ms | 7.87ms | 21.44ms | 2.91ms |
| update_4to1 | 1.21ms | 1.47ms | 6.44ms | 2.03ms | 21.66ms | 2.31ms | 4.01ms | 10.71ms | 1.49ms |
| update_1000to1 | 29μs | 14μs | 65μs | 20μs | 215μs | 23μs | 40μs | 118μs | 15μs |
| update_1to2 | 4.26ms | 2.90ms | 11.17ms | 4.10ms | 45.12ms | 4.93ms | 7.94ms | 21.22ms | 2.97ms |
| update_1to4 | 1.48ms | 1.44ms | 5.36ms | 2.04ms | 21.23ms | 2.29ms | 4.07ms | 10.77ms | 1.49ms |
| update_1to1000 | 28μs | 38μs | 157μs | 829μs | 96μs | 43μs | 150μs | 198μs | 369μs |
| cellx1000 | 7.23ms | 28.55ms | 69.95ms | 9.66ms | N/A | 9.56ms | 13.53ms | 147.54ms | 5.28ms |
| cellx2500 | 21.25ms | 123.14ms | 236.23ms | 27.27ms | N/A | 31.07ms | 31.15ms | 444.67ms | 28.63ms |
| cellx5000 | 42.74ms | 395.90ms | 536.31ms | 75.78ms | N/A | 62.22ms | 67.93ms | 1.06s | 72.10ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.62ms | 232.18ms | 2.04s | 442.16ms | 2.32s | 506.27ms | 347.19ms | 2.64s (partial) | 248.71ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.61ms | 183.95ms | 1.56s | 275.95ms | 1.52s (partial) | 277.22ms | 243.66ms | 2.36s (partial) | 207.74ms |
| 1000x12 - 4 sources - dynamic (large) | 296.99ms | 337.05ms | 1.90s | 3.52s | 2.61s (partial) | 3.74s | 464.02ms | 4.01s (partial) | 337.08ms |
| 1000x5 - 25 sources (wide dense) | 442.37ms | 622.78ms | 3.52s | 2.60s | 4.31s | 3.41s | 593.27ms | 5.06s (partial) | 507.09ms |
| 5x500 - 3 sources (deep) | 202.38ms | 198.80ms | 1.13s | 225.47ms | 1.39s | 228.04ms | 253.51ms | 1.97s (partial) | 206.96ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.41ms | 276.17ms | 1.69s | 445.50ms | 1.81s (partial) | 480.84ms | 377.48ms | 2.79s (partial) | 262.02ms |

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
