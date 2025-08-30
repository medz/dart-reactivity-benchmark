# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.02s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.44s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.39s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.67s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.57s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.66s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 164.69ms | 2.33s | 200.08ms | 1.40s | 212.51ms | 257.88ms | 164.24ms (fail) |
| broadPropagation | 317.77ms | 4.41s | 466.34ms | 82.46ms (fail) | 468.99ms | 452.29ms | 6.34ms (fail) |
| deepPropagation | 99.13ms | 1.55s | 178.09ms | 1.93s (fail) | 173.94ms | 142.80ms | 143.52ms (fail) |
| diamond | 229.16ms | 2.40s | 281.30ms | 2.64s (fail) | 286.07ms | 312.71ms | 194.53ms (fail) |
| mux | 345.63ms | 1.81s | 389.61ms | 564.94ms (fail) | 407.95ms | 401.01ms | 198.39ms (fail) |
| repeatedObservers | 50.48ms | 231.17ms | 40.39ms | 386.66ms (fail) | 46.35ms | 90.91ms | 52.80ms (fail) |
| triangle | 86.59ms | 769.10ms | 98.85ms | 837.42ms (fail) | 103.64ms | 96.05ms | 79.59ms (fail) |
| unstable | 141.33ms | 341.05ms | 90.37ms | 674.54ms (fail) | 76.15ms | 167.44ms | 339.68ms (fail) |
| molBench | 488.09ms | 581.99ms | 487.24ms | 12.58ms | 487.19ms | 501.81ms | 971μs |
| create_signals | 28.36ms | 79.50ms | 12.37ms | 23.63ms | 27.35ms | 54.31ms | 68.11ms |
| comp_0to1 | 12.44ms | 20.40ms | 24.73ms | 15.69ms | 12.49ms | 25.75ms | 59.51ms |
| comp_1to1 | 21.82ms | 40.50ms | 7.23ms | 24.87ms | 27.60ms | 45.05ms | 60.82ms |
| comp_2to1 | 21.38ms | 23.46ms | 10.31ms | 38.36ms | 8.57ms | 20.85ms | 39.59ms |
| comp_4to1 | 3.90ms | 28.16ms | 9.18ms | 13.03ms | 8.05ms | 12.15ms | 17.25ms |
| comp_1000to1 | 5μs | 16μs | 4μs | 6μs | 5μs | 15μs | 44μs |
| comp_1to2 | 10.12ms | 41.27ms | 27.81ms | 14.43ms | 21.88ms | 35.75ms | 48.43ms |
| comp_1to4 | 24.26ms | 24.75ms | 27.57ms | 25.84ms | 15.09ms | 22.20ms | 47.38ms |
| comp_1to8 | 10.72ms | 26.66ms | 11.31ms | 10.80ms | 6.86ms | 22.93ms | 46.43ms |
| comp_1to1000 | 5.49ms | 15.62ms | 4.84ms | 6.58ms | 4.49ms | 15.86ms | 41.12ms |
| update_1to1 | 5.47ms | 26.38ms | 8.70ms | 92.35ms | 10.92ms | 18.41ms | 6.01ms |
| update_2to1 | 2.91ms | 12.55ms | 4.39ms | 41.97ms | 5.16ms | 9.17ms | 3.08ms |
| update_4to1 | 1.43ms | 7.65ms | 2.10ms | 20.64ms | 2.74ms | 4.58ms | 1.53ms |
| update_1000to1 | 14μs | 86μs | 20μs | 216μs | 27μs | 45μs | 15μs |
| update_1to2 | 2.79ms | 13.29ms | 4.13ms | 43.94ms | 5.15ms | 9.32ms | 3.02ms |
| update_1to4 | 1.40ms | 6.15ms | 2.12ms | 20.91ms | 2.73ms | 4.60ms | 1.52ms |
| update_1to1000 | 52μs | 175μs | 58μs | 151μs | 69μs | 163μs | 407μs |
| cellx1000 | 8.31ms | 90.50ms | 12.67ms | N/A | 10.31ms | 11.95ms | 6.01ms |
| cellx2500 | 29.60ms | 297.27ms | 36.12ms | N/A | 41.28ms | 39.81ms | 35.10ms |
| cellx5000 | 107.44ms | 633.40ms | 92.31ms | N/A | 94.12ms | 129.01ms | 101.01ms |
| 10x5 - 2 sources - read 20.0% (simple) | 239.10ms | 2.03s | 442.81ms | 2.22s | 511.49ms | 328.57ms | 252.40ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.29ms | 1.53s | 275.61ms | 1.48s (partial) | 281.13ms | 222.23ms | 197.44ms |
| 1000x12 - 4 sources - dynamic (large) | 367.30ms | 1.92s | 3.72s | 2.51s (partial) | 3.77s | 458.62ms | 367.04ms |
| 1000x5 - 25 sources (wide dense) | 501.18ms | 3.48s | 2.77s | 4.21s | 3.56s | 808.22ms | 512.50ms |
| 5x500 - 3 sources (deep) | 205.22ms | 1.15s | 236.26ms | 1.51s | 225.48ms | 229.70ms | 211.99ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 293.63ms | 1.74s | 454.36ms | 1.80s (partial) | 475.01ms | 340.02ms | 260.58ms |

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
