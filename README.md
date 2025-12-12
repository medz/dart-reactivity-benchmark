# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.34s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.63s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.24s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.28s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.00s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.38s |

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
| avoidablePropagation | 126.52ms | 2.41s | 204.48ms | 251.84ms | 252.65ms | 166.16ms |
| broadPropagation | 237.63ms | 4.43s | 472.80ms | 446.92ms | 436.16ms | 395.25ms |
| deepPropagation | 80.85ms | 1.49s | 185.05ms | 168.67ms | 131.69ms | 155.32ms |
| diamond | 162.93ms | 2.43s | 286.95ms | 316.64ms | 300.81ms | 217.03ms |
| mux | 300.29ms | 1.88s | 385.91ms | 383.00ms | 385.91ms | 363.76ms |
| repeatedObservers | 26.98ms | 240.05ms | 40.06ms | 51.87ms | 87.40ms | 58.71ms |
| triangle | 65.08ms | 750.07ms | 101.49ms | 108.24ms | 96.66ms | 89.35ms |
| unstable | 46.38ms | 351.24ms | 70.50ms | 86.10ms | 101.72ms | 344.32ms |
| molBench | 487.07ms | 590.90ms | 487.73ms | 489.31ms | 488.43ms | 493.67ms |
| create_signals | 33.73ms | 70.77ms | 5.53ms | 27.87ms | 122.94ms | 68.94ms |
| comp_0to1 | 11.68ms | 29.18ms | 17.68ms | 28.62ms | 38.22ms | 63.17ms |
| comp_1to1 | 15.76ms | 39.37ms | 11.78ms | 7.99ms | 44.68ms | 56.07ms |
| comp_2to1 | 25.23ms | 22.85ms | 25.36ms | 12.81ms | 20.78ms | 36.80ms |
| comp_4to1 | 7.88ms | 14.28ms | 9.78ms | 3.28ms | 4.40ms | 16.40ms |
| comp_1000to1 | 4μs | 15μs | 6μs | 5μs | 18μs | 42μs |
| comp_1to2 | 10.25ms | 40.86ms | 18.25ms | 22.38ms | 29.02ms | 46.88ms |
| comp_1to4 | 21.15ms | 30.09ms | 26.41ms | 16.34ms | 24.97ms | 47.15ms |
| comp_1to8 | 7.17ms | 20.44ms | 7.04ms | 10.82ms | 23.57ms | 44.64ms |
| comp_1to1000 | 5.81ms | 15.31ms | 4.92ms | 4.66ms | 14.60ms | 40.33ms |
| update_1to1 | 6.01ms | 26.33ms | 8.98ms | 29.43ms | 14.02ms | 6.14ms |
| update_2to1 | 4.75ms | 13.58ms | 4.63ms | 14.77ms | 7.35ms | 3.12ms |
| update_4to1 | 2.08ms | 6.89ms | 2.29ms | 7.13ms | 3.51ms | 1.62ms |
| update_1000to1 | 9μs | 70μs | 22μs | 73μs | 34μs | 15μs |
| update_1to2 | 4.78ms | 14.28ms | 4.43ms | 14.69ms | 6.98ms | 3.11ms |
| update_1to4 | 998μs | 6.95ms | 2.29ms | 7.37ms | 3.58ms | 1.58ms |
| update_1to1000 | 36μs | 162μs | 172μs | 99μs | 149μs | 401μs |
| cellx1000 | 6.11ms | 87.01ms | 10.02ms | 10.59ms | 11.62ms | 10.26ms |
| cellx2500 | 17.79ms | 247.68ms | 28.80ms | 41.48ms | 50.45ms | 34.39ms |
| cellx5000 | 43.47ms | 600.48ms | 87.21ms | 120.43ms | 146.25ms | 101.14ms |
| 10x5 - 2 sources - read 20.0% (simple) | 182.96ms | 1.96s | 510.71ms | 538.94ms | 329.92ms | 238.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.87ms | 1.47s | 292.25ms | 301.19ms | 222.02ms | 197.33ms |
| 1000x12 - 4 sources - dynamic (large) | 289.02ms | 1.80s | 4.44s | 3.63s | 455.58ms | 372.00ms |
| 1000x5 - 25 sources (wide dense) | 541.82ms | 3.51s | 3.53s | 3.40s | 829.40ms | 494.01ms |
| 5x500 - 3 sources (deep) | 156.46ms | 1.12s | 241.99ms | 233.32ms | 229.97ms | 205.34ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 249.79ms | 1.68s | 485.64ms | 488.83ms | 328.69ms | 259.45ms |

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
