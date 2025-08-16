# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.96s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.51s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.38s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.96s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.53s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.00ms | 2.34s | 200.26ms | 1.48s | 213.88ms | 263.37ms | 168.32ms (fail) |
| broadPropagation | 317.95ms | 4.42s | 472.61ms | 84.50ms (fail) | 459.80ms | 468.24ms | 6.34ms (fail) |
| deepPropagation | 98.18ms | 1.57s | 184.33ms | 1.99s (fail) | 175.20ms | 143.31ms | 144.71ms (fail) |
| diamond | 225.72ms | 2.42s | 281.60ms | 2.67s (fail) | 283.01ms | 321.98ms | 206.54ms (fail) |
| mux | 340.46ms | 1.94s | 388.64ms | 564.81ms (fail) | 411.67ms | 397.24ms | 197.84ms (fail) |
| repeatedObservers | 50.45ms | 233.24ms | 40.67ms | 402.81ms (fail) | 46.28ms | 94.67ms | 52.87ms (fail) |
| triangle | 78.52ms | 766.17ms | 98.59ms | 955.28ms (fail) | 102.14ms | 103.08ms | 84.74ms (fail) |
| unstable | 152.33ms | 344.12ms | 74.50ms | 638.09ms (fail) | 76.23ms | 168.45ms | 344.63ms (fail) |
| molBench | 484.80ms | 583.07ms | 488.16ms | 12.08ms | 485.43ms | 501.17ms | 942μs |
| create_signals | 27.02ms | 70.89ms | 5.25ms | 23.57ms | 25.17ms | 77.09ms | 60.58ms |
| comp_0to1 | 9.46ms | 24.48ms | 17.47ms | 13.06ms | 11.35ms | 30.11ms | 55.33ms |
| comp_1to1 | 21.32ms | 17.34ms | 11.17ms | 22.65ms | 31.09ms | 47.40ms | 56.62ms |
| comp_2to1 | 15.87ms | 11.09ms | 13.11ms | 24.83ms | 8.36ms | 19.78ms | 37.66ms |
| comp_4to1 | 3.28ms | 14.57ms | 14.64ms | 7.68ms | 2.87ms | 12.13ms | 18.73ms |
| comp_1000to1 | 6μs | 15μs | 4μs | 3μs | 4μs | 15μs | 44μs |
| comp_1to2 | 15.52ms | 34.55ms | 26.48ms | 10.76ms | 19.87ms | 37.20ms | 50.39ms |
| comp_1to4 | 18.52ms | 24.35ms | 34.53ms | 18.70ms | 9.52ms | 20.77ms | 49.74ms |
| comp_1to8 | 9.21ms | 21.24ms | 5.20ms | 4.98ms | 8.04ms | 22.36ms | 46.84ms |
| comp_1to1000 | 5.29ms | 15.42ms | 6.58ms | 4.26ms | 4.34ms | 15.96ms | 41.70ms |
| update_1to1 | 5.61ms | 29.00ms | 8.31ms | 89.45ms | 10.20ms | 20.86ms | 6.01ms |
| update_2to1 | 2.74ms | 13.58ms | 4.39ms | 45.82ms | 4.54ms | 10.52ms | 3.13ms |
| update_4to1 | 1.36ms | 7.37ms | 2.06ms | 21.95ms | 2.59ms | 5.23ms | 1.55ms |
| update_1000to1 | 13μs | 81μs | 20μs | 194μs | 25μs | 50μs | 15μs |
| update_1to2 | 2.84ms | 13.55ms | 4.06ms | 45.16ms | 4.50ms | 10.53ms | 3.06ms |
| update_1to4 | 2.17ms | 7.03ms | 2.07ms | 23.92ms | 2.57ms | 5.25ms | 1.57ms |
| update_1to1000 | 39μs | 186μs | 974μs | 157μs | 42μs | 163μs | 413μs |
| cellx1000 | 7.29ms | 69.00ms | 10.00ms | N/A | 9.60ms | 10.16ms | 5.04ms |
| cellx2500 | 19.24ms | 260.26ms | 30.31ms | N/A | 31.21ms | 30.43ms | 22.29ms |
| cellx5000 | 43.16ms | 541.67ms | 77.04ms | N/A | 60.15ms | 68.44ms | 77.10ms |
| 10x5 - 2 sources - read 20.0% (simple) | 240.61ms | 2.14s | 518.82ms | 2.19s | 515.50ms | 327.05ms | 250.71ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 206.21ms | 1.64s | 295.66ms | 1.44s (partial) | 279.14ms | 227.36ms | 197.20ms |
| 1000x12 - 4 sources - dynamic (large) | 369.68ms | 1.93s | 3.73s | 2.56s (partial) | 3.96s | 436.95ms | 345.85ms |
| 1000x5 - 25 sources (wide dense) | 505.94ms | 3.57s | 2.74s | 4.02s | 3.42s | 811.12ms | 514.06ms |
| 5x500 - 3 sources (deep) | 222.07ms | 1.14s | 249.38ms | 1.34s | 222.25ms | 232.03ms | 206.46ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 300.52ms | 1.73s | 467.03ms | 1.81s (partial) | 475.76ms | 339.13ms | 263.58ms |

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
