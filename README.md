# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [alien_signals v0.4.2-pre.1](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.92s |
| 🥉 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.39s |
| 4 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.26s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 6 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 7 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.42s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.40s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.41s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.27s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals v0.4.2-pre.1](https://github.com/medz/alien-signals-dart) | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 199.60ms | 172.10ms | 162.78ms | 2.30s | 202.44ms | 1.35s | 207.32ms | 287.01ms | 2.12s | 166.01ms (fail) |
| broadPropagation | 395.49ms | 376.43ms | 318.12ms | 4.36s | 496.19ms | 81.59ms (fail) | 464.45ms | 506.37ms | 5.48s | 6.28ms (fail) |
| deepPropagation | 95.96ms | 131.78ms | 98.08ms | 1.56s | 179.84ms | 1.91s (fail) | 172.58ms | 174.03ms | 1.96s | 142.51ms (fail) |
| diamond | 217.14ms | 237.98ms | 214.63ms | 2.40s | 296.95ms | 2.57s (fail) | 281.36ms | 366.16ms | 3.47s | 183.11ms (fail) |
| mux | 412.19ms | 381.31ms | 346.29ms | 1.85s | 401.96ms | 562.69ms (fail) | 450.24ms | 441.72ms | 1.99s | 195.50ms (fail) |
| repeatedObservers | 47.73ms | 47.70ms | 50.17ms | 228.63ms | 41.07ms | 391.09ms (fail) | 44.99ms | 81.69ms | 216.60ms | 52.89ms (fail) |
| triangle | 76.05ms | 87.57ms | 78.84ms | 756.23ms | 100.65ms | 893.39ms (fail) | 101.66ms | 118.41ms | 1.11s | 76.66ms (fail) |
| unstable | 64.95ms | 62.01ms | 69.97ms | 349.93ms | 73.42ms | 636.01ms (fail) | 79.35ms | 97.65ms | 347.12ms | 335.26ms (fail) |
| molBench | 480.61ms | 494.35ms | 492.01ms | 574.36ms | 489.73ms | 12.01ms | 487.48ms | 494.03ms | 1.71s | 858μs |
| create_signals | 26.65ms | 7.96ms | 28.78ms | 67.58ms | 5.30ms | 24.17ms | 25.63ms | 53.31ms | 54.51ms | 62.64ms |
| comp_0to1 | 11.13ms | 22.98ms | 11.27ms | 40.29ms | 21.06ms | 14.99ms | 10.90ms | 26.68ms | 22.45ms | 53.30ms |
| comp_1to1 | 27.75ms | 16.14ms | 22.49ms | 38.01ms | 11.99ms | 25.36ms | 29.80ms | 28.40ms | 47.06ms | 55.14ms |
| comp_2to1 | 17.66ms | 19.76ms | 15.32ms | 35.47ms | 17.10ms | 25.73ms | 9.09ms | 42.67ms | 39.39ms | 36.32ms |
| comp_4to1 | 1.55ms | 1.73ms | 4.07ms | 13.94ms | 8.35ms | 6.04ms | 2.23ms | 5.20ms | 17.69ms | 16.54ms |
| comp_1000to1 | 6μs | 4μs | 7μs | 21μs | 6μs | 3μs | 5μs | 20μs | 4.35ms | 41μs |
| comp_1to2 | 11.55ms | 11.31ms | 15.24ms | 31.66ms | 13.64ms | 12.88ms | 22.39ms | 40.74ms | 25.45ms | 45.28ms |
| comp_1to4 | 13.36ms | 8.47ms | 15.68ms | 29.18ms | 20.76ms | 25.23ms | 9.20ms | 22.85ms | 27.69ms | 43.78ms |
| comp_1to8 | 8.39ms | 3.95ms | 7.41ms | 21.39ms | 7.76ms | 8.25ms | 10.65ms | 21.67ms | 23.84ms | 42.57ms |
| comp_1to1000 | 3.67ms | 3.40ms | 4.69ms | 15.83ms | 4.25ms | 4.58ms | 6.97ms | 16.81ms | 17.84ms | 38.69ms |
| update_1to1 | 4.88ms | 4.55ms | 5.43ms | 27.04ms | 8.58ms | 83.39ms | 9.03ms | 16.10ms | 42.99ms | 5.69ms |
| update_2to1 | 2.44ms | 2.36ms | 2.74ms | 10.88ms | 4.32ms | 44.06ms | 4.47ms | 8.00ms | 21.25ms | 2.86ms |
| update_4to1 | 1.19ms | 1.13ms | 1.35ms | 6.18ms | 2.20ms | 20.70ms | 2.25ms | 4.06ms | 10.75ms | 1.47ms |
| update_1000to1 | 31μs | 20μs | 13μs | 67μs | 21μs | 175μs | 22μs | 51μs | 117μs | 14μs |
| update_1to2 | 2.38ms | 2.44ms | 2.71ms | 13.34ms | 4.64ms | 42.77ms | 4.46ms | 8.05ms | 20.98ms | 2.87ms |
| update_1to4 | 1.19ms | 1.16ms | 1.34ms | 5.61ms | 2.18ms | 21.30ms | 2.25ms | 4.02ms | 10.74ms | 1.47ms |
| update_1to1000 | 28μs | 31μs | 32μs | 173μs | 72μs | 94μs | 44μs | 170μs | 210μs | 374μs |
| cellx1000 | 10.40ms | 7.30ms | 29.00ms | 84.27ms | 9.60ms | N/A | 9.78ms | 11.82ms | 163.12ms | 5.18ms |
| cellx2500 | 27.41ms | 22.54ms | 130.35ms | 257.17ms | 25.83ms | N/A | 31.74ms | 32.16ms | 473.21ms | 24.39ms |
| cellx5000 | 69.47ms | 43.20ms | 398.78ms | 589.42ms | 69.37ms | N/A | 64.23ms | 73.32ms | 1.12s | 54.87ms |
| 10x5 - 2 sources - read 20.0% (simple) | 215.64ms | 229.57ms | 236.43ms | 2.01s | 439.01ms | 2.18s | 501.42ms | 362.80ms | 2.53s (partial) | 247.00ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 164.52ms | 175.27ms | 184.20ms | 1.52s | 269.53ms | 1.47s (partial) | 280.56ms | 244.28ms | 2.33s (partial) | 205.75ms |
| 1000x12 - 4 sources - dynamic (large) | 315.53ms | 300.56ms | 351.03ms | 1.78s | 3.66s | 2.59s (partial) | 3.73s | 457.94ms | 4.08s (partial) | 333.70ms |
| 1000x5 - 25 sources (wide dense) | 543.05ms | 448.23ms | 611.90ms | 3.60s | 2.72s | 4.23s | 3.42s | 583.60ms | 5.09s (partial) | 498.34ms |
| 5x500 - 3 sources (deep) | 187.73ms | 202.09ms | 196.25ms | 1.14s | 227.22ms | 1.35s | 225.40ms | 250.77ms | 1.95s (partial) | 203.38ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.71ms | 261.26ms | 280.11ms | 1.69s | 452.57ms | 1.83s (partial) | 477.90ms | 376.73ms | 2.73s (partial) | 256.47ms |

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
