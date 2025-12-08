# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.29s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.59s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.11s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 11.96s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.97s |

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
| avoidablePropagation | 125.46ms | 2.36s | 203.78ms | 250.00ms | 242.76ms | 166.51ms |
| broadPropagation | 237.10ms | 4.36s | 477.34ms | 445.97ms | 440.59ms | 407.27ms |
| deepPropagation | 81.80ms | 1.49s | 184.32ms | 168.81ms | 129.84ms | 158.09ms |
| diamond | 161.62ms | 2.36s | 287.10ms | 308.76ms | 308.06ms | 220.01ms |
| mux | 299.50ms | 1.86s | 385.55ms | 387.91ms | 388.52ms | 361.81ms |
| repeatedObservers | 27.27ms | 227.64ms | 40.39ms | 50.71ms | 87.87ms | 59.11ms |
| triangle | 71.34ms | 746.70ms | 101.47ms | 107.11ms | 95.49ms | 86.11ms |
| unstable | 46.40ms | 342.71ms | 71.54ms | 85.44ms | 101.80ms | 343.81ms |
| molBench | 487.16ms | 589.51ms | 488.95ms | 488.47ms | 491.12ms | 493.56ms |
| create_signals | 31.40ms | 54.40ms | 5.42ms | 25.90ms | 120.62ms | 58.74ms |
| comp_0to1 | 12.12ms | 15.29ms | 17.65ms | 28.28ms | 37.32ms | 52.27ms |
| comp_1to1 | 15.24ms | 31.33ms | 12.72ms | 7.88ms | 24.64ms | 54.21ms |
| comp_2to1 | 12.86ms | 35.27ms | 17.48ms | 12.05ms | 13.27ms | 36.03ms |
| comp_4to1 | 2.86ms | 24.66ms | 12.84ms | 4.42ms | 4.38ms | 16.70ms |
| comp_1000to1 | 4μs | 16μs | 4μs | 5μs | 30μs | 39μs |
| comp_1to2 | 14.17ms | 36.64ms | 31.22ms | 18.96ms | 35.65ms | 45.10ms |
| comp_1to4 | 14.59ms | 18.00ms | 20.72ms | 21.70ms | 23.65ms | 45.03ms |
| comp_1to8 | 5.98ms | 21.41ms | 14.37ms | 8.87ms | 23.90ms | 43.56ms |
| comp_1to1000 | 3.07ms | 15.50ms | 6.70ms | 4.21ms | 14.51ms | 38.30ms |
| update_1to1 | 4.93ms | 25.82ms | 8.92ms | 29.40ms | 13.93ms | 6.11ms |
| update_2to1 | 4.80ms | 13.32ms | 4.81ms | 14.82ms | 7.15ms | 3.09ms |
| update_4to1 | 941μs | 7.51ms | 2.28ms | 7.25ms | 3.48ms | 1.58ms |
| update_1000to1 | 22μs | 71μs | 29μs | 73μs | 34μs | 15μs |
| update_1to2 | 4.73ms | 13.35ms | 4.42ms | 14.73ms | 6.96ms | 3.14ms |
| update_1to4 | 1.48ms | 7.04ms | 2.30ms | 7.36ms | 3.57ms | 1.56ms |
| update_1to1000 | 42μs | 162μs | 66μs | 63μs | 144μs | 370μs |
| cellx1000 | 5.51ms | 79.00ms | 10.09ms | 9.95ms | 9.87ms | 9.13ms |
| cellx2500 | 15.84ms | 278.82ms | 32.38ms | 28.20ms | 36.34ms | 30.90ms |
| cellx5000 | 35.95ms | 583.05ms | 82.27ms | 69.22ms | 93.00ms | 98.73ms |
| 10x5 - 2 sources - read 20.0% (simple) | 186.95ms | 1.93s | 508.73ms | 539.40ms | 323.39ms | 236.74ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.88ms | 1.45s | 296.08ms | 301.70ms | 217.91ms | 198.03ms |
| 1000x12 - 4 sources - dynamic (large) | 279.70ms | 1.85s | 4.43s | 3.51s | 448.98ms | 355.44ms |
| 1000x5 - 25 sources (wide dense) | 537.93ms | 3.38s | 3.47s | 3.43s | 819.85ms | 488.57ms |
| 5x500 - 3 sources (deep) | 155.30ms | 1.11s | 240.56ms | 237.86ms | 227.42ms | 205.63ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 249.69ms | 1.66s | 484.83ms | 490.86ms | 328.35ms | 261.30ms |

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
