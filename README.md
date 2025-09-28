# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.02s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.40s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.50s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.42s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.92s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.58s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.37s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.46ms | 2.36s | 200.59ms | 1.44s | 211.69ms | 257.71ms | 169.32ms (fail) |
| broadPropagation | 314.98ms | 4.40s | 459.77ms | 81.21ms (fail) | 455.44ms | 461.79ms | 6.68ms (fail) |
| deepPropagation | 98.42ms | 1.55s | 181.73ms | 1.95s (fail) | 171.89ms | 140.37ms | 147.06ms (fail) |
| diamond | 226.14ms | 2.42s | 283.42ms | 2.58s (fail) | 286.73ms | 309.00ms | 187.94ms (fail) |
| mux | 349.27ms | 1.84s | 391.63ms | 582.79ms (fail) | 423.19ms | 412.47ms | 197.01ms (fail) |
| repeatedObservers | 50.41ms | 237.59ms | 40.05ms | 387.76ms (fail) | 45.99ms | 90.42ms | 53.81ms (fail) |
| triangle | 97.20ms | 787.06ms | 99.12ms | 934.28ms (fail) | 101.34ms | 97.33ms | 85.29ms (fail) |
| unstable | 140.26ms | 347.12ms | 75.42ms | 631.28ms (fail) | 76.64ms | 166.99ms | 343.50ms (fail) |
| molBench | 488.36ms | 584.71ms | 486.63ms | 11.34ms | 487.48ms | 501.25ms | 1.39ms |
| create_signals | 27.36ms | 74.15ms | 5.43ms | 26.26ms | 28.51ms | 54.22ms | 70.54ms |
| comp_0to1 | 14.01ms | 28.90ms | 17.95ms | 15.03ms | 12.53ms | 25.52ms | 57.99ms |
| comp_1to1 | 19.77ms | 42.99ms | 15.16ms | 23.23ms | 23.25ms | 42.08ms | 59.62ms |
| comp_2to1 | 19.49ms | 25.04ms | 12.13ms | 30.48ms | 9.33ms | 27.57ms | 39.77ms |
| comp_4to1 | 4.36ms | 14.72ms | 11.50ms | 12.57ms | 1.96ms | 4.25ms | 17.41ms |
| comp_1000to1 | 4μs | 20μs | 28μs | 5μs | 8μs | 15μs | 45μs |
| comp_1to2 | 12.74ms | 40.83ms | 22.07ms | 14.12ms | 22.34ms | 35.93ms | 56.51ms |
| comp_1to4 | 18.75ms | 23.26ms | 34.43ms | 27.48ms | 15.63ms | 22.18ms | 49.96ms |
| comp_1to8 | 6.20ms | 24.94ms | 7.24ms | 6.68ms | 15.55ms | 21.19ms | 46.27ms |
| comp_1to1000 | 4.03ms | 15.19ms | 7.00ms | 4.57ms | 4.48ms | 14.54ms | 41.21ms |
| update_1to1 | 5.53ms | 26.30ms | 8.41ms | 84.89ms | 10.06ms | 16.76ms | 6.01ms |
| update_2to1 | 2.92ms | 12.06ms | 4.42ms | 43.87ms | 4.51ms | 8.40ms | 3.08ms |
| update_4to1 | 1.50ms | 7.26ms | 2.15ms | 19.75ms | 2.56ms | 4.19ms | 1.59ms |
| update_1000to1 | 24μs | 70μs | 21μs | 171μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.85ms | 12.44ms | 4.24ms | 41.51ms | 4.49ms | 8.54ms | 3.01ms |
| update_1to4 | 1.47ms | 5.51ms | 2.12ms | 20.01ms | 2.51ms | 4.18ms | 1.51ms |
| update_1to1000 | 51μs | 177μs | 983μs | 111μs | 46μs | 157μs | 408μs |
| cellx1000 | 9.37ms | 102.14ms | 11.29ms | N/A | 11.47ms | 15.96ms | 7.63ms |
| cellx2500 | 34.90ms | 311.90ms | 36.27ms | N/A | 47.40ms | 65.12ms | 37.92ms |
| cellx5000 | 105.17ms | 679.89ms | 143.56ms | N/A | 122.80ms | 179.72ms | 104.05ms |
| 10x5 - 2 sources - read 20.0% (simple) | 244.44ms | 2.02s | 440.53ms | 2.17s | 497.82ms | 323.68ms | 249.52ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.59ms | 1.50s | 270.95ms | 1.48s (partial) | 280.63ms | 219.27ms | 197.73ms |
| 1000x12 - 4 sources - dynamic (large) | 374.45ms | 1.94s | 3.72s | 2.55s (partial) | 3.93s | 466.60ms | 353.25ms |
| 1000x5 - 25 sources (wide dense) | 504.19ms | 3.51s | 2.80s | 4.36s | 3.41s | 828.10ms | 512.00ms |
| 5x500 - 3 sources (deep) | 202.07ms | 1.21s | 234.58ms | 1.93s | 225.61ms | 229.16ms | 207.52ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 294.07ms | 1.76s | 467.98ms | 1.93s (partial) | 479.23ms | 341.51ms | 262.91ms |

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
