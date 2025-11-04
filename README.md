# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.42s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.59s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.79s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.59s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.67s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 143.43ms | 2.35s | 200.13ms | 1.46s | 213.39ms | 241.30ms | 159.48ms (fail) |
| broadPropagation | 267.30ms | 4.30s | 463.35ms | 83.05ms (fail) | 460.79ms | 451.11ms | 6.45ms (fail) |
| deepPropagation | 82.63ms | 1.57s | 177.08ms | 1.97s (fail) | 178.49ms | 128.50ms | 145.20ms (fail) |
| diamond | 188.07ms | 2.41s | 282.69ms | 2.70s (fail) | 288.93ms | 309.47ms | 201.38ms (fail) |
| mux | 334.14ms | 1.87s | 396.97ms | 580.99ms (fail) | 409.10ms | 400.42ms | 193.67ms (fail) |
| repeatedObservers | 49.32ms | 231.66ms | 41.06ms | 410.60ms (fail) | 46.29ms | 87.35ms | 53.07ms (fail) |
| triangle | 69.70ms | 767.66ms | 101.34ms | 914.45ms (fail) | 105.81ms | 94.65ms | 89.87ms (fail) |
| unstable | 61.55ms | 345.72ms | 74.84ms | 630.38ms (fail) | 76.71ms | 100.80ms | 339.59ms (fail) |
| molBench | 486.71ms | 583.40ms | 489.43ms | 12.09ms | 486.22ms | 497.15ms | 907μs |
| create_signals | 25.91ms | 89.86ms | 26.51ms | 25.93ms | 27.81ms | 82.75ms | 63.60ms |
| comp_0to1 | 6.10ms | 17.06ms | 23.76ms | 15.99ms | 12.24ms | 25.61ms | 56.74ms |
| comp_1to1 | 13.67ms | 44.35ms | 7.43ms | 32.03ms | 28.25ms | 38.28ms | 58.22ms |
| comp_2to1 | 8.93ms | 24.66ms | 12.15ms | 35.56ms | 12.77ms | 26.94ms | 40.42ms |
| comp_4to1 | 6.67ms | 29.70ms | 17.35ms | 8.77ms | 1.99ms | 30.36ms | 17.72ms |
| comp_1000to1 | 4μs | 15μs | 9μs | 4μs | 6μs | 16μs | 44μs |
| comp_1to2 | 14.42ms | 38.25ms | 27.16ms | 13.91ms | 17.70ms | 25.83ms | 48.41ms |
| comp_1to4 | 20.08ms | 19.52ms | 30.40ms | 23.87ms | 14.72ms | 30.64ms | 46.96ms |
| comp_1to8 | 4.07ms | 23.43ms | 6.07ms | 12.02ms | 7.23ms | 26.09ms | 45.87ms |
| comp_1to1000 | 4.07ms | 14.99ms | 6.96ms | 6.74ms | 4.46ms | 13.70ms | 41.49ms |
| update_1to1 | 5.29ms | 26.34ms | 8.37ms | 86.70ms | 10.12ms | 14.68ms | 6.01ms |
| update_2to1 | 5.90ms | 13.46ms | 4.51ms | 42.26ms | 4.52ms | 7.17ms | 3.12ms |
| update_4to1 | 1.75ms | 7.47ms | 2.13ms | 19.78ms | 2.56ms | 3.62ms | 1.58ms |
| update_1000to1 | 13μs | 67μs | 20μs | 180μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.63ms | 14.48ms | 4.16ms | 40.96ms | 4.56ms | 7.34ms | 3.05ms |
| update_1to4 | 1.38ms | 6.78ms | 2.11ms | 19.85ms | 2.55ms | 3.64ms | 1.56ms |
| update_1to1000 | 51μs | 186μs | 1.10ms | 92μs | 44μs | 263μs | 412μs |
| cellx1000 | 6.52ms | 81.41ms | 10.37ms | N/A | 11.12ms | 14.37ms | 5.71ms |
| cellx2500 | 19.17ms | 287.42ms | 42.08ms | N/A | 47.17ms | 56.39ms | 33.22ms |
| cellx5000 | 72.54ms | 654.53ms | 106.06ms | N/A | 105.93ms | 173.58ms | 80.36ms |
| 10x5 - 2 sources - read 20.0% (simple) | 199.55ms | 2.04s | 518.28ms | 2.17s | 516.27ms | 316.20ms | 268.67ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.70ms | 1.53s | 290.22ms | 1.46s (partial) | 279.83ms | 224.66ms | 202.96ms |
| 1000x12 - 4 sources - dynamic (large) | 300.91ms | 1.96s | 3.77s | 2.49s (partial) | 3.77s | 460.78ms | 359.77ms |
| 1000x5 - 25 sources (wide dense) | 418.13ms | 3.50s | 2.72s | 4.21s | 3.29s | 818.79ms | 509.70ms |
| 5x500 - 3 sources (deep) | 179.78ms | 1.19s | 248.79ms | 1.41s | 224.06ms | 228.74ms | 232.93ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.08ms | 1.75s | 472.26ms | 1.79s (partial) | 479.72ms | 348.08ms | 268.26ms |

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
