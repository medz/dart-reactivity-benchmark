# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.62s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.50s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.52s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.18s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.56s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.51s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.49ms | 2.34s | 201.37ms | 1.43s | 213.49ms | 270.60ms | 170.98ms (fail) |
| broadPropagation | 269.14ms | 4.41s | 459.07ms | 81.10ms (fail) | 463.17ms | 436.54ms | 7.14ms (fail) |
| deepPropagation | 80.40ms | 1.54s | 181.35ms | 1.92s (fail) | 176.49ms | 131.49ms | 145.93ms (fail) |
| diamond | 183.48ms | 2.42s | 281.30ms | 2.56s (fail) | 286.87ms | 321.16ms | 207.68ms (fail) |
| mux | 330.54ms | 1.84s | 400.90ms | 575.90ms (fail) | 416.09ms | 398.26ms | 197.14ms (fail) |
| repeatedObservers | 49.17ms | 235.12ms | 41.18ms | 383.57ms (fail) | 47.56ms | 87.43ms | 52.88ms (fail) |
| triangle | 67.61ms | 780.28ms | 101.21ms | 865.70ms (fail) | 101.00ms | 94.77ms | 83.68ms (fail) |
| unstable | 62.49ms | 345.99ms | 75.22ms | 618.38ms (fail) | 77.18ms | 101.28ms | 343.86ms (fail) |
| molBench | 484.07ms | 585.72ms | 489.52ms | 10.90ms | 484.53ms | 498.14ms | 1.41ms |
| create_signals | 34.04ms | 55.51ms | 4.78ms | 25.76ms | 27.93ms | 55.46ms | 65.94ms |
| comp_0to1 | 22.57ms | 15.74ms | 18.82ms | 15.49ms | 12.76ms | 24.34ms | 56.74ms |
| comp_1to1 | 13.50ms | 40.52ms | 13.16ms | 27.31ms | 31.75ms | 43.61ms | 63.48ms |
| comp_2to1 | 3.56ms | 37.78ms | 18.42ms | 27.98ms | 8.99ms | 35.61ms | 39.75ms |
| comp_4to1 | 4.71ms | 27.27ms | 14.43ms | 1.79ms | 6.73ms | 25.51ms | 17.23ms |
| comp_1000to1 | 4μs | 17μs | 4μs | 4μs | 8μs | 18μs | 45μs |
| comp_1to2 | 15.06ms | 38.52ms | 31.10ms | 13.99ms | 21.01ms | 26.47ms | 48.55ms |
| comp_1to4 | 26.21ms | 17.51ms | 24.41ms | 28.52ms | 19.63ms | 42.18ms | 47.05ms |
| comp_1to8 | 11.70ms | 21.76ms | 13.51ms | 9.27ms | 8.72ms | 24.20ms | 46.27ms |
| comp_1to1000 | 5.18ms | 15.41ms | 7.93ms | 5.06ms | 4.72ms | 14.83ms | 41.35ms |
| update_1to1 | 5.73ms | 25.71ms | 8.94ms | 79.92ms | 10.21ms | 14.73ms | 6.05ms |
| update_2to1 | 4.87ms | 11.78ms | 5.06ms | 40.86ms | 4.55ms | 7.24ms | 3.11ms |
| update_4to1 | 1.35ms | 7.43ms | 2.32ms | 19.98ms | 2.63ms | 3.61ms | 1.57ms |
| update_1000to1 | 13μs | 69μs | 32μs | 175μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.60ms | 13.45ms | 4.43ms | 40.58ms | 4.51ms | 7.36ms | 3.07ms |
| update_1to4 | 1.34ms | 6.52ms | 2.26ms | 19.69ms | 2.55ms | 3.67ms | 1.59ms |
| update_1to1000 | 40μs | 171μs | 74μs | 172μs | 45μs | 148μs | 439μs |
| cellx1000 | 7.00ms | 107.98ms | 12.65ms | N/A | 12.76ms | 14.61ms | 5.74ms |
| cellx2500 | 25.70ms | 315.02ms | 56.52ms | N/A | 61.22ms | 59.21ms | 32.81ms |
| cellx5000 | 96.27ms | 691.51ms | 151.75ms | N/A | 151.26ms | 179.03ms | 83.41ms |
| 10x5 - 2 sources - read 20.0% (simple) | 204.35ms | 2.05s | 445.28ms | 2.20s | 508.01ms | 317.23ms | 255.12ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.40ms | 1.56s | 272.49ms | 1.51s (partial) | 289.96ms | 220.21ms | 197.68ms |
| 1000x12 - 4 sources - dynamic (large) | 298.24ms | 1.97s | 3.72s | 2.59s (partial) | 3.82s | 482.75ms | 356.89ms |
| 1000x5 - 25 sources (wide dense) | 570.76ms | 3.60s | 2.74s | 4.49s | 3.52s | 828.69ms | 511.70ms |
| 5x500 - 3 sources (deep) | 180.89ms | 1.29s | 235.21ms | 2.03s | 225.93ms | 235.12ms | 206.14ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.74ms | 1.77s | 462.41ms | 1.89s (partial) | 495.25ms | 354.99ms | 259.37ms |

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
