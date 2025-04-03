# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.72s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.47s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.22s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.48s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 188.82ms | 2.27s | 205.72ms | 1.25s | 1.41s | 206.24ms | 287.12ms | 156.45ms (fail) |
| broadPropagation | 360.83ms | 4.21s | 457.95ms | 4.99s | 82.34ms (fail) | 454.58ms | 511.03ms | 6.58ms (fail) |
| deepPropagation | 128.70ms | 1.51s | 177.29ms | 4.00s | 1.92s (fail) | 176.80ms | 176.14ms | 141.45ms (fail) |
| diamond | 238.77ms | 2.38s | 279.39ms | 14.03s (fail) | 2.60s (fail) | 294.10ms | 361.17ms | 186.22ms (fail) |
| mux | 375.11ms | 1.78s | 388.20ms | 1.02s | 560.79ms (fail) | 412.78ms | 448.37ms | 190.50ms (fail) |
| repeatedObservers | 45.30ms | 230.72ms | 38.54ms | 9.74s | 386.77ms (fail) | 46.95ms | 78.07ms | 52.25ms (fail) |
| triangle | 84.05ms | 763.72ms | 99.41ms | 4.52s | 940.06ms (fail) | 106.54ms | 117.95ms | 77.09ms (fail) |
| unstable | 61.81ms | 347.87ms | 70.52ms | 7.64s | 615.54ms (fail) | 74.89ms | 94.72ms | 338.30ms (fail) |
| molBench | 492.27ms | 576.22ms | 491.64ms | 5.90s | 11.58ms | 489.48ms | 493.52ms | 1.19ms |
| create_signals | 27.30ms | 70.81ms | 4.66ms | 13.34ms | 23.87ms | 25.96ms | 87.35ms | 60.13ms |
| comp_0to1 | 7.67ms | 23.83ms | 22.42ms | 13.68ms | 14.10ms | 12.74ms | 62.70ms | 53.39ms |
| comp_1to1 | 4.20ms | 17.17ms | 11.68ms | 99.56ms | 22.48ms | 27.76ms | 54.98ms | 56.03ms |
| comp_2to1 | 2.34ms | 14.52ms | 9.14ms | 72.37ms | 23.58ms | 9.67ms | 47.72ms | 36.52ms |
| comp_4to1 | 8.54ms | 18.87ms | 13.85ms | 85.23ms | 6.62ms | 2.13ms | 17.21ms | 16.43ms |
| comp_1000to1 | 5μs | 23μs | 4μs | 59.32ms | 3μs | 5μs | 15μs | 42μs |
| comp_1to2 | 19.39ms | 30.73ms | 31.39ms | 66.89ms | 12.84ms | 20.43ms | 36.54ms | 47.39ms |
| comp_1to4 | 7.63ms | 41.90ms | 21.63ms | 99.18ms | 24.85ms | 12.70ms | 20.91ms | 44.22ms |
| comp_1to8 | 8.02ms | 24.34ms | 8.98ms | 116.37ms | 5.02ms | 9.37ms | 23.56ms | 43.65ms |
| comp_1to1000 | 3.49ms | 15.13ms | 10.12ms | 47.90ms | 4.62ms | 4.67ms | 14.61ms | 38.91ms |
| update_1to1 | 11.41ms | 24.45ms | 8.23ms | N/A | 85.91ms | 9.38ms | 16.15ms | 5.73ms |
| update_2to1 | 5.13ms | 11.74ms | 4.05ms | N/A | 42.50ms | 4.61ms | 7.93ms | 2.90ms |
| update_4to1 | 2.85ms | 5.99ms | 2.08ms | N/A | 20.50ms | 2.29ms | 4.05ms | 1.50ms |
| update_1000to1 | 10μs | 68μs | 20μs | N/A | 186μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.63ms | 12.19ms | 4.12ms | N/A | 45.27ms | 4.93ms | 8.15ms | 2.97ms |
| update_1to4 | 1.26ms | 6.01ms | 2.08ms | N/A | 20.84ms | 2.32ms | 4.05ms | 1.51ms |
| update_1to1000 | 40μs | 167μs | 889μs | N/A | 114μs | 52μs | 159μs | 386μs |
| cellx1000 | 7.44ms | 84.32ms | 9.95ms | N/A | N/A | 9.57ms | 12.38ms | 5.16ms |
| cellx2500 | 19.71ms | 228.90ms | 27.96ms | N/A | N/A | 32.61ms | 36.65ms | 24.26ms |
| cellx5000 | 43.36ms | 601.74ms | 75.81ms | N/A | N/A | 68.79ms | 130.94ms | 76.43ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.45ms | 2.01s | 447.05ms | N/A | 2.22s | 504.10ms | 356.23ms | 240.81ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.13ms | 1.55s | 271.02ms | N/A | 1.48s (partial) | 276.72ms | 244.81ms | 199.93ms |
| 1000x12 - 4 sources - dynamic (large) | 286.38ms | 1.78s | 3.55s | N/A | 2.50s (partial) | 3.89s | 478.16ms | 334.22ms |
| 1000x5 - 25 sources (wide dense) | 412.17ms | 3.65s | 2.61s | N/A | 4.18s | 3.42s | 593.03ms | 505.85ms |
| 5x500 - 3 sources (deep) | 189.63ms | 1.16s | 229.00ms | N/A | 1.43s | 227.15ms | 256.42ms | 205.34ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.03ms | 1.76s | 450.93ms | N/A | 1.80s (partial) | 481.74ms | 390.64ms | 255.71ms |

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
