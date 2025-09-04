# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.27s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.47s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.31s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.49s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.43s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 161.18ms | 2.39s | 200.94ms | 1.41s | 210.22ms | 256.58ms | 169.64ms (fail) |
| broadPropagation | 321.42ms | 4.47s | 465.25ms | 80.30ms (fail) | 465.01ms | 478.08ms | 6.59ms (fail) |
| deepPropagation | 98.45ms | 1.54s | 178.58ms | 1.93s (fail) | 169.16ms | 140.20ms | 143.63ms (fail) |
| diamond | 226.99ms | 2.42s | 280.27ms | 2.61s (fail) | 281.86ms | 311.53ms | 191.79ms (fail) |
| mux | 343.26ms | 1.84s | 386.75ms | 584.47ms (fail) | 411.45ms | 406.86ms | 194.18ms (fail) |
| repeatedObservers | 50.63ms | 238.62ms | 40.33ms | 401.78ms (fail) | 46.13ms | 91.02ms | 52.72ms (fail) |
| triangle | 77.77ms | 785.92ms | 99.46ms | 894.65ms (fail) | 101.50ms | 97.06ms | 78.17ms (fail) |
| unstable | 144.16ms | 348.26ms | 74.31ms | 650.27ms (fail) | 75.70ms | 166.82ms | 341.71ms (fail) |
| molBench | 487.55ms | 583.72ms | 488.97ms | 11.60ms | 485.49ms | 501.57ms | 920μs |
| create_signals | 27.00ms | 52.50ms | 5.16ms | 24.02ms | 25.50ms | 79.15ms | 67.80ms |
| comp_0to1 | 11.58ms | 19.14ms | 17.81ms | 13.97ms | 11.91ms | 26.28ms | 55.58ms |
| comp_1to1 | 25.22ms | 23.71ms | 15.04ms | 21.64ms | 29.27ms | 44.38ms | 64.79ms |
| comp_2to1 | 18.78ms | 8.98ms | 24.03ms | 25.09ms | 15.17ms | 20.88ms | 44.73ms |
| comp_4to1 | 4.09ms | 27.14ms | 13.62ms | 4.50ms | 3.62ms | 13.57ms | 19.44ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 4μs | 5μs | 14μs | 45μs |
| comp_1to2 | 16.94ms | 31.60ms | 12.09ms | 12.90ms | 13.63ms | 34.87ms | 47.77ms |
| comp_1to4 | 18.07ms | 31.22ms | 27.21ms | 23.82ms | 18.23ms | 21.64ms | 46.19ms |
| comp_1to8 | 7.93ms | 24.19ms | 6.21ms | 5.17ms | 7.89ms | 18.97ms | 45.75ms |
| comp_1to1000 | 4.51ms | 15.42ms | 6.97ms | 4.28ms | 4.08ms | 14.43ms | 41.49ms |
| update_1to1 | 5.45ms | 25.53ms | 8.27ms | 80.51ms | 10.13ms | 16.76ms | 6.01ms |
| update_2to1 | 2.93ms | 12.10ms | 4.39ms | 44.81ms | 4.55ms | 8.39ms | 3.07ms |
| update_4to1 | 1.47ms | 6.11ms | 2.12ms | 19.97ms | 2.54ms | 4.22ms | 1.51ms |
| update_1000to1 | 24μs | 68μs | 21μs | 169μs | 26μs | 42μs | 15μs |
| update_1to2 | 2.77ms | 14.58ms | 4.11ms | 41.67ms | 4.50ms | 8.48ms | 3.01ms |
| update_1to4 | 1.48ms | 5.71ms | 2.11ms | 20.03ms | 2.55ms | 4.23ms | 1.53ms |
| update_1to1000 | 49μs | 170μs | 70μs | 94μs | 44μs | 144μs | 418μs |
| cellx1000 | 7.05ms | 77.46ms | 9.72ms | N/A | 9.96ms | 10.34ms | 5.75ms |
| cellx2500 | 18.87ms | 238.82ms | 26.54ms | N/A | 29.83ms | 36.56ms | 30.24ms |
| cellx5000 | 45.80ms | 588.51ms | 82.09ms | N/A | 74.15ms | 109.25ms | 75.37ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.54ms | 2.01s | 517.46ms | 2.19s | 506.14ms | 331.81ms | 254.01ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.25ms | 1.52s | 294.57ms | 1.48s (partial) | 282.20ms | 220.26ms | 202.10ms |
| 1000x12 - 4 sources - dynamic (large) | 351.85ms | 1.81s | 3.73s | 2.47s (partial) | 3.88s | 441.30ms | 356.72ms |
| 1000x5 - 25 sources (wide dense) | 495.31ms | 3.49s | 2.73s | 4.21s | 3.42s | 794.38ms | 515.69ms |
| 5x500 - 3 sources (deep) | 199.23ms | 1.14s | 244.20ms | 1.41s | 225.35ms | 224.11ms | 212.45ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 278.73ms | 1.71s | 465.94ms | 1.76s (partial) | 481.19ms | 333.30ms | 264.10ms |

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
