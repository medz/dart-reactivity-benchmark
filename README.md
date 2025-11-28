# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

> [!NOTE]
> This benchmark is primarily for **entertainment purposes** and should not be considered a rigorous scientific comparison. The test results may be influenced by various factors such as testing environment, hardware, and specific implementation details. Please use the results as a casual reference only and conduct your own testing in your actual use cases.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.31s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.56s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.11s |
| 4 | [signals_core](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.14s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 12.19s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.31s |

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
| avoidablePropagation | 127.59ms | 2.39s | 205.42ms | 253.82ms | 247.18ms | 164.71ms |
| broadPropagation | 236.19ms | 4.42s | 467.27ms | 453.80ms | 446.40ms | 400.54ms |
| deepPropagation | 83.48ms | 1.51s | 184.42ms | 168.82ms | 130.07ms | 154.21ms |
| diamond | 162.18ms | 2.41s | 286.32ms | 314.91ms | 316.42ms | 213.87ms |
| mux | 308.11ms | 1.86s | 386.01ms | 387.23ms | 372.98ms | 362.71ms |
| repeatedObservers | 27.00ms | 231.09ms | 40.25ms | 51.40ms | 88.06ms | 58.58ms |
| triangle | 67.30ms | 751.12ms | 102.07ms | 114.66ms | 96.68ms | 83.30ms |
| unstable | 46.20ms | 338.67ms | 72.13ms | 86.47ms | 101.46ms | 343.01ms |
| molBench | 487.33ms | 591.25ms | 487.04ms | 488.43ms | 491.31ms | 493.76ms |
| create_signals | 23.13ms | 89.49ms | 5.51ms | 26.95ms | 111.19ms | 67.40ms |
| comp_0to1 | 17.85ms | 15.22ms | 17.62ms | 31.18ms | 26.42ms | 54.27ms |
| comp_1to1 | 19.06ms | 39.87ms | 14.06ms | 7.91ms | 38.10ms | 52.86ms |
| comp_2to1 | 18.80ms | 23.54ms | 16.64ms | 13.72ms | 13.13ms | 35.22ms |
| comp_4to1 | 2.60ms | 17.58ms | 17.09ms | 7.75ms | 4.25ms | 15.69ms |
| comp_1000to1 | 6μs | 20μs | 7μs | 5μs | 17μs | 38μs |
| comp_1to2 | 10.66ms | 41.10ms | 14.51ms | 18.49ms | 27.29ms | 44.00ms |
| comp_1to4 | 16.71ms | 22.06ms | 23.27ms | 19.74ms | 23.97ms | 43.37ms |
| comp_1to8 | 10.46ms | 24.20ms | 7.67ms | 9.27ms | 22.95ms | 41.40ms |
| comp_1to1000 | 5.75ms | 15.00ms | 5.84ms | 3.92ms | 14.12ms | 37.30ms |
| update_1to1 | 5.37ms | 23.61ms | 8.99ms | 29.43ms | 14.00ms | 6.10ms |
| update_2to1 | 4.75ms | 11.25ms | 4.62ms | 14.73ms | 7.15ms | 3.08ms |
| update_4to1 | 1.00ms | 6.90ms | 2.25ms | 7.06ms | 3.52ms | 1.57ms |
| update_1000to1 | 9μs | 67μs | 22μs | 73μs | 35μs | 15μs |
| update_1to2 | 4.76ms | 13.77ms | 4.42ms | 14.71ms | 6.98ms | 3.08ms |
| update_1to4 | 1.92ms | 6.90ms | 2.27ms | 7.38ms | 3.59ms | 1.54ms |
| update_1to1000 | 40μs | 162μs | 389μs | 78μs | 142μs | 370μs |
| cellx1000 | 5.47ms | 78.37ms | 9.81ms | 10.04ms | 10.80ms | 9.21ms |
| cellx2500 | 17.79ms | 260.08ms | 26.24ms | 26.96ms | 27.84ms | 27.17ms |
| cellx5000 | 40.30ms | 620.86ms | 75.66ms | 65.19ms | 68.25ms | 83.14ms |
| 10x5 - 2 sources - read 20.0% (simple) | 186.79ms | 1.91s | 511.76ms | 533.42ms | 329.61ms | 238.07ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.95ms | 1.48s | 294.90ms | 296.60ms | 223.90ms | 196.74ms |
| 1000x12 - 4 sources - dynamic (large) | 285.43ms | 1.87s | 4.53s | 3.49s | 461.03ms | 357.73ms |
| 1000x5 - 25 sources (wide dense) | 530.30ms | 3.42s | 3.63s | 3.45s | 824.33ms | 494.45ms |
| 5x500 - 3 sources (deep) | 153.51ms | 1.12s | 243.30ms | 238.07ms | 229.40ms | 207.78ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 242.63ms | 1.70s | 487.68ms | 502.18ms | 330.40ms | 260.60ms |

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
