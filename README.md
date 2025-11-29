# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.26s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.88s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 11.92s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.96s |

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
| avoidablePropagation | 125.22ms | 2.35s | 204.58ms | 252.70ms | 264.18ms | 172.16ms |
| broadPropagation | 236.70ms | 4.35s | 465.71ms | 448.29ms | 440.78ms | 413.79ms |
| deepPropagation | 82.92ms | 1.49s | 184.04ms | 169.62ms | 132.29ms | 156.92ms |
| diamond | 158.65ms | 2.37s | 286.91ms | 311.54ms | 305.06ms | 223.39ms |
| mux | 300.59ms | 1.85s | 388.39ms | 389.30ms | 389.07ms | 370.88ms |
| repeatedObservers | 26.86ms | 226.36ms | 40.41ms | 50.55ms | 87.91ms | 59.73ms |
| triangle | 64.92ms | 733.95ms | 107.17ms | 107.49ms | 98.37ms | 86.14ms |
| unstable | 45.56ms | 338.67ms | 72.13ms | 85.41ms | 101.93ms | 342.87ms |
| molBench | 487.32ms | 556.72ms | 488.95ms | 488.35ms | 490.61ms | 492.96ms |
| create_signals | 28.56ms | 81.89ms | 10.94ms | 27.21ms | 111.73ms | 64.50ms |
| comp_0to1 | 7.51ms | 15.37ms | 25.73ms | 19.79ms | 19.41ms | 56.76ms |
| comp_1to1 | 22.30ms | 45.33ms | 7.16ms | 7.80ms | 38.15ms | 56.26ms |
| comp_2to1 | 16.46ms | 22.57ms | 10.51ms | 18.64ms | 25.22ms | 37.95ms |
| comp_4to1 | 1.97ms | 27.56ms | 7.46ms | 1.85ms | 12.09ms | 16.67ms |
| comp_1000to1 | 4μs | 14μs | 4μs | 5μs | 15μs | 38μs |
| comp_1to2 | 11.49ms | 34.12ms | 15.42ms | 19.62ms | 41.50ms | 46.52ms |
| comp_1to4 | 14.48ms | 20.91ms | 26.30ms | 23.22ms | 28.37ms | 43.94ms |
| comp_1to8 | 6.69ms | 22.40ms | 6.97ms | 8.72ms | 31.09ms | 42.98ms |
| comp_1to1000 | 3.62ms | 15.12ms | 4.59ms | 4.40ms | 15.17ms | 37.96ms |
| update_1to1 | 7.88ms | 26.80ms | 8.95ms | 29.43ms | 14.21ms | 6.10ms |
| update_2to1 | 4.73ms | 13.63ms | 4.63ms | 14.79ms | 6.99ms | 3.05ms |
| update_4to1 | 1.39ms | 7.13ms | 2.28ms | 7.08ms | 3.63ms | 1.55ms |
| update_1000to1 | 9μs | 67μs | 22μs | 84μs | 35μs | 15μs |
| update_1to2 | 6.52ms | 13.56ms | 4.42ms | 14.74ms | 7.66ms | 3.06ms |
| update_1to4 | 1.54ms | 6.83ms | 2.29ms | 7.42ms | 3.64ms | 1.52ms |
| update_1to1000 | 37μs | 162μs | 145μs | 96μs | 140μs | 374μs |
| cellx1000 | 6.44ms | 69.58ms | 9.64ms | 9.73ms | 9.23ms | 11.63ms |
| cellx2500 | 15.08ms | 254.78ms | 25.66ms | 26.06ms | 26.30ms | 24.26ms |
| cellx5000 | 30.65ms | 569.10ms | 65.03ms | 60.77ms | 60.30ms | 76.71ms |
| 10x5 - 2 sources - read 20.0% (simple) | 183.87ms | 1.93s | 517.08ms | 535.30ms | 323.05ms | 243.22ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 158.22ms | 1.45s | 291.90ms | 298.28ms | 220.31ms | 198.55ms |
| 1000x12 - 4 sources - dynamic (large) | 275.35ms | 1.83s | 4.43s | 3.46s | 441.40ms | 356.61ms |
| 1000x5 - 25 sources (wide dense) | 529.52ms | 3.44s | 3.48s | 3.27s | 811.57ms | 495.25ms |
| 5x500 - 3 sources (deep) | 155.02ms | 1.12s | 239.74ms | 228.38ms | 228.05ms | 207.27ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 244.50ms | 1.68s | 487.84ms | 486.90ms | 330.50ms | 260.62ms |

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
