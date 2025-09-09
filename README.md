# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.23s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.35s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.94s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.57s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.71s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.59ms | 2.41s | 200.00ms | 1.46s | 211.83ms | 260.11ms | 160.02ms (fail) |
| broadPropagation | 315.95ms | 4.32s | 456.26ms | 82.91ms (fail) | 453.00ms | 457.66ms | 6.40ms (fail) |
| deepPropagation | 99.00ms | 1.53s | 180.18ms | 2.05s (fail) | 177.09ms | 141.69ms | 141.36ms (fail) |
| diamond | 222.59ms | 2.43s | 279.07ms | 2.88s (fail) | 284.63ms | 315.64ms | 197.00ms (fail) |
| mux | 347.46ms | 1.84s | 394.81ms | 569.63ms (fail) | 411.57ms | 402.10ms | 194.79ms (fail) |
| repeatedObservers | 50.26ms | 244.70ms | 40.25ms | 405.49ms (fail) | 46.49ms | 91.66ms | 53.43ms (fail) |
| triangle | 78.31ms | 780.24ms | 99.72ms | 875.01ms (fail) | 98.84ms | 99.85ms | 84.03ms (fail) |
| unstable | 142.32ms | 353.07ms | 74.43ms | 631.75ms (fail) | 75.35ms | 166.84ms | 376.29ms (fail) |
| molBench | 490.25ms | 585.87ms | 476.70ms | 11.88ms | 487.31ms | 504.63ms | 979μs |
| create_signals | 28.68ms | 83.12ms | 5.42ms | 26.90ms | 29.75ms | 72.13ms | 62.87ms |
| comp_0to1 | 10.16ms | 25.31ms | 19.24ms | 14.75ms | 12.83ms | 27.20ms | 57.44ms |
| comp_1to1 | 22.83ms | 57.80ms | 10.98ms | 26.13ms | 29.11ms | 52.89ms | 61.21ms |
| comp_2to1 | 16.54ms | 25.78ms | 13.44ms | 30.40ms | 14.36ms | 20.16ms | 39.45ms |
| comp_4to1 | 3.70ms | 24.77ms | 10.67ms | 7.89ms | 5.64ms | 4.58ms | 17.69ms |
| comp_1000to1 | 18μs | 22μs | 9μs | 7μs | 7μs | 20μs | 44μs |
| comp_1to2 | 16.98ms | 41.73ms | 23.89ms | 13.52ms | 19.76ms | 36.81ms | 53.87ms |
| comp_1to4 | 15.13ms | 24.39ms | 28.93ms | 22.97ms | 14.60ms | 22.70ms | 47.46ms |
| comp_1to8 | 6.14ms | 24.77ms | 5.90ms | 7.10ms | 6.71ms | 22.42ms | 46.27ms |
| comp_1to1000 | 11.52ms | 15.59ms | 6.90ms | 6.28ms | 4.60ms | 15.48ms | 42.08ms |
| update_1to1 | 5.48ms | 26.81ms | 8.29ms | 88.42ms | 10.06ms | 16.97ms | 6.07ms |
| update_2to1 | 2.85ms | 11.61ms | 4.39ms | 42.85ms | 4.50ms | 8.42ms | 3.10ms |
| update_4to1 | 1.45ms | 6.61ms | 2.77ms | 20.94ms | 2.56ms | 4.19ms | 1.56ms |
| update_1000to1 | 24μs | 68μs | 21μs | 183μs | 26μs | 42μs | 15μs |
| update_1to2 | 2.77ms | 13.06ms | 4.08ms | 42.58ms | 4.47ms | 8.52ms | 3.04ms |
| update_1to4 | 1.46ms | 5.52ms | 2.11ms | 21.21ms | 2.52ms | 4.18ms | 1.57ms |
| update_1to1000 | 52μs | 176μs | 68μs | 109μs | 46μs | 155μs | 431μs |
| cellx1000 | 7.14ms | 83.63ms | 9.75ms | N/A | 9.87ms | 9.86ms | 5.20ms |
| cellx2500 | 19.17ms | 282.44ms | 26.46ms | N/A | 32.05ms | 29.60ms | 23.73ms |
| cellx5000 | 49.67ms | 657.69ms | 70.85ms | N/A | 71.23ms | 73.94ms | 67.00ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.13ms | 2.07s | 448.59ms | 2.18s | 515.07ms | 324.07ms | 255.74ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.79ms | 1.53s | 273.83ms | 1.45s (partial) | 286.06ms | 223.06ms | 203.09ms |
| 1000x12 - 4 sources - dynamic (large) | 352.07ms | 1.99s | 3.72s | 2.55s (partial) | 3.75s | 443.00ms | 365.65ms |
| 1000x5 - 25 sources (wide dense) | 498.25ms | 3.57s | 2.75s | 4.05s | 3.39s | 803.08ms | 512.65ms |
| 5x500 - 3 sources (deep) | 200.12ms | 1.14s | 233.18ms | 1.37s | 224.16ms | 228.56ms | 210.03ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 284.19ms | 1.73s | 462.34ms | 1.76s (partial) | 483.21ms | 336.24ms | 263.58ms |

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
