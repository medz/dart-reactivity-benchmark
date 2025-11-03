# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.55s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.58s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.28s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.66s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.81s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 147.98ms | 2.36s | 201.21ms | 1.39s | 210.78ms | 237.69ms | 148.07ms (fail) |
| broadPropagation | 269.42ms | 4.39s | 457.64ms | 81.01ms (fail) | 457.05ms | 436.60ms | 6.83ms (fail) |
| deepPropagation | 80.83ms | 1.55s | 176.24ms | 1.96s (fail) | 177.50ms | 131.66ms | 142.96ms (fail) |
| diamond | 188.37ms | 2.40s | 279.21ms | 2.55s (fail) | 289.22ms | 314.97ms | 187.04ms (fail) |
| mux | 333.86ms | 1.85s | 400.73ms | 558.70ms (fail) | 399.78ms | 404.75ms | 196.83ms (fail) |
| repeatedObservers | 49.23ms | 231.77ms | 40.27ms | 407.20ms (fail) | 46.82ms | 85.42ms | 52.63ms (fail) |
| triangle | 67.27ms | 767.39ms | 104.94ms | 940.41ms (fail) | 102.34ms | 94.44ms | 80.63ms (fail) |
| unstable | 61.42ms | 339.21ms | 74.06ms | 618.26ms (fail) | 80.16ms | 100.06ms | 347.86ms (fail) |
| molBench | 485.35ms | 581.86ms | 488.69ms | 10.81ms | 486.87ms | 493.26ms | 1.01ms |
| create_signals | 31.62ms | 71.45ms | 5.20ms | 23.15ms | 26.85ms | 78.68ms | 71.02ms |
| comp_0to1 | 16.51ms | 28.56ms | 17.71ms | 14.19ms | 12.10ms | 25.14ms | 63.79ms |
| comp_1to1 | 12.86ms | 48.63ms | 12.64ms | 21.52ms | 28.03ms | 36.52ms | 64.05ms |
| comp_2to1 | 3.52ms | 25.74ms | 17.80ms | 25.79ms | 8.60ms | 30.83ms | 39.13ms |
| comp_4to1 | 5.75ms | 32.05ms | 8.61ms | 4.36ms | 2.14ms | 26.94ms | 16.75ms |
| comp_1000to1 | 3μs | 16μs | 5μs | 3μs | 5μs | 15μs | 44μs |
| comp_1to2 | 13.81ms | 36.71ms | 15.51ms | 12.42ms | 24.33ms | 24.39ms | 48.54ms |
| comp_1to4 | 24.53ms | 23.76ms | 23.45ms | 24.60ms | 11.49ms | 33.27ms | 46.22ms |
| comp_1to8 | 6.19ms | 25.37ms | 7.13ms | 5.24ms | 7.95ms | 23.41ms | 45.79ms |
| comp_1to1000 | 3.67ms | 15.66ms | 7.03ms | 5.74ms | 6.09ms | 14.09ms | 41.42ms |
| update_1to1 | 5.60ms | 27.37ms | 8.33ms | 80.97ms | 10.33ms | 14.53ms | 6.01ms |
| update_2to1 | 5.86ms | 13.87ms | 4.37ms | 40.48ms | 4.52ms | 7.39ms | 3.10ms |
| update_4to1 | 1.36ms | 7.44ms | 2.12ms | 19.71ms | 2.60ms | 3.59ms | 1.56ms |
| update_1000to1 | 13μs | 68μs | 21μs | 181μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.65ms | 13.44ms | 4.09ms | 46.41ms | 4.52ms | 7.29ms | 3.05ms |
| update_1to4 | 1.71ms | 6.74ms | 2.11ms | 19.71ms | 2.61ms | 3.59ms | 1.58ms |
| update_1to1000 | 48μs | 171μs | 743μs | 118μs | 61μs | 142μs | 410μs |
| cellx1000 | 6.72ms | 86.12ms | 10.52ms | N/A | 10.53ms | 11.66ms | 6.18ms |
| cellx2500 | 21.00ms | 308.23ms | 32.56ms | N/A | 42.35ms | 46.85ms | 29.95ms |
| cellx5000 | 70.29ms | 651.18ms | 100.98ms | N/A | 91.27ms | 129.05ms | 61.59ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.33ms | 2.01s | 518.85ms | 2.20s | 512.22ms | 322.25ms | 256.55ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 162.18ms | 1.53s | 289.95ms | 1.50s (partial) | 279.44ms | 216.84ms | 203.23ms |
| 1000x12 - 4 sources - dynamic (large) | 287.19ms | 1.84s | 3.79s | 2.66s (partial) | 3.75s | 458.45ms | 355.83ms |
| 1000x5 - 25 sources (wide dense) | 560.38ms | 3.49s | 2.76s | 4.31s | 3.48s | 827.07ms | 513.09ms |
| 5x500 - 3 sources (deep) | 179.66ms | 1.16s | 249.05ms | 1.48s | 226.36ms | 232.28ms | 211.02ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 249.32ms | 1.74s | 471.53ms | 1.80s (partial) | 482.23ms | 342.84ms | 265.38ms |

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
