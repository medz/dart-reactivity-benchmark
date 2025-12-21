# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.32s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.08s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.16s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.12s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.00s |

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
| avoidablePropagation | 128.02ms | 2.39s | 202.80ms | 250.53ms | 241.35ms | 170.69ms |
| broadPropagation | 237.45ms | 4.38s | 467.11ms | 460.57ms | 436.63ms | 398.38ms |
| deepPropagation | 82.29ms | 1.47s | 184.24ms | 178.07ms | 131.29ms | 156.73ms |
| diamond | 166.42ms | 2.35s | 288.49ms | 309.96ms | 307.83ms | 225.41ms |
| mux | 308.84ms | 1.85s | 388.36ms | 380.52ms | 382.32ms | 363.66ms |
| repeatedObservers | 26.71ms | 233.22ms | 40.38ms | 50.62ms | 87.77ms | 61.83ms |
| triangle | 65.77ms | 751.15ms | 103.20ms | 108.56ms | 96.40ms | 86.68ms |
| unstable | 47.33ms | 344.35ms | 71.85ms | 87.11ms | 103.11ms | 345.41ms |
| molBench | 487.74ms | 590.86ms | 489.26ms | 488.60ms | 489.01ms | 492.76ms |
| create_signals | 29.19ms | 82.88ms | 5.47ms | 24.21ms | 72.11ms | 64.59ms |
| comp_0to1 | 21.88ms | 39.85ms | 17.82ms | 28.23ms | 40.77ms | 51.58ms |
| comp_1to1 | 19.55ms | 17.18ms | 13.46ms | 7.65ms | 37.01ms | 59.83ms |
| comp_2to1 | 12.75ms | 20.11ms | 16.91ms | 14.40ms | 29.58ms | 37.21ms |
| comp_4to1 | 1.81ms | 14.13ms | 13.40ms | 3.40ms | 4.34ms | 16.03ms |
| comp_1000to1 | 4μs | 16μs | 6μs | 6μs | 15μs | 39μs |
| comp_1to2 | 11.42ms | 45.30ms | 27.82ms | 21.15ms | 45.69ms | 44.45ms |
| comp_1to4 | 16.24ms | 24.50ms | 25.61ms | 15.87ms | 22.32ms | 44.11ms |
| comp_1to8 | 9.98ms | 21.32ms | 6.25ms | 10.18ms | 25.40ms | 42.12ms |
| comp_1to1000 | 5.52ms | 15.27ms | 5.52ms | 4.41ms | 14.50ms | 38.05ms |
| update_1to1 | 3.86ms | 26.63ms | 8.96ms | 29.71ms | 13.97ms | 6.11ms |
| update_2to1 | 3.75ms | 12.91ms | 4.63ms | 14.84ms | 7.11ms | 3.07ms |
| update_4to1 | 994μs | 7.41ms | 2.28ms | 7.12ms | 3.47ms | 1.58ms |
| update_1000to1 | 9μs | 69μs | 22μs | 73μs | 34μs | 26μs |
| update_1to2 | 4.74ms | 13.18ms | 4.43ms | 14.89ms | 6.95ms | 3.09ms |
| update_1to4 | 1.01ms | 6.88ms | 2.27ms | 7.41ms | 3.58ms | 1.55ms |
| update_1to1000 | 42μs | 161μs | 786μs | 79μs | 143μs | 369μs |
| cellx1000 | 5.85ms | 71.52ms | 10.60ms | 10.08ms | 9.20ms | 10.36ms |
| cellx2500 | 20.23ms | 255.99ms | 26.55ms | 31.08ms | 27.49ms | 28.19ms |
| cellx5000 | 43.49ms | 552.49ms | 70.31ms | 81.36ms | 65.63ms | 84.50ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.84ms | 1.94s | 508.52ms | 534.43ms | 324.54ms | 246.55ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.62ms | 1.49s | 306.50ms | 307.20ms | 222.61ms | 200.08ms |
| 1000x12 - 4 sources - dynamic (large) | 277.18ms | 1.90s | 4.44s | 3.46s | 451.94ms | 358.74ms |
| 1000x5 - 25 sources (wide dense) | 529.03ms | 3.34s | 3.63s | 3.49s | 817.13ms | 492.28ms |
| 5x500 - 3 sources (deep) | 155.11ms | 1.09s | 246.47ms | 236.38ms | 228.12ms | 209.56ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 240.33ms | 1.66s | 485.46ms | 492.08ms | 329.91ms | 260.33ms |

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
