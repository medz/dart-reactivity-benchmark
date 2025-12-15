# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.37s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.73s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.36s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.70s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [signals_core](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|
| avoidablePropagation | 125.23ms | 2.36s | 215.44ms | 251.83ms | 236.41ms | 173.05ms |
| broadPropagation | 237.16ms | 4.43s | 478.27ms | 447.51ms | 443.83ms | 402.14ms |
| deepPropagation | 82.14ms | 1.48s | 184.44ms | 166.84ms | 130.90ms | 169.16ms |
| diamond | 161.09ms | 2.35s | 303.92ms | 324.87ms | 301.92ms | 221.32ms |
| mux | 302.10ms | 1.89s | 393.96ms | 388.25ms | 383.31ms | 357.31ms |
| repeatedObservers | 27.25ms | 226.84ms | 41.49ms | 53.40ms | 87.25ms | 58.90ms |
| triangle | 65.37ms | 737.48ms | 103.92ms | 112.33ms | 98.34ms | 90.74ms |
| unstable | 45.92ms | 338.08ms | 75.69ms | 87.91ms | 101.02ms | 344.42ms |
| molBench | 485.69ms | 588.27ms | 492.21ms | 489.32ms | 488.33ms | 493.87ms |
| create_signals | 31.67ms | 72.73ms | 5.80ms | 32.05ms | 77.67ms | 65.44ms |
| comp_0to1 | 9.66ms | 29.30ms | 18.41ms | 25.15ms | 41.83ms | 55.95ms |
| comp_1to1 | 22.87ms | 33.69ms | 11.85ms | 8.81ms | 31.05ms | 55.73ms |
| comp_2to1 | 17.85ms | 25.68ms | 13.90ms | 15.81ms | 13.66ms | 38.13ms |
| comp_4to1 | 3.26ms | 15.33ms | 11.70ms | 1.82ms | 19.26ms | 17.37ms |
| comp_1000to1 | 5μs | 22μs | 5μs | 6μs | 31μs | 40μs |
| comp_1to2 | 12.90ms | 32.22ms | 25.03ms | 16.91ms | 29.21ms | 46.72ms |
| comp_1to4 | 16.76ms | 25.04ms | 31.04ms | 20.55ms | 35.51ms | 46.75ms |
| comp_1to8 | 10.25ms | 31.16ms | 11.59ms | 10.59ms | 25.30ms | 44.98ms |
| comp_1to1000 | 5.87ms | 15.13ms | 13.87ms | 4.53ms | 14.64ms | 40.31ms |
| update_1to1 | 4.65ms | 27.67ms | 9.38ms | 29.48ms | 14.19ms | 6.11ms |
| update_2to1 | 4.76ms | 12.67ms | 4.62ms | 14.74ms | 7.17ms | 3.09ms |
| update_4to1 | 1.16ms | 7.72ms | 2.25ms | 7.08ms | 3.52ms | 1.59ms |
| update_1000to1 | 23μs | 67μs | 22μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.87ms | 14.24ms | 4.42ms | 14.70ms | 6.98ms | 3.10ms |
| update_1to4 | 980μs | 6.96ms | 2.26ms | 7.41ms | 3.59ms | 1.57ms |
| update_1to1000 | 37μs | 164μs | 3.09ms | 67μs | 144μs | 394μs |
| cellx1000 | 6.33ms | 102.13ms | 11.66ms | 13.39ms | 17.86ms | 14.21ms |
| cellx2500 | 22.81ms | 332.26ms | 41.18ms | 32.08ms | 43.23ms | 52.62ms |
| cellx5000 | 51.84ms | 738.25ms | 115.39ms | 91.48ms | 118.90ms | 138.86ms |
| 10x5 - 2 sources - read 20.0% (simple) | 185.38ms | 1.93s | 528.05ms | 535.06ms | 332.17ms | 246.03ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 158.18ms | 1.48s | 291.41ms | 298.58ms | 223.30ms | 200.15ms |
| 1000x12 - 4 sources - dynamic (large) | 295.18ms | 1.88s | 4.53s | 3.54s | 470.20ms | 388.76ms |
| 1000x5 - 25 sources (wide dense) | 564.50ms | 3.57s | 3.65s | 3.51s | 851.74ms | 476.69ms |
| 5x500 - 3 sources (deep) | 156.63ms | 1.20s | 244.69ms | 236.47ms | 231.26ms | 212.90ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 254.45ms | 1.71s | 490.07ms | 499.20ms | 336.14ms | 265.43ms |

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
