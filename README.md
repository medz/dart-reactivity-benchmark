# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.36s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.32s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.99s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.46s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.82s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.25s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.91ms | 156.00ms | 2.31s | 206.70ms | 1.41s | 214.79ms | 270.11ms | 2.17s | 155.40ms (fail) |
| broadPropagation | 388.41ms | 326.86ms | 4.21s | 465.60ms | 81.35ms (fail) | 454.83ms | 497.26ms | 5.41s | 6.07ms (fail) |
| deepPropagation | 127.11ms | 95.59ms | 1.51s | 182.41ms | 1.90s (fail) | 168.16ms | 169.37ms | 2.04s | 137.16ms (fail) |
| diamond | 237.91ms | 209.53ms | 2.43s | 281.56ms | 2.63s (fail) | 284.09ms | 346.51ms | 3.45s | 180.31ms (fail) |
| mux | 375.59ms | 341.65ms | 1.80s | 385.50ms | 591.76ms (fail) | 408.10ms | 435.89ms | 2.01s | 192.31ms (fail) |
| repeatedObservers | 47.95ms | 50.61ms | 232.90ms | 38.88ms | 386.03ms (fail) | 46.55ms | 78.30ms | 219.29ms | 53.41ms (fail) |
| triangle | 87.15ms | 75.42ms | 764.39ms | 99.83ms | 954.63ms (fail) | 104.75ms | 116.73ms | 1.13s | 78.31ms (fail) |
| unstable | 62.34ms | 68.32ms | 345.85ms | 70.79ms | 599.34ms (fail) | 73.21ms | 93.66ms | 352.84ms | 340.64ms (fail) |
| molBench | 482.40ms | 480.71ms | 579.48ms | 492.10ms | 11.45ms | 489.43ms | 492.32ms | 1.71s | 952μs |
| create_signals | 7.58ms | 24.89ms | 85.22ms | 13.37ms | 24.00ms | 26.63ms | 75.14ms | 52.58ms | 58.34ms |
| comp_0to1 | 20.29ms | 10.94ms | 33.70ms | 17.21ms | 16.21ms | 12.09ms | 27.09ms | 38.34ms | 50.68ms |
| comp_1to1 | 11.08ms | 18.95ms | 29.33ms | 7.13ms | 26.23ms | 27.29ms | 37.69ms | 43.20ms | 52.29ms |
| comp_2to1 | 14.49ms | 18.18ms | 29.81ms | 19.05ms | 23.80ms | 11.72ms | 25.59ms | 25.93ms | 42.08ms |
| comp_4to1 | 1.56ms | 7.98ms | 33.74ms | 11.11ms | 6.59ms | 1.85ms | 15.34ms | 29.55ms | 15.25ms |
| comp_1000to1 | 5μs | 4μs | 33μs | 4μs | 4μs | 5μs | 15μs | 2.94ms | 40μs |
| comp_1to2 | 10.58ms | 10.83ms | 34.13ms | 25.44ms | 17.90ms | 20.83ms | 27.22ms | 20.76ms | 43.55ms |
| comp_1to4 | 7.12ms | 18.07ms | 21.31ms | 25.93ms | 26.00ms | 9.70ms | 33.16ms | 28.18ms | 42.85ms |
| comp_1to8 | 4.61ms | 6.74ms | 22.64ms | 7.12ms | 4.92ms | 12.71ms | 25.40ms | 21.25ms | 41.97ms |
| comp_1to1000 | 3.19ms | 9.17ms | 15.02ms | 5.38ms | 3.95ms | 6.33ms | 14.75ms | 17.89ms | 37.57ms |
| update_1to1 | 4.88ms | 6.21ms | 25.14ms | 8.17ms | 82.30ms | 9.34ms | 16.23ms | 42.65ms | 5.73ms |
| update_2to1 | 2.89ms | 2.92ms | 11.75ms | 4.07ms | 41.34ms | 4.57ms | 7.96ms | 20.94ms | 2.90ms |
| update_4to1 | 1.26ms | 1.53ms | 6.65ms | 2.14ms | 20.68ms | 2.35ms | 4.04ms | 10.59ms | 1.49ms |
| update_1000to1 | 12μs | 26μs | 63μs | 20μs | 173μs | 23μs | 52μs | 143μs | 15μs |
| update_1to2 | 2.39ms | 2.89ms | 11.23ms | 4.07ms | 42.52ms | 4.93ms | 8.11ms | 20.82ms | 2.99ms |
| update_1to4 | 1.54ms | 1.54ms | 5.78ms | 2.08ms | 20.61ms | 2.32ms | 4.09ms | 15.88ms | 1.49ms |
| update_1to1000 | 30μs | 60μs | 163μs | 157μs | 148μs | 43μs | 149μs | 199μs | 367μs |
| cellx1000 | 7.53ms | 27.13ms | 69.72ms | 9.52ms | N/A | 9.98ms | 13.03ms | 152.35ms | 5.19ms |
| cellx2500 | 22.26ms | 123.02ms | 246.27ms | 26.97ms | N/A | 34.07ms | 42.37ms | 443.71ms | 24.44ms |
| cellx5000 | 47.40ms | 409.28ms | 565.94ms | 72.91ms | N/A | 70.30ms | 139.62ms | 1.14s | 61.11ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.45ms | 235.59ms | 2.03s | 439.72ms | 2.29s | 519.44ms | 349.51ms | 2.60s (partial) | 240.13ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.60ms | 183.50ms | 1.57s | 270.82ms | 1.52s (partial) | 278.08ms | 241.89ms | 2.36s (partial) | 202.74ms |
| 1000x12 - 4 sources - dynamic (large) | 300.65ms | 343.29ms | 1.87s | 3.51s | 2.53s (partial) | 3.73s | 471.52ms | 3.97s (partial) | 336.55ms |
| 1000x5 - 25 sources (wide dense) | 449.35ms | 612.97ms | 3.66s | 2.59s | 4.41s | 3.43s | 598.68ms | 5.00s (partial) | 498.99ms |
| 5x500 - 3 sources (deep) | 205.48ms | 194.42ms | 1.16s | 233.31ms | 1.41s | 228.78ms | 257.10ms | 1.97s (partial) | 203.46ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.39ms | 280.38ms | 1.73s | 456.16ms | 1.76s (partial) | 473.57ms | 384.48ms | 2.74s (partial) | 258.55ms |

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
