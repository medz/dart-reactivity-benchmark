# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.29s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.35s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.00s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.27s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.92s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.02ms | 160.38ms | 2.39s | 201.00ms | 1.40s | 207.94ms | 274.66ms | 2.20s | 161.93ms (fail) |
| broadPropagation | 366.71ms | 318.56ms | 4.51s | 449.81ms | 81.73ms (fail) | 463.00ms | 506.13ms | 5.49s | 6.20ms (fail) |
| deepPropagation | 128.17ms | 98.70ms | 1.57s | 176.97ms | 1.90s (fail) | 172.04ms | 168.01ms | 2.00s | 142.30ms (fail) |
| diamond | 237.40ms | 219.03ms | 2.51s | 278.43ms | 2.56s (fail) | 281.90ms | 353.55ms | 3.46s | 192.05ms (fail) |
| mux | 375.87ms | 339.76ms | 1.83s | 407.13ms | 584.74ms (fail) | 412.25ms | 457.25ms | 2.00s | 193.26ms (fail) |
| repeatedObservers | 47.10ms | 50.36ms | 242.30ms | 39.93ms | 393.85ms (fail) | 44.54ms | 81.05ms | 218.82ms | 53.02ms (fail) |
| triangle | 89.35ms | 79.11ms | 775.25ms | 99.41ms | 896.18ms (fail) | 102.43ms | 117.58ms | 1.13s | 78.31ms (fail) |
| unstable | 61.94ms | 70.15ms | 363.15ms | 70.10ms | 621.99ms (fail) | 79.04ms | 98.83ms | 349.85ms | 337.52ms (fail) |
| molBench | 493.59ms | 492.60ms | 579.14ms | 489.51ms | 12.27ms | 485.74ms | 494.38ms | 1.71s | 953μs |
| create_signals | 7.58ms | 27.89ms | 82.09ms | 5.20ms | 23.12ms | 25.98ms | 76.45ms | 77.39ms | 60.58ms |
| comp_0to1 | 21.75ms | 11.68ms | 21.85ms | 17.24ms | 13.24ms | 11.20ms | 27.93ms | 23.07ms | 54.37ms |
| comp_1to1 | 12.72ms | 23.66ms | 43.69ms | 10.99ms | 20.82ms | 27.22ms | 44.55ms | 29.85ms | 56.47ms |
| comp_2to1 | 19.45ms | 15.74ms | 23.50ms | 24.73ms | 27.79ms | 9.33ms | 36.88ms | 39.93ms | 37.79ms |
| comp_4to1 | 2.23ms | 3.87ms | 21.17ms | 8.46ms | 11.82ms | 2.39ms | 5.03ms | 18.67ms | 16.90ms |
| comp_1000to1 | 4μs | 4μs | 29μs | 4μs | 6μs | 5μs | 17μs | 3.74ms | 42μs |
| comp_1to2 | 9.87ms | 27.77ms | 35.40ms | 23.87ms | 12.72ms | 12.90ms | 33.66ms | 27.22ms | 46.03ms |
| comp_1to4 | 4.59ms | 21.84ms | 18.41ms | 20.85ms | 20.73ms | 11.21ms | 22.49ms | 31.33ms | 44.13ms |
| comp_1to8 | 7.89ms | 5.80ms | 20.66ms | 9.65ms | 6.58ms | 6.58ms | 24.60ms | 33.94ms | 43.35ms |
| comp_1to1000 | 3.52ms | 3.80ms | 16.11ms | 6.68ms | 5.82ms | 4.12ms | 16.86ms | 22.78ms | 39.70ms |
| update_1to1 | 4.51ms | 5.53ms | 25.56ms | 8.68ms | 89.94ms | 8.87ms | 15.90ms | 43.49ms | 5.65ms |
| update_2to1 | 2.33ms | 2.79ms | 11.32ms | 4.33ms | 43.74ms | 4.54ms | 7.86ms | 21.67ms | 2.94ms |
| update_4to1 | 1.16ms | 1.41ms | 6.80ms | 2.17ms | 20.92ms | 2.23ms | 4.00ms | 11.00ms | 1.48ms |
| update_1000to1 | 11μs | 22μs | 71μs | 21μs | 178μs | 32μs | 40μs | 119μs | 14μs |
| update_1to2 | 2.35ms | 2.70ms | 11.77ms | 4.67ms | 43.15ms | 4.46ms | 8.09ms | 21.36ms | 2.88ms |
| update_1to4 | 1.19ms | 1.40ms | 6.32ms | 2.17ms | 21.20ms | 2.21ms | 4.03ms | 10.93ms | 1.48ms |
| update_1to1000 | 35μs | 35μs | 173μs | 43μs | 94μs | 43μs | 170μs | 345μs | 409μs |
| cellx1000 | 7.72ms | 33.48ms | 72.36ms | 10.04ms | N/A | 9.60ms | 12.15ms | 181.47ms | 6.84ms |
| cellx2500 | 24.99ms | 123.84ms | 261.01ms | 25.59ms | N/A | 31.05ms | 36.94ms | 568.87ms | 35.70ms |
| cellx5000 | 52.28ms | 411.43ms | 599.66ms | 72.05ms | N/A | 61.53ms | 80.42ms | 1.30s | 76.22ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.02ms | 231.68ms | 2.03s | 438.83ms | 2.19s | 522.42ms | 361.94ms | 2.61s (partial) | 251.07ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.88ms | 184.24ms | 1.52s | 273.39ms | 1.47s (partial) | 279.54ms | 247.57ms | 2.35s (partial) | 196.84ms |
| 1000x12 - 4 sources - dynamic (large) | 306.14ms | 344.97ms | 1.90s | 3.69s | 2.54s (partial) | 3.79s | 468.73ms | 4.05s (partial) | 343.14ms |
| 1000x5 - 25 sources (wide dense) | 449.80ms | 490.91ms | 3.63s | 2.72s | 4.11s | 3.57s | 591.06ms | 5.07s (partial) | 479.58ms |
| 5x500 - 3 sources (deep) | 202.53ms | 198.12ms | 1.15s | 226.45ms | 1.39s | 227.98ms | 254.57ms | 2.03s (partial) | 205.43ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.61ms | 290.49ms | 1.72s | 460.51ms | 1.77s (partial) | 480.79ms | 379.75ms | 2.77s (partial) | 261.23ms |

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
