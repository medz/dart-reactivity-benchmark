# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.50s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.09s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.38s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.43s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.52s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.65s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.50s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.39ms | 2.33s | 199.62ms | 1.41s | 210.66ms | 236.40ms | 161.40ms (fail) |
| broadPropagation | 265.88ms | 4.37s | 468.79ms | 84.78ms (fail) | 458.99ms | 440.97ms | 6.46ms (fail) |
| deepPropagation | 80.80ms | 1.53s | 183.24ms | 1.98s (fail) | 174.59ms | 129.83ms | 144.88ms (fail) |
| diamond | 180.33ms | 2.40s | 281.07ms | 2.77s (fail) | 284.82ms | 313.41ms | 205.37ms (fail) |
| mux | 327.49ms | 1.84s | 394.00ms | 569.63ms (fail) | 412.71ms | 396.98ms | 196.13ms (fail) |
| repeatedObservers | 49.02ms | 225.13ms | 40.84ms | 398.73ms (fail) | 45.98ms | 88.24ms | 53.76ms (fail) |
| triangle | 98.89ms | 771.74ms | 101.68ms | 968.62ms (fail) | 103.13ms | 95.67ms | 84.66ms (fail) |
| unstable | 61.89ms | 336.36ms | 74.56ms | 630.76ms (fail) | 75.84ms | 102.61ms | 340.23ms (fail) |
| molBench | 485.21ms | 581.99ms | 487.43ms | 11.62ms | 485.56ms | 495.33ms | 1.09ms |
| create_signals | 26.96ms | 95.69ms | 4.60ms | 23.67ms | 24.86ms | 53.57ms | 69.74ms |
| comp_0to1 | 6.24ms | 42.02ms | 17.42ms | 13.45ms | 11.37ms | 22.72ms | 67.99ms |
| comp_1to1 | 12.34ms | 46.62ms | 12.89ms | 22.48ms | 27.86ms | 40.80ms | 61.26ms |
| comp_2to1 | 8.42ms | 34.39ms | 17.46ms | 25.04ms | 13.32ms | 34.62ms | 42.34ms |
| comp_4to1 | 7.05ms | 24.68ms | 12.05ms | 5.57ms | 3.53ms | 29.40ms | 17.88ms |
| comp_1000to1 | 3μs | 20μs | 4μs | 5μs | 5μs | 14μs | 48μs |
| comp_1to2 | 14.12ms | 36.24ms | 29.72ms | 13.19ms | 13.32ms | 25.39ms | 51.76ms |
| comp_1to4 | 15.85ms | 23.18ms | 21.37ms | 23.73ms | 12.76ms | 31.49ms | 50.15ms |
| comp_1to8 | 5.99ms | 23.78ms | 8.96ms | 5.13ms | 8.31ms | 23.93ms | 49.38ms |
| comp_1to1000 | 3.38ms | 15.25ms | 9.58ms | 4.15ms | 4.38ms | 14.70ms | 45.02ms |
| update_1to1 | 5.29ms | 24.01ms | 8.35ms | 82.46ms | 10.20ms | 14.82ms | 6.27ms |
| update_2to1 | 5.46ms | 11.68ms | 4.37ms | 41.12ms | 4.53ms | 7.18ms | 3.23ms |
| update_4to1 | 1.50ms | 6.26ms | 2.13ms | 19.90ms | 2.63ms | 3.60ms | 1.60ms |
| update_1000to1 | 13μs | 67μs | 20μs | 173μs | 25μs | 36μs | 16μs |
| update_1to2 | 2.65ms | 11.99ms | 4.15ms | 42.30ms | 4.55ms | 7.34ms | 3.13ms |
| update_1to4 | 1.58ms | 6.11ms | 2.11ms | 19.95ms | 2.65ms | 3.63ms | 1.60ms |
| update_1to1000 | 46μs | 190μs | 630μs | 93μs | 42μs | 235μs | 463μs |
| cellx1000 | 6.25ms | 70.80ms | 9.75ms | N/A | 9.57ms | 9.35ms | 5.20ms |
| cellx2500 | 18.14ms | 255.79ms | 25.86ms | N/A | 31.57ms | 27.07ms | 26.51ms |
| cellx5000 | 51.61ms | 586.27ms | 68.23ms | N/A | 59.37ms | 74.88ms | 59.48ms |
| 10x5 - 2 sources - read 20.0% (simple) | 205.13ms | 2.02s | 449.24ms | 2.18s | 511.57ms | 329.05ms | 264.24ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.90ms | 1.52s | 269.39ms | 1.46s (partial) | 284.16ms | 219.80ms | 216.99ms |
| 1000x12 - 4 sources - dynamic (large) | 273.96ms | 1.98s | 3.75s | 2.41s (partial) | 4.01s | 445.44ms | 358.60ms |
| 1000x5 - 25 sources (wide dense) | 552.40ms | 3.44s | 2.73s | 4.22s | 3.43s | 807.62ms | 565.25ms |
| 5x500 - 3 sources (deep) | 176.49ms | 1.13s | 231.90ms | 1.34s | 221.56ms | 227.67ms | 207.53ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.10ms | 1.73s | 462.80ms | 1.74s (partial) | 478.66ms | 334.30ms | 278.51ms |

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
