# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.29s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.16s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.13s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.14s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.15s |

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
| avoidablePropagation | 128.76ms | 2.36s | 205.14ms | 253.57ms | 249.93ms | 172.79ms |
| broadPropagation | 236.82ms | 4.32s | 468.12ms | 449.74ms | 447.90ms | 399.80ms |
| deepPropagation | 83.51ms | 1.50s | 185.88ms | 170.18ms | 131.49ms | 160.03ms |
| diamond | 157.80ms | 2.39s | 287.09ms | 323.76ms | 306.28ms | 225.07ms |
| mux | 309.55ms | 1.83s | 384.79ms | 380.01ms | 391.49ms | 357.41ms |
| repeatedObservers | 26.88ms | 230.99ms | 40.55ms | 53.68ms | 89.45ms | 59.65ms |
| triangle | 65.75ms | 776.96ms | 102.02ms | 109.64ms | 96.30ms | 87.36ms |
| unstable | 46.04ms | 343.69ms | 71.54ms | 87.28ms | 100.83ms | 342.54ms |
| molBench | 488.91ms | 593.09ms | 484.74ms | 488.51ms | 492.72ms | 494.48ms |
| create_signals | 27.13ms | 85.41ms | 5.00ms | 27.50ms | 127.90ms | 58.53ms |
| comp_0to1 | 11.54ms | 22.62ms | 17.86ms | 27.17ms | 34.46ms | 51.00ms |
| comp_1to1 | 16.90ms | 41.45ms | 12.72ms | 7.83ms | 24.92ms | 53.24ms |
| comp_2to1 | 23.78ms | 22.26ms | 11.90ms | 13.05ms | 12.84ms | 35.79ms |
| comp_4to1 | 3.00ms | 22.68ms | 8.97ms | 2.05ms | 12.30ms | 16.00ms |
| comp_1000to1 | 4μs | 24μs | 4μs | 4μs | 15μs | 37μs |
| comp_1to2 | 12.25ms | 35.78ms | 25.82ms | 20.00ms | 40.76ms | 43.81ms |
| comp_1to4 | 14.48ms | 18.00ms | 24.05ms | 16.54ms | 29.05ms | 43.62ms |
| comp_1to8 | 5.88ms | 21.45ms | 15.66ms | 10.10ms | 30.49ms | 41.74ms |
| comp_1to1000 | 3.02ms | 15.24ms | 6.24ms | 4.78ms | 14.49ms | 37.34ms |
| update_1to1 | 6.76ms | 27.14ms | 9.11ms | 29.63ms | 14.09ms | 6.10ms |
| update_2to1 | 4.81ms | 12.57ms | 4.89ms | 14.91ms | 7.02ms | 3.07ms |
| update_4to1 | 913μs | 7.33ms | 2.36ms | 7.08ms | 3.53ms | 1.58ms |
| update_1000to1 | 9μs | 70μs | 22μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.80ms | 14.06ms | 4.50ms | 14.70ms | 7.64ms | 3.09ms |
| update_1to4 | 2.33ms | 6.54ms | 2.27ms | 7.41ms | 3.70ms | 1.55ms |
| update_1to1000 | 33μs | 161μs | 57μs | 79μs | 141μs | 368μs |
| cellx1000 | 6.37ms | 73.20ms | 9.94ms | 9.97ms | 9.23ms | 9.97ms |
| cellx2500 | 16.72ms | 269.17ms | 27.89ms | 30.89ms | 27.83ms | 33.11ms |
| cellx5000 | 43.75ms | 549.84ms | 74.23ms | 69.10ms | 73.59ms | 91.68ms |
| 10x5 - 2 sources - read 20.0% (simple) | 184.44ms | 1.94s | 507.92ms | 534.58ms | 323.54ms | 248.79ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.73ms | 1.48s | 293.19ms | 298.78ms | 220.03ms | 200.09ms |
| 1000x12 - 4 sources - dynamic (large) | 268.86ms | 1.92s | 4.56s | 3.67s | 450.25ms | 372.40ms |
| 1000x5 - 25 sources (wide dense) | 534.87ms | 3.46s | 3.55s | 3.28s | 828.88ms | 493.44ms |
| 5x500 - 3 sources (deep) | 155.68ms | 1.10s | 238.58ms | 235.63ms | 227.72ms | 208.74ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 239.45ms | 1.66s | 488.54ms | 487.65ms | 328.15ms | 260.29ms |

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
