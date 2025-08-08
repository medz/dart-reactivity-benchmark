# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.39s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.32s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.14s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.29s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 162.51ms | 2.39s | 201.36ms | 1.38s | 204.84ms | 267.12ms | 150.86ms (fail) |
| broadPropagation | 322.16ms | 4.52s | 453.48ms | 81.74ms (fail) | 456.80ms | 468.00ms | 5.94ms (fail) |
| deepPropagation | 95.45ms | 1.57s | 175.68ms | 1.89s (fail) | 173.17ms | 144.22ms | 146.52ms (fail) |
| diamond | 215.38ms | 2.48s | 278.70ms | 2.52s (fail) | 281.27ms | 317.43ms | 196.31ms (fail) |
| mux | 340.94ms | 1.85s | 402.76ms | 555.25ms (fail) | 413.59ms | 409.31ms | 197.09ms (fail) |
| repeatedObservers | 50.51ms | 242.02ms | 40.37ms | 361.94ms (fail) | 45.07ms | 88.27ms | 52.83ms (fail) |
| triangle | 74.81ms | 788.47ms | 99.60ms | 927.71ms (fail) | 100.72ms | 98.22ms | 81.47ms (fail) |
| unstable | 135.85ms | 359.97ms | 70.06ms | 589.26ms (fail) | 79.25ms | 181.32ms | 336.53ms (fail) |
| molBench | 493.86ms | 574.35ms | 489.90ms | 11.48ms | 487.25ms | 489.65ms | 950μs |
| create_signals | 27.69ms | 85.37ms | 5.20ms | 25.61ms | 29.48ms | 79.25ms | 67.86ms |
| comp_0to1 | 10.04ms | 22.65ms | 17.34ms | 18.14ms | 13.33ms | 26.95ms | 57.25ms |
| comp_1to1 | 21.66ms | 42.64ms | 14.41ms | 22.77ms | 29.89ms | 31.65ms | 55.77ms |
| comp_2to1 | 16.25ms | 35.83ms | 20.25ms | 32.06ms | 9.35ms | 11.88ms | 37.12ms |
| comp_4to1 | 3.68ms | 24.24ms | 13.82ms | 10.75ms | 1.98ms | 4.22ms | 17.49ms |
| comp_1000to1 | 3μs | 18μs | 4μs | 3μs | 5μs | 14μs | 42μs |
| comp_1to2 | 14.00ms | 40.28ms | 17.63ms | 20.29ms | 21.48ms | 37.60ms | 44.90ms |
| comp_1to4 | 16.04ms | 25.52ms | 25.43ms | 23.78ms | 10.81ms | 22.12ms | 43.30ms |
| comp_1to8 | 9.13ms | 27.26ms | 5.85ms | 9.00ms | 6.63ms | 19.61ms | 42.96ms |
| comp_1to1000 | 5.58ms | 16.63ms | 6.18ms | 9.30ms | 4.46ms | 14.31ms | 38.33ms |
| update_1to1 | 5.64ms | 24.60ms | 8.72ms | 97.54ms | 9.01ms | 16.32ms | 5.69ms |
| update_2to1 | 3.10ms | 10.94ms | 4.26ms | 43.86ms | 4.51ms | 8.13ms | 2.89ms |
| update_4to1 | 1.42ms | 7.46ms | 2.21ms | 20.20ms | 2.27ms | 4.09ms | 1.46ms |
| update_1000to1 | 13μs | 71μs | 36μs | 193μs | 22μs | 40μs | 14μs |
| update_1to2 | 2.75ms | 11.19ms | 4.62ms | 41.99ms | 4.52ms | 8.31ms | 2.87ms |
| update_1to4 | 2.18ms | 6.69ms | 2.24ms | 20.63ms | 2.26ms | 4.05ms | 1.45ms |
| update_1to1000 | 31μs | 173μs | 1.11ms | 103μs | 42μs | 145μs | 375μs |
| cellx1000 | 7.42ms | 88.32ms | 11.54ms | N/A | 10.09ms | 12.78ms | 6.29ms |
| cellx2500 | 22.96ms | 298.97ms | 42.67ms | N/A | 40.83ms | 57.46ms | 30.74ms |
| cellx5000 | 59.44ms | 654.78ms | 100.52ms | N/A | 113.47ms | 154.87ms | 84.79ms |
| 10x5 - 2 sources - read 20.0% (simple) | 239.28ms | 2.07s | 445.31ms | 2.14s | 516.71ms | 325.06ms | 246.54ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 186.44ms | 1.52s | 277.28ms | 1.49s (partial) | 282.36ms | 221.03ms | 200.78ms |
| 1000x12 - 4 sources - dynamic (large) | 354.03ms | 1.92s | 3.73s | 2.49s (partial) | 4.00s | 452.38ms | 351.51ms |
| 1000x5 - 25 sources (wide dense) | 494.14ms | 3.53s | 2.74s | 4.10s | 3.25s | 813.78ms | 496.32ms |
| 5x500 - 3 sources (deep) | 194.82ms | 1.20s | 227.68ms | 1.59s | 224.97ms | 231.02ms | 207.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 287.47ms | 1.71s | 454.59ms | 1.76s (partial) | 483.11ms | 342.96ms | 260.25ms |

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
