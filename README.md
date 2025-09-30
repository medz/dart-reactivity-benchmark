# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.65s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.17s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.36s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.29s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.18s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 137.41ms | 2.35s | 200.41ms | 1.39s | 215.84ms | 254.40ms | 149.64ms (fail) |
| broadPropagation | 259.72ms | 4.31s | 482.56ms | 80.83ms (fail) | 459.08ms | 454.48ms | 6.39ms (fail) |
| deepPropagation | 85.05ms | 1.55s | 177.23ms | 1.93s (fail) | 178.19ms | 144.38ms | 141.71ms (fail) |
| diamond | 174.36ms | 2.41s | 280.56ms | 2.64s (fail) | 294.64ms | 322.85ms | 205.05ms (fail) |
| mux | 320.19ms | 1.82s | 398.20ms | 584.47ms (fail) | 413.76ms | 392.58ms | 192.49ms (fail) |
| repeatedObservers | 33.68ms | 231.97ms | 40.18ms | 388.29ms (fail) | 46.49ms | 93.89ms | 52.62ms (fail) |
| triangle | 71.07ms | 779.09ms | 98.35ms | 881.62ms (fail) | 101.30ms | 102.05ms | 83.72ms (fail) |
| unstable | 56.01ms | 341.65ms | 74.43ms | 618.34ms (fail) | 76.81ms | 167.11ms | 337.75ms (fail) |
| molBench | 484.19ms | 583.64ms | 476.80ms | 11.24ms | 485.49ms | 501.00ms | 947μs |
| create_signals | 24.09ms | 81.64ms | 5.19ms | 23.67ms | 26.25ms | 50.54ms | 63.10ms |
| comp_0to1 | 17.27ms | 28.32ms | 17.95ms | 15.30ms | 12.05ms | 23.93ms | 56.93ms |
| comp_1to1 | 13.81ms | 45.26ms | 12.48ms | 23.14ms | 28.52ms | 43.19ms | 60.81ms |
| comp_2to1 | 2.69ms | 23.06ms | 11.25ms | 26.23ms | 12.60ms | 20.47ms | 39.11ms |
| comp_4to1 | 1.70ms | 16.62ms | 13.93ms | 3.69ms | 3.44ms | 12.71ms | 17.78ms |
| comp_1000to1 | 4μs | 15μs | 5μs | 5μs | 5μs | 14μs | 45μs |
| comp_1to2 | 22.41ms | 36.47ms | 24.78ms | 14.46ms | 12.82ms | 34.45ms | 50.82ms |
| comp_1to4 | 25.70ms | 21.14ms | 22.65ms | 25.07ms | 14.00ms | 20.66ms | 47.04ms |
| comp_1to8 | 8.87ms | 23.02ms | 9.06ms | 8.24ms | 8.29ms | 22.02ms | 46.75ms |
| comp_1to1000 | 5.56ms | 15.23ms | 9.18ms | 4.44ms | 4.45ms | 15.27ms | 42.62ms |
| update_1to1 | 10.02ms | 26.35ms | 8.38ms | 79.76ms | 10.25ms | 16.85ms | 6.04ms |
| update_2to1 | 5.73ms | 13.59ms | 4.39ms | 40.72ms | 4.54ms | 8.44ms | 3.09ms |
| update_4to1 | 2.71ms | 6.88ms | 2.11ms | 19.79ms | 2.62ms | 4.21ms | 1.56ms |
| update_1000to1 | 19μs | 67μs | 20μs | 167μs | 25μs | 42μs | 15μs |
| update_1to2 | 5.56ms | 13.31ms | 4.12ms | 40.91ms | 4.53ms | 8.53ms | 3.04ms |
| update_1to4 | 2.60ms | 6.81ms | 2.11ms | 19.67ms | 2.53ms | 4.20ms | 1.56ms |
| update_1to1000 | 44μs | 166μs | 2.79ms | 118μs | 42μs | 143μs | 425μs |
| cellx1000 | 6.83ms | 70.75ms | 9.97ms | N/A | 9.69ms | 10.13ms | 5.17ms |
| cellx2500 | 19.71ms | 238.39ms | 27.98ms | N/A | 31.69ms | 32.30ms | 26.35ms |
| cellx5000 | 44.42ms | 547.55ms | 70.81ms | N/A | 66.26ms | 68.97ms | 66.01ms |
| 10x5 - 2 sources - read 20.0% (simple) | 202.45ms | 2.00s | 465.72ms | 2.13s | 511.79ms | 326.80ms | 245.03ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 170.63ms | 1.52s | 279.45ms | 1.46s (partial) | 282.86ms | 216.79ms | 200.38ms |
| 1000x12 - 4 sources - dynamic (large) | 370.76ms | 1.88s | 3.67s | 2.50s (partial) | 3.75s | 435.58ms | 347.62ms |
| 1000x5 - 25 sources (wide dense) | 608.09ms | 3.49s | 2.74s | 4.16s | 3.58s | 799.54ms | 484.90ms |
| 5x500 - 3 sources (deep) | 188.33ms | 1.11s | 230.93ms | 1.33s | 222.02ms | 226.91ms | 204.43ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 270.41ms | 1.69s | 462.86ms | 1.74s (partial) | 490.55ms | 332.45ms | 258.81ms |

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
