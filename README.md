# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 1.76s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 2.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 2.87s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 5.36s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 7.15s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 13.57s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|
| avoidablePropagation | 64.29ms | 1.16s | 105.11ms | 105.92ms | 147.05ms | 92.35ms |
| broadPropagation | 105.62ms | 2.04s | 219.25ms | 222.35ms | 226.49ms | 210.58ms |
| deepPropagation | 44.85ms | 723.19ms | 105.93ms | 97.91ms | 71.86ms | 99.76ms |
| diamond | 88.47ms | 1.16s | 154.89ms | 154.89ms | 169.20ms | 135.22ms |
| mux | 144.98ms | 892.69ms | 192.72ms | 197.94ms | 216.70ms | 215.42ms |
| repeatedObservers | 14.05ms | 111.02ms | 21.43ms | 25.12ms | 42.37ms | 32.77ms |
| triangle | 38.41ms | 381.15ms | 59.35ms | 58.50ms | 59.16ms | 54.43ms |
| unstable | 25.72ms | 161.62ms | 35.56ms | 42.39ms | 54.25ms | 198.71ms |
| molBench | 272.27ms | 342.61ms | 289.93ms | 291.48ms | 294.04ms | 293.56ms |
| create_signals | 12.29ms | 36.21ms | 5.34ms | 9.14ms | 24.47ms | 28.52ms |
| comp_0to1 | 8.76ms | 8.36ms | 8.78ms | 4.30ms | 16.41ms | 24.80ms |
| comp_1to1 | 6.55ms | 23.79ms | 3.09ms | 6.97ms | 10.64ms | 27.07ms |
| comp_2to1 | 9.91ms | 10.32ms | 5.56ms | 3.85ms | 16.10ms | 17.77ms |
| comp_4to1 | 1.74ms | 12.54ms | 6.37ms | 1.28ms | 7.85ms | 8.84ms |
| comp_1000to1 | 1μs | 8μs | 3μs | 2μs | 8μs | 20μs |
| comp_1to2 | 4.38ms | 21.67ms | 8.47ms | 7.39ms | 16.41ms | 22.82ms |
| comp_1to4 | 6.98ms | 8.88ms | 10.88ms | 5.83ms | 15.01ms | 21.99ms |
| comp_1to8 | 2.45ms | 10.94ms | 3.35ms | 3.30ms | 10.51ms | 22.19ms |
| comp_1to1000 | 1.77ms | 7.32ms | 2.69ms | 2.04ms | 7.07ms | 20.07ms |
| update_1to1 | 1.83ms | 10.09ms | 3.96ms | 4.49ms | 6.35ms | 2.75ms |
| update_2to1 | 914μs | 4.93ms | 2.07ms | 2.34ms | 3.07ms | 1.39ms |
| update_4to1 | 494μs | 2.59ms | 1.03ms | 1.13ms | 1.56ms | 696μs |
| update_1000to1 | 4μs | 23μs | 9μs | 11μs | 15μs | 7μs |
| update_1to2 | 922μs | 4.94ms | 2.06ms | 2.27ms | 3.24ms | 1.40ms |
| update_1to4 | 469μs | 2.43ms | 1.05ms | 1.10ms | 1.55ms | 748μs |
| update_1to1000 | 15μs | 78μs | 229μs | 21μs | 118μs | 200μs |
| cellx1000 | 2.84ms | 37.13ms | 4.97ms | 4.90ms | 4.81ms | 5.42ms |
| cellx2500 | 8.10ms | 155.84ms | 13.57ms | 15.31ms | 15.85ms | 16.53ms |
| cellx5000 | 20.65ms | 276.70ms | 35.66ms | 35.68ms | 54.79ms | 61.22ms |
| 10x5 - 2 sources - read 20.0% (simple) | 120.83ms | 1.04s | 236.26ms | 266.82ms | 204.98ms | 160.43ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 87.18ms | 800.51ms | 123.72ms | 129.32ms | 134.73ms | 110.02ms |
| 1000x12 - 4 sources - dynamic (large) | 160.77ms | 862.67ms | 1.92s | 2.73s | 290.24ms | 207.62ms |
| 1000x5 - 25 sources (wide dense) | 282.76ms | 1.82s | 1.43s | 2.34s | 406.89ms | 252.29ms |
| 5x500 - 3 sources (deep) | 84.06ms | 583.44ms | 116.76ms | 111.02ms | 128.56ms | 115.90ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 138.21ms | 858.78ms | 225.80ms | 274.59ms | 211.83ms | 149.41ms |

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
