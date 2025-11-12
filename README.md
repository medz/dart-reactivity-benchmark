# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.44s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.77s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.08s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.36s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.51s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.87s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.64s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 132.95ms | 2.35s | 199.90ms | 1.40s | 211.29ms | 256.29ms | 189.87ms |
| broadPropagation | 260.66ms | 4.53s | 465.78ms | 82.41ms (fail) | 457.05ms | 449.21ms | 450.80ms |
| deepPropagation | 83.14ms | 1.52s | 180.86ms | 1.94s (fail) | 171.07ms | 131.03ms | 163.13ms |
| diamond | 165.03ms | 2.44s | 280.53ms | 2.75s (fail) | 280.74ms | 304.33ms | 240.74ms |
| mux | 322.20ms | 1.84s | 397.54ms | 583.12ms (fail) | 408.56ms | 407.84ms | 380.58ms |
| repeatedObservers | 33.48ms | 232.52ms | 40.37ms | 402.58ms (fail) | 46.55ms | 86.67ms | 61.58ms |
| triangle | 69.53ms | 773.72ms | 109.02ms | 979.81ms (fail) | 122.59ms | 94.56ms | 91.76ms |
| unstable | 49.04ms | 345.45ms | 74.48ms | 659.77ms (fail) | 76.58ms | 100.53ms | 346.03ms |
| molBench | 480.48ms | 585.34ms | 487.64ms | 11.78ms | 485.02ms | 492.30ms | 495.36ms |
| create_signals | 11.49ms | 54.95ms | 5.27ms | 23.80ms | 25.60ms | 67.11ms | 64.18ms |
| comp_0to1 | 11.50ms | 15.96ms | 17.67ms | 13.80ms | 11.64ms | 28.05ms | 54.82ms |
| comp_1to1 | 18.62ms | 43.77ms | 14.82ms | 23.01ms | 18.45ms | 53.48ms | 62.58ms |
| comp_2to1 | 11.01ms | 36.74ms | 16.60ms | 25.19ms | 16.51ms | 8.41ms | 37.52ms |
| comp_4to1 | 2.14ms | 14.34ms | 11.47ms | 5.10ms | 8.58ms | 4.41ms | 16.66ms |
| comp_1000to1 | 3μs | 21μs | 5μs | 5μs | 5μs | 18μs | 41μs |
| comp_1to2 | 18.91ms | 38.00ms | 16.74ms | 13.11ms | 21.25ms | 32.94ms | 50.11ms |
| comp_1to4 | 15.19ms | 18.06ms | 25.14ms | 24.20ms | 14.75ms | 19.47ms | 45.43ms |
| comp_1to8 | 6.35ms | 21.43ms | 7.02ms | 5.09ms | 6.79ms | 21.94ms | 44.35ms |
| comp_1to1000 | 3.15ms | 15.44ms | 5.62ms | 4.31ms | 4.47ms | 14.41ms | 40.37ms |
| update_1to1 | 10.13ms | 25.89ms | 8.94ms | 92.82ms | 10.20ms | 14.70ms | 6.03ms |
| update_2to1 | 4.79ms | 12.31ms | 4.73ms | 45.65ms | 4.54ms | 7.16ms | 2.98ms |
| update_4to1 | 2.36ms | 7.48ms | 2.24ms | 21.91ms | 2.54ms | 3.60ms | 1.57ms |
| update_1000to1 | 16μs | 88μs | 32μs | 236μs | 25μs | 36μs | 15μs |
| update_1to2 | 4.94ms | 13.57ms | 4.45ms | 45.55ms | 4.52ms | 7.47ms | 3.06ms |
| update_1to4 | 2.36ms | 7.28ms | 2.25ms | 22.27ms | 2.54ms | 3.60ms | 1.56ms |
| update_1to1000 | 47μs | 174μs | 157μs | 164μs | 43μs | 141μs | 398μs |
| cellx1000 | 6.04ms | 101.29ms | 9.55ms | N/A | 9.92ms | 10.55ms | 10.22ms |
| cellx2500 | 19.41ms | 295.74ms | 27.87ms | N/A | 39.60ms | 30.77ms | 32.26ms |
| cellx5000 | 44.33ms | 663.35ms | 78.95ms | N/A | 89.62ms | 81.18ms | 104.12ms |
| 10x5 - 2 sources - read 20.0% (simple) | 194.89ms | 2.01s | 449.69ms | 2.14s | 505.29ms | 316.95ms | 260.12ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.13ms | 1.52s | 279.83ms | 1.47s (partial) | 282.45ms | 218.43ms | 197.56ms |
| 1000x12 - 4 sources - dynamic (large) | 299.82ms | 1.89s | 3.71s | 2.50s (partial) | 3.93s | 440.98ms | 361.85ms |
| 1000x5 - 25 sources (wide dense) | 561.99ms | 3.49s | 2.73s | 4.24s | 3.55s | 810.30ms | 487.74ms |
| 5x500 - 3 sources (deep) | 180.33ms | 1.22s | 237.33ms | 1.36s | 218.03ms | 229.71ms | 201.90ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 251.59ms | 1.73s | 458.29ms | 1.76s (partial) | 474.88ms | 333.20ms | 259.76ms |

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
