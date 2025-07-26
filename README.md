# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.75s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.44s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.26s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.27s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.47s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.16s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.23ms | 2.32s | 201.13ms | 1.39s | 206.64ms | 296.70ms | 168.40ms (fail) |
| broadPropagation | 321.58ms | 4.39s | 447.29ms | 82.55ms (fail) | 449.13ms | 534.93ms | 6.43ms (fail) |
| deepPropagation | 96.21ms | 1.57s | 175.13ms | 1.87s (fail) | 174.93ms | 174.89ms | 143.17ms (fail) |
| diamond | 222.06ms | 2.45s | 281.56ms | 2.63s (fail) | 277.47ms | 360.96ms | 201.98ms (fail) |
| mux | 342.72ms | 1.85s | 397.93ms | 546.12ms (fail) | 410.55ms | 440.28ms | 194.38ms (fail) |
| repeatedObservers | 51.85ms | 233.01ms | 40.19ms | 387.66ms (fail) | 44.51ms | 86.69ms | 52.70ms (fail) |
| triangle | 77.75ms | 780.95ms | 99.18ms | 878.47ms (fail) | 101.86ms | 121.74ms | 79.90ms (fail) |
| unstable | 72.19ms | 349.84ms | 70.17ms | 605.32ms (fail) | 79.71ms | 102.19ms | 337.17ms (fail) |
| molBench | 484.30ms | 574.68ms | 489.25ms | 12.29ms | 485.43ms | 502.13ms | 935μs |
| create_signals | 26.35ms | 72.75ms | 5.16ms | 24.34ms | 24.64ms | 37.04ms | 64.42ms |
| comp_0to1 | 10.85ms | 25.33ms | 21.72ms | 13.78ms | 10.89ms | 37.32ms | 53.89ms |
| comp_1to1 | 17.47ms | 29.49ms | 12.18ms | 23.07ms | 17.83ms | 23.97ms | 63.80ms |
| comp_2to1 | 10.48ms | 11.94ms | 21.64ms | 23.41ms | 16.31ms | 26.54ms | 36.22ms |
| comp_4to1 | 8.14ms | 28.02ms | 18.42ms | 6.80ms | 8.17ms | 17.20ms | 16.24ms |
| comp_1000to1 | 30μs | 22μs | 7μs | 4μs | 5μs | 26μs | 53μs |
| comp_1to2 | 12.64ms | 37.49ms | 25.48ms | 10.66ms | 12.80ms | 30.28ms | 46.38ms |
| comp_1to4 | 17.43ms | 29.68ms | 26.16ms | 23.36ms | 12.48ms | 25.01ms | 44.67ms |
| comp_1to8 | 6.72ms | 20.10ms | 5.68ms | 5.28ms | 8.66ms | 19.98ms | 43.62ms |
| comp_1to1000 | 4.20ms | 15.70ms | 6.07ms | 4.26ms | 4.15ms | 15.59ms | 39.40ms |
| update_1to1 | 5.77ms | 26.00ms | 8.65ms | 84.92ms | 9.00ms | 15.58ms | 5.70ms |
| update_2to1 | 2.86ms | 11.57ms | 4.29ms | 45.08ms | 4.54ms | 7.70ms | 2.88ms |
| update_4to1 | 1.55ms | 5.67ms | 2.28ms | 20.69ms | 2.33ms | 3.87ms | 1.48ms |
| update_1000to1 | 22μs | 70μs | 31μs | 209μs | 22μs | 38μs | 15μs |
| update_1to2 | 2.92ms | 11.35ms | 4.77ms | 43.63ms | 4.48ms | 7.69ms | 2.87ms |
| update_1to4 | 1.52ms | 7.00ms | 2.22ms | 20.66ms | 2.25ms | 3.86ms | 1.48ms |
| update_1to1000 | 67μs | 172μs | 1.04ms | 141μs | 42μs | 177μs | 395μs |
| cellx1000 | 8.34ms | 76.51ms | 11.58ms | N/A | 9.42ms | 13.34ms | 5.56ms |
| cellx2500 | 19.12ms | 222.53ms | 25.68ms | N/A | 30.28ms | 31.55ms | 23.80ms |
| cellx5000 | 42.85ms | 578.49ms | 66.95ms | N/A | 57.17ms | 69.51ms | 62.81ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.90ms | 2.04s | 432.98ms | 2.21s | 518.03ms | 360.12ms | 251.31ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 185.84ms | 1.53s | 268.31ms | 1.44s (partial) | 286.83ms | 249.56ms | 198.96ms |
| 1000x12 - 4 sources - dynamic (large) | 335.59ms | 1.77s | 3.72s | 2.42s (partial) | 3.73s | 458.28ms | 326.21ms |
| 1000x5 - 25 sources (wide dense) | 488.43ms | 3.53s | 2.69s | 4.27s | 3.56s | 713.77ms | 494.84ms |
| 5x500 - 3 sources (deep) | 196.62ms | 1.17s | 224.36ms | 1.33s | 223.80ms | 269.36ms | 201.88ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.65ms | 1.71s | 452.43ms | 1.75s (partial) | 489.56ms | 386.19ms | 258.46ms |

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
