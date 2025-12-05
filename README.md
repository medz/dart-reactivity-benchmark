# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.26s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.57s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.08s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.83s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 11.97s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.30s |

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
| avoidablePropagation | 125.65ms | 2.34s | 217.04ms | 248.12ms | 261.35ms | 169.46ms |
| broadPropagation | 235.68ms | 4.43s | 470.78ms | 458.94ms | 443.36ms | 407.19ms |
| deepPropagation | 81.62ms | 1.51s | 186.84ms | 165.85ms | 130.05ms | 154.66ms |
| diamond | 155.65ms | 2.35s | 291.65ms | 318.60ms | 323.37ms | 209.81ms |
| mux | 296.87ms | 1.86s | 388.42ms | 384.72ms | 381.33ms | 367.69ms |
| repeatedObservers | 27.23ms | 224.63ms | 40.56ms | 52.20ms | 91.80ms | 58.86ms |
| triangle | 64.86ms | 736.28ms | 101.78ms | 108.29ms | 102.30ms | 86.81ms |
| unstable | 45.69ms | 334.09ms | 70.32ms | 87.60ms | 105.17ms | 349.15ms |
| molBench | 486.83ms | 587.25ms | 488.62ms | 432.57ms | 489.40ms | 492.86ms |
| create_signals | 31.75ms | 80.68ms | 5.53ms | 28.18ms | 71.61ms | 57.80ms |
| comp_0to1 | 12.87ms | 15.83ms | 17.84ms | 23.36ms | 40.53ms | 56.44ms |
| comp_1to1 | 20.68ms | 53.29ms | 13.38ms | 7.86ms | 25.15ms | 53.69ms |
| comp_2to1 | 16.86ms | 23.10ms | 21.63ms | 8.22ms | 18.58ms | 36.83ms |
| comp_4to1 | 2.77ms | 28.15ms | 14.73ms | 6.81ms | 4.40ms | 15.64ms |
| comp_1000to1 | 5μs | 15μs | 4μs | 5μs | 18μs | 38μs |
| comp_1to2 | 14.23ms | 34.90ms | 15.59ms | 26.19ms | 34.95ms | 44.04ms |
| comp_1to4 | 18.14ms | 25.48ms | 26.91ms | 16.19ms | 21.85ms | 44.02ms |
| comp_1to8 | 5.35ms | 23.75ms | 6.64ms | 10.80ms | 22.50ms | 41.51ms |
| comp_1to1000 | 3.09ms | 15.57ms | 5.78ms | 4.46ms | 14.35ms | 37.46ms |
| update_1to1 | 4.38ms | 27.30ms | 8.94ms | 29.58ms | 13.98ms | 6.09ms |
| update_2to1 | 4.80ms | 13.77ms | 4.59ms | 14.93ms | 7.11ms | 3.08ms |
| update_4to1 | 1.12ms | 7.41ms | 2.22ms | 7.18ms | 3.48ms | 1.55ms |
| update_1000to1 | 9μs | 88μs | 22μs | 85μs | 34μs | 15μs |
| update_1to2 | 4.82ms | 13.84ms | 4.42ms | 14.76ms | 6.95ms | 3.06ms |
| update_1to4 | 1.92ms | 6.93ms | 2.26ms | 7.41ms | 3.58ms | 1.52ms |
| update_1to1000 | 40μs | 161μs | 961μs | 78μs | 150μs | 367μs |
| cellx1000 | 5.49ms | 72.63ms | 9.93ms | 9.78ms | 9.44ms | 9.34ms |
| cellx2500 | 17.83ms | 269.62ms | 26.43ms | 27.12ms | 28.23ms | 29.49ms |
| cellx5000 | 33.84ms | 571.05ms | 69.99ms | 67.72ms | 72.80ms | 85.03ms |
| 10x5 - 2 sources - read 20.0% (simple) | 192.25ms | 1.97s | 510.46ms | 538.24ms | 323.29ms | 240.86ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 158.44ms | 1.46s | 290.48ms | 298.44ms | 222.05ms | 196.80ms |
| 1000x12 - 4 sources - dynamic (large) | 272.11ms | 1.95s | 4.47s | 3.44s | 444.11ms | 357.61ms |
| 1000x5 - 25 sources (wide dense) | 518.95ms | 3.50s | 3.47s | 3.27s | 808.32ms | 486.65ms |
| 5x500 - 3 sources (deep) | 152.02ms | 1.10s | 239.69ms | 233.54ms | 231.02ms | 204.85ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 242.70ms | 1.65s | 483.38ms | 487.56ms | 328.09ms | 258.88ms |

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
