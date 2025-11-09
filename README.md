# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.50s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.09s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.53s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.10s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.44s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.53s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.14s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.65ms | 2.33s | 201.10ms | 1.38s | 214.50ms | 244.65ms | 161.93ms (fail) |
| broadPropagation | 264.97ms | 4.36s | 465.30ms | 80.97ms (fail) | 461.99ms | 444.07ms | 7.17ms (fail) |
| deepPropagation | 80.52ms | 1.54s | 181.00ms | 1.90s (fail) | 172.77ms | 130.76ms | 146.13ms (fail) |
| diamond | 179.56ms | 2.43s | 279.94ms | 2.60s (fail) | 283.31ms | 306.06ms | 201.42ms (fail) |
| mux | 326.28ms | 1.83s | 387.50ms | 568.75ms (fail) | 403.52ms | 393.62ms | 193.98ms (fail) |
| repeatedObservers | 49.23ms | 230.31ms | 40.28ms | 393.45ms (fail) | 46.54ms | 87.69ms | 54.04ms (fail) |
| triangle | 67.59ms | 758.29ms | 100.50ms | 836.04ms (fail) | 101.54ms | 94.46ms | 80.75ms (fail) |
| unstable | 62.66ms | 338.40ms | 74.85ms | 649.94ms (fail) | 76.42ms | 101.05ms | 341.08ms (fail) |
| molBench | 486.18ms | 582.62ms | 487.95ms | 10.67ms | 486.76ms | 497.69ms | 998μs |
| create_signals | 31.60ms | 71.10ms | 4.57ms | 25.37ms | 25.54ms | 82.14ms | 69.61ms |
| comp_0to1 | 16.80ms | 28.11ms | 17.91ms | 14.46ms | 11.42ms | 22.95ms | 58.48ms |
| comp_1to1 | 20.72ms | 38.38ms | 11.43ms | 27.57ms | 24.28ms | 42.41ms | 59.89ms |
| comp_2to1 | 2.25ms | 33.58ms | 25.78ms | 31.90ms | 14.25ms | 21.80ms | 45.04ms |
| comp_4to1 | 2.57ms | 24.14ms | 21.85ms | 7.39ms | 9.68ms | 15.44ms | 18.75ms |
| comp_1000to1 | 4μs | 20μs | 7μs | 4μs | 5μs | 14μs | 43μs |
| comp_1to2 | 16.23ms | 38.99ms | 18.14ms | 11.32ms | 18.22ms | 35.28ms | 47.30ms |
| comp_1to4 | 22.37ms | 21.63ms | 31.63ms | 18.86ms | 10.77ms | 14.20ms | 45.97ms |
| comp_1to8 | 6.59ms | 24.07ms | 7.46ms | 5.12ms | 6.35ms | 19.91ms | 45.16ms |
| comp_1to1000 | 3.20ms | 15.43ms | 7.18ms | 4.17ms | 4.45ms | 13.60ms | 40.92ms |
| update_1to1 | 5.31ms | 30.17ms | 8.36ms | 84.72ms | 10.23ms | 14.72ms | 6.01ms |
| update_2to1 | 5.93ms | 13.55ms | 4.37ms | 42.05ms | 4.50ms | 7.50ms | 3.07ms |
| update_4to1 | 1.35ms | 7.56ms | 2.07ms | 19.98ms | 2.56ms | 3.59ms | 1.52ms |
| update_1000to1 | 12μs | 68μs | 20μs | 169μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.60ms | 14.52ms | 4.06ms | 43.39ms | 4.53ms | 7.46ms | 3.02ms |
| update_1to4 | 2.36ms | 6.87ms | 2.10ms | 21.48ms | 2.58ms | 3.58ms | 1.50ms |
| update_1to1000 | 46μs | 174μs | 784μs | 104μs | 43μs | 142μs | 434μs |
| cellx1000 | 8.99ms | 75.56ms | 9.68ms | N/A | 10.43ms | 10.91ms | 6.01ms |
| cellx2500 | 17.68ms | 267.56ms | 28.17ms | N/A | 40.39ms | 30.02ms | 28.96ms |
| cellx5000 | 56.35ms | 562.26ms | 88.15ms | N/A | 72.49ms | 73.55ms | 64.30ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.08ms | 2.02s | 511.97ms | 2.17s | 506.98ms | 313.64ms | 250.87ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 163.62ms | 1.53s | 292.74ms | 1.46s (partial) | 281.29ms | 219.14ms | 199.77ms |
| 1000x12 - 4 sources - dynamic (large) | 276.39ms | 1.87s | 3.75s | 2.49s (partial) | 3.77s | 455.61ms | 353.11ms |
| 1000x5 - 25 sources (wide dense) | 559.40ms | 3.47s | 2.74s | 4.03s | 3.32s | 813.97ms | 519.61ms |
| 5x500 - 3 sources (deep) | 179.08ms | 1.14s | 251.91ms | 1.37s | 221.93ms | 228.66ms | 208.65ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.19ms | 1.74s | 473.51ms | 1.84s (partial) | 483.74ms | 341.17ms | 260.81ms |

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
