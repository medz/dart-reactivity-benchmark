# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.51s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.08s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.58s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.36s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.92ms | 2.40s | 200.17ms | 1.57s | 215.13ms | 235.52ms | 171.15ms (fail) |
| broadPropagation | 268.09ms | 4.35s | 464.35ms | 84.97ms (fail) | 461.07ms | 456.66ms | 6.48ms (fail) |
| deepPropagation | 80.90ms | 1.53s | 182.66ms | 2.04s (fail) | 179.90ms | 131.98ms | 142.43ms (fail) |
| diamond | 188.97ms | 2.42s | 285.20ms | 2.75s (fail) | 285.22ms | 306.27ms | 202.02ms (fail) |
| mux | 330.04ms | 1.86s | 388.12ms | 576.66ms (fail) | 410.25ms | 406.98ms | 194.04ms (fail) |
| repeatedObservers | 49.05ms | 244.49ms | 40.42ms | 386.38ms (fail) | 46.25ms | 87.20ms | 53.27ms (fail) |
| triangle | 67.26ms | 767.36ms | 100.35ms | 1.00s (fail) | 101.92ms | 94.72ms | 77.95ms (fail) |
| unstable | 61.10ms | 350.03ms | 74.19ms | 627.17ms (fail) | 76.02ms | 101.55ms | 339.99ms (fail) |
| molBench | 485.25ms | 584.14ms | 481.07ms | 10.85ms | 491.96ms | 497.38ms | 1.13ms |
| create_signals | 22.09ms | 51.35ms | 4.63ms | 23.34ms | 25.73ms | 76.93ms | 61.94ms |
| comp_0to1 | 16.18ms | 16.73ms | 17.64ms | 14.09ms | 11.67ms | 24.84ms | 56.51ms |
| comp_1to1 | 17.12ms | 40.60ms | 12.19ms | 23.70ms | 27.87ms | 36.52ms | 57.83ms |
| comp_2to1 | 2.34ms | 32.69ms | 18.24ms | 24.84ms | 8.81ms | 27.84ms | 39.12ms |
| comp_4to1 | 1.75ms | 24.10ms | 8.30ms | 7.14ms | 1.92ms | 16.36ms | 17.36ms |
| comp_1000to1 | 6μs | 15μs | 4μs | 9μs | 5μs | 17μs | 46μs |
| comp_1to2 | 13.36ms | 34.49ms | 15.16ms | 11.01ms | 16.29ms | 33.97ms | 49.01ms |
| comp_1to4 | 24.21ms | 25.56ms | 20.54ms | 23.60ms | 11.67ms | 34.16ms | 46.90ms |
| comp_1to8 | 5.10ms | 23.74ms | 7.02ms | 5.31ms | 7.92ms | 23.28ms | 46.06ms |
| comp_1to1000 | 3.58ms | 15.16ms | 5.05ms | 4.42ms | 4.53ms | 14.09ms | 41.87ms |
| update_1to1 | 5.51ms | 26.10ms | 8.28ms | 83.16ms | 11.10ms | 14.51ms | 6.01ms |
| update_2to1 | 5.11ms | 12.93ms | 4.39ms | 43.77ms | 5.16ms | 7.18ms | 3.10ms |
| update_4to1 | 2.14ms | 7.50ms | 2.12ms | 20.49ms | 2.84ms | 3.61ms | 1.54ms |
| update_1000to1 | 24μs | 68μs | 20μs | 178μs | 27μs | 36μs | 15μs |
| update_1to2 | 4.26ms | 14.45ms | 4.09ms | 43.16ms | 5.07ms | 7.43ms | 3.02ms |
| update_1to4 | 2.16ms | 6.87ms | 2.11ms | 20.59ms | 4.29ms | 3.64ms | 1.53ms |
| update_1to1000 | 48μs | 176μs | 68μs | 98μs | 44μs | 247μs | 413μs |
| cellx1000 | 7.82ms | 70.82ms | 9.63ms | N/A | 9.79ms | 9.23ms | 5.22ms |
| cellx2500 | 20.39ms | 255.61ms | 25.85ms | N/A | 32.98ms | 28.07ms | 23.27ms |
| cellx5000 | 59.07ms | 573.81ms | 64.09ms | N/A | 66.41ms | 84.07ms | 68.59ms |
| 10x5 - 2 sources - read 20.0% (simple) | 200.29ms | 2.04s | 450.54ms | 2.37s | 510.88ms | 314.24ms | 257.22ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.07ms | 1.54s | 273.95ms | 1.54s (partial) | 283.52ms | 218.60ms | 203.76ms |
| 1000x12 - 4 sources - dynamic (large) | 275.77ms | 1.95s | 3.73s | 2.54s (partial) | 3.78s | 441.94ms | 347.73ms |
| 1000x5 - 25 sources (wide dense) | 558.59ms | 3.51s | 2.74s | 4.26s | 3.28s | 811.38ms | 515.62ms |
| 5x500 - 3 sources (deep) | 183.73ms | 1.12s | 231.96ms | 1.44s | 225.83ms | 234.28ms | 210.44ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.46ms | 1.68s | 457.93ms | 1.83s (partial) | 477.29ms | 335.34ms | 269.01ms |

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
