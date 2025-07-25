# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.48s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.26s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.26s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.13s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.70s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.50ms | 2.38s | 200.75ms | 1.41s | 206.52ms | 292.91ms | 148.88ms (fail) |
| broadPropagation | 319.66ms | 4.60s | 453.74ms | 82.68ms (fail) | 450.14ms | 519.34ms | 6.23ms (fail) |
| deepPropagation | 96.36ms | 1.59s | 173.87ms | 1.96s (fail) | 176.41ms | 172.09ms | 145.90ms (fail) |
| diamond | 220.97ms | 2.50s | 288.49ms | 2.65s (fail) | 284.59ms | 357.82ms | 203.36ms (fail) |
| mux | 340.84ms | 1.85s | 404.73ms | 584.79ms (fail) | 410.50ms | 445.36ms | 195.85ms (fail) |
| repeatedObservers | 51.96ms | 237.31ms | 39.35ms | 386.66ms (fail) | 44.59ms | 87.89ms | 53.40ms (fail) |
| triangle | 77.28ms | 781.31ms | 100.05ms | 932.17ms (fail) | 99.59ms | 116.16ms | 77.16ms (fail) |
| unstable | 72.23ms | 356.02ms | 70.04ms | 618.26ms (fail) | 78.71ms | 102.60ms | 337.40ms (fail) |
| molBench | 485.18ms | 577.91ms | 489.00ms | 10.89ms | 484.99ms | 495.54ms | 1.23ms |
| create_signals | 24.83ms | 50.23ms | 4.80ms | 24.21ms | 24.72ms | 49.88ms | 65.20ms |
| comp_0to1 | 12.04ms | 16.55ms | 17.44ms | 13.43ms | 10.77ms | 47.10ms | 54.06ms |
| comp_1to1 | 17.34ms | 44.47ms | 11.61ms | 22.56ms | 17.66ms | 40.60ms | 56.82ms |
| comp_2to1 | 10.26ms | 34.41ms | 18.22ms | 24.81ms | 16.10ms | 21.45ms | 37.29ms |
| comp_4to1 | 6.82ms | 25.42ms | 11.00ms | 3.23ms | 2.19ms | 13.26ms | 16.54ms |
| comp_1000to1 | 5μs | 16μs | 8μs | 3μs | 4μs | 21μs | 42μs |
| comp_1to2 | 14.71ms | 38.32ms | 21.93ms | 13.17ms | 15.68ms | 22.41ms | 45.68ms |
| comp_1to4 | 13.99ms | 23.78ms | 33.73ms | 25.03ms | 12.74ms | 33.34ms | 44.54ms |
| comp_1to8 | 6.51ms | 23.72ms | 5.32ms | 5.06ms | 6.64ms | 27.39ms | 43.47ms |
| comp_1to1000 | 7.55ms | 16.07ms | 6.00ms | 4.33ms | 4.19ms | 15.88ms | 39.25ms |
| update_1to1 | 6.24ms | 24.83ms | 8.67ms | 83.58ms | 8.90ms | 15.55ms | 5.68ms |
| update_2to1 | 3.96ms | 11.34ms | 4.25ms | 44.09ms | 4.73ms | 7.69ms | 2.84ms |
| update_4to1 | 1.49ms | 7.39ms | 2.67ms | 20.34ms | 2.77ms | 3.87ms | 1.47ms |
| update_1000to1 | 14μs | 71μs | 21μs | 213μs | 22μs | 38μs | 15μs |
| update_1to2 | 2.90ms | 10.83ms | 4.84ms | 42.53ms | 4.75ms | 7.67ms | 2.88ms |
| update_1to4 | 2.45ms | 5.75ms | 2.19ms | 20.35ms | 2.23ms | 4.01ms | 1.49ms |
| update_1to1000 | 44μs | 175μs | 960μs | 149μs | 41μs | 169μs | 379μs |
| cellx1000 | 7.31ms | 71.67ms | 9.78ms | N/A | 9.73ms | 11.94ms | 5.61ms |
| cellx2500 | 21.39ms | 249.26ms | 26.13ms | N/A | 31.94ms | 36.31ms | 28.65ms |
| cellx5000 | 52.62ms | 553.58ms | 71.57ms | N/A | 66.37ms | 89.88ms | 65.43ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.10ms | 2.06s | 436.23ms | 2.27s | 511.26ms | 355.73ms | 239.26ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 201.12ms | 1.56s | 273.94ms | 1.50s (partial) | 280.00ms | 247.87ms | 197.81ms |
| 1000x12 - 4 sources - dynamic (large) | 344.82ms | 1.96s | 3.69s | 2.53s (partial) | 3.76s | 465.98ms | 354.64ms |
| 1000x5 - 25 sources (wide dense) | 499.99ms | 3.57s | 2.69s | 4.17s | 3.51s | 726.21ms | 487.41ms |
| 5x500 - 3 sources (deep) | 202.48ms | 1.17s | 232.96ms | 1.42s | 224.87ms | 267.49ms | 203.26ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 294.91ms | 1.73s | 452.31ms | 1.82s (partial) | 491.08ms | 380.81ms | 255.57ms |

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
