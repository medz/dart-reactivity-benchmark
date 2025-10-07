# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.64s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.33s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.66s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.44s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.18s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.64s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.94s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.44ms | 2.36s | 198.76ms | 1.44s | 211.97ms | 243.70ms | 176.63ms (fail) |
| broadPropagation | 268.19ms | 4.35s | 469.72ms | 83.68ms (fail) | 456.19ms | 444.03ms | 6.28ms (fail) |
| deepPropagation | 80.55ms | 1.57s | 178.38ms | 1.98s (fail) | 178.93ms | 131.84ms | 140.60ms (fail) |
| diamond | 180.50ms | 2.43s | 283.01ms | 2.70s (fail) | 285.77ms | 308.30ms | 186.14ms (fail) |
| mux | 334.09ms | 1.89s | 397.75ms | 575.08ms (fail) | 418.58ms | 403.97ms | 196.68ms (fail) |
| repeatedObservers | 49.33ms | 239.37ms | 40.09ms | 398.18ms (fail) | 46.35ms | 87.40ms | 54.06ms (fail) |
| triangle | 87.85ms | 776.13ms | 99.55ms | 935.17ms (fail) | 105.04ms | 93.43ms | 78.66ms (fail) |
| unstable | 61.72ms | 350.40ms | 75.21ms | 636.61ms (fail) | 75.27ms | 101.58ms | 340.07ms (fail) |
| molBench | 485.83ms | 584.90ms | 489.53ms | 12.06ms | 487.71ms | 496.04ms | 1.22ms |
| create_signals | 28.44ms | 66.61ms | 5.63ms | 25.82ms | 29.05ms | 57.38ms | 70.57ms |
| comp_0to1 | 8.26ms | 20.21ms | 24.50ms | 15.04ms | 12.99ms | 24.28ms | 60.10ms |
| comp_1to1 | 14.24ms | 43.90ms | 12.78ms | 26.57ms | 24.17ms | 44.23ms | 62.41ms |
| comp_2to1 | 2.72ms | 39.23ms | 13.36ms | 28.82ms | 12.45ms | 39.50ms | 42.12ms |
| comp_4to1 | 4.80ms | 21.95ms | 14.52ms | 3.30ms | 4.99ms | 38.69ms | 18.52ms |
| comp_1000to1 | 4μs | 20μs | 5μs | 4μs | 6μs | 20μs | 47μs |
| comp_1to2 | 12.36ms | 42.53ms | 19.54ms | 12.12ms | 13.62ms | 37.32ms | 52.47ms |
| comp_1to4 | 19.14ms | 21.52ms | 34.43ms | 27.98ms | 14.36ms | 35.16ms | 53.38ms |
| comp_1to8 | 11.53ms | 26.07ms | 10.25ms | 5.58ms | 9.46ms | 24.62ms | 49.70ms |
| comp_1to1000 | 8.07ms | 15.69ms | 8.05ms | 4.69ms | 4.83ms | 14.30ms | 45.15ms |
| update_1to1 | 5.72ms | 26.08ms | 8.41ms | 83.30ms | 9.95ms | 14.66ms | 6.03ms |
| update_2to1 | 5.41ms | 12.44ms | 4.37ms | 43.30ms | 4.53ms | 7.23ms | 3.12ms |
| update_4to1 | 1.36ms | 6.82ms | 2.11ms | 20.38ms | 2.51ms | 3.67ms | 1.53ms |
| update_1000to1 | 13μs | 70μs | 20μs | 177μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.69ms | 12.87ms | 4.24ms | 43.02ms | 4.51ms | 7.42ms | 3.02ms |
| update_1to4 | 1.84ms | 6.26ms | 2.08ms | 20.81ms | 2.48ms | 3.77ms | 1.53ms |
| update_1to1000 | 41μs | 180μs | 886μs | 123μs | 45μs | 269μs | 451μs |
| cellx1000 | 7.51ms | 111.40ms | 13.07ms | N/A | 12.82ms | 13.64ms | 9.02ms |
| cellx2500 | 29.25ms | 332.02ms | 46.13ms | N/A | 53.48ms | 53.83ms | 55.86ms |
| cellx5000 | 115.93ms | 715.57ms | 152.49ms | N/A | 131.02ms | 176.07ms | 115.14ms |
| 10x5 - 2 sources - read 20.0% (simple) | 201.59ms | 2.03s | 449.13ms | 2.20s | 516.48ms | 311.82ms | 255.06ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.80ms | 1.53s | 274.24ms | 1.52s (partial) | 286.91ms | 219.12ms | 195.96ms |
| 1000x12 - 4 sources - dynamic (large) | 305.71ms | 1.94s | 3.74s | 2.52s (partial) | 3.79s | 463.22ms | 365.75ms |
| 1000x5 - 25 sources (wide dense) | 569.18ms | 3.55s | 2.88s | 4.86s | 3.52s | 844.99ms | 517.75ms |
| 5x500 - 3 sources (deep) | 180.98ms | 1.26s | 238.57ms | 1.82s | 226.62ms | 234.72ms | 209.65ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 255.98ms | 1.79s | 463.49ms | 1.90s (partial) | 485.29ms | 345.60ms | 265.73ms |

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
