# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.49s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.30s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.82s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.01s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 217.65ms | 2.32s | 200.91ms | 1.39s | 205.14ms | 295.13ms | 164.37ms (fail) |
| broadPropagation | 399.23ms | 4.41s | 451.36ms | 84.54ms (fail) | 450.05ms | 532.01ms | 6.15ms (fail) |
| deepPropagation | 97.25ms | 1.56s | 179.60ms | 2.03s (fail) | 170.93ms | 168.64ms | 148.15ms (fail) |
| diamond | 225.31ms | 2.48s | 278.73ms | 2.94s (fail) | 278.43ms | 351.85ms | 180.29ms (fail) |
| mux | 408.73ms | 1.82s | 402.82ms | 559.31ms (fail) | 413.69ms | 440.86ms | 196.52ms (fail) |
| repeatedObservers | 48.17ms | 231.96ms | 39.95ms | 383.28ms (fail) | 44.65ms | 86.46ms | 52.90ms (fail) |
| triangle | 82.44ms | 770.13ms | 97.55ms | 964.78ms (fail) | 100.25ms | 117.73ms | 76.69ms (fail) |
| unstable | 67.12ms | 344.40ms | 70.01ms | 622.73ms (fail) | 79.03ms | 103.02ms | 337.92ms (fail) |
| molBench | 484.81ms | 571.41ms | 489.15ms | 11.47ms | 485.53ms | 500.63ms | 910μs |
| create_signals | 26.93ms | 52.23ms | 5.36ms | 24.17ms | 25.48ms | 47.02ms | 60.63ms |
| comp_0to1 | 10.83ms | 16.14ms | 17.35ms | 14.12ms | 11.32ms | 47.61ms | 54.70ms |
| comp_1to1 | 22.20ms | 45.02ms | 13.94ms | 23.19ms | 28.92ms | 40.36ms | 56.11ms |
| comp_2to1 | 15.89ms | 32.77ms | 22.77ms | 24.67ms | 10.60ms | 25.77ms | 36.59ms |
| comp_4to1 | 8.57ms | 24.62ms | 11.49ms | 6.85ms | 2.15ms | 17.48ms | 16.67ms |
| comp_1000to1 | 7μs | 17μs | 5μs | 5μs | 5μs | 23μs | 43μs |
| comp_1to2 | 10.85ms | 37.60ms | 28.01ms | 13.05ms | 13.55ms | 32.84ms | 45.68ms |
| comp_1to4 | 15.62ms | 19.37ms | 23.72ms | 25.84ms | 9.21ms | 27.38ms | 45.14ms |
| comp_1to8 | 4.56ms | 23.59ms | 6.11ms | 6.95ms | 10.45ms | 18.18ms | 44.31ms |
| comp_1to1000 | 3.67ms | 15.88ms | 5.81ms | 6.10ms | 5.04ms | 15.86ms | 39.31ms |
| update_1to1 | 5.00ms | 24.77ms | 9.63ms | 83.98ms | 9.01ms | 15.55ms | 5.69ms |
| update_2to1 | 2.52ms | 11.12ms | 4.77ms | 41.35ms | 4.50ms | 7.71ms | 2.83ms |
| update_4to1 | 1.26ms | 6.48ms | 2.18ms | 20.29ms | 2.39ms | 3.85ms | 1.44ms |
| update_1000to1 | 12μs | 71μs | 21μs | 172μs | 22μs | 38μs | 15μs |
| update_1to2 | 2.50ms | 12.82ms | 4.63ms | 42.98ms | 4.47ms | 7.68ms | 2.89ms |
| update_1to4 | 1.24ms | 6.34ms | 2.19ms | 20.66ms | 2.24ms | 3.84ms | 1.49ms |
| update_1to1000 | 31μs | 174μs | 47μs | 123μs | 43μs | 169μs | 385μs |
| cellx1000 | 12.03ms | 77.47ms | 9.77ms | N/A | 9.40ms | 11.76ms | 5.82ms |
| cellx2500 | 36.25ms | 276.60ms | 27.99ms | N/A | 32.42ms | 35.28ms | 22.54ms |
| cellx5000 | 72.67ms | 596.14ms | 74.53ms | N/A | 65.43ms | 87.68ms | 87.79ms |
| 10x5 - 2 sources - read 20.0% (simple) | 218.72ms | 2.03s | 439.25ms | 2.23s | 526.23ms | 355.52ms | 235.59ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 171.10ms | 1.59s | 276.04ms | 1.53s (partial) | 285.49ms | 247.59ms | 197.10ms |
| 1000x12 - 4 sources - dynamic (large) | 321.77ms | 2.06s | 3.72s | 2.57s (partial) | 3.74s | 464.17ms | 340.03ms |
| 1000x5 - 25 sources (wide dense) | 449.90ms | 3.49s | 2.70s | 4.07s | 3.42s | 732.65ms | 503.62ms |
| 5x500 - 3 sources (deep) | 190.66ms | 1.17s | 226.77ms | 1.39s | 225.00ms | 267.77ms | 205.82ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 252.47ms | 1.71s | 453.84ms | 1.87s (partial) | 480.09ms | 384.75ms | 261.41ms |

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
