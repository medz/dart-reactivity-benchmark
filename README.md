# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.28s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.67s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.50s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.46s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 125.28ms | 2.42s | 208.08ms | 1.40s | 218.83ms | 241.50ms | 165.65ms |
| broadPropagation | 243.50ms | 4.42s | 457.19ms | 82.58ms (fail) | 461.32ms | 448.00ms | 395.14ms |
| deepPropagation | 78.80ms | 1.53s | 179.59ms | 1.94s (fail) | 169.36ms | 130.84ms | 150.02ms |
| diamond | 152.67ms | 2.44s | 284.08ms | 2.67s (fail) | 276.93ms | 311.33ms | 219.22ms |
| mux | 294.79ms | 1.86s | 374.95ms | 544.32ms (fail) | 386.14ms | 375.22ms | 357.29ms |
| repeatedObservers | 26.93ms | 232.33ms | 40.47ms | 386.44ms (fail) | 46.12ms | 89.72ms | 59.16ms |
| triangle | 65.68ms | 763.86ms | 100.12ms | 866.31ms (fail) | 105.47ms | 96.92ms | 86.06ms |
| unstable | 48.01ms | 347.93ms | 70.25ms | 613.58ms (fail) | 78.27ms | 104.25ms | 344.69ms |
| molBench | 484.65ms | 591.55ms | 482.79ms | 11.07ms | 495.26ms | 496.85ms | 494.68ms |
| create_signals | 8.81ms | 67.83ms | 5.60ms | 24.81ms | 25.94ms | 52.46ms | 64.04ms |
| comp_0to1 | 9.50ms | 27.99ms | 17.74ms | 14.01ms | 12.66ms | 23.63ms | 56.17ms |
| comp_1to1 | 28.16ms | 50.37ms | 11.41ms | 21.25ms | 27.81ms | 44.51ms | 54.38ms |
| comp_2to1 | 2.54ms | 21.71ms | 18.25ms | 23.85ms | 8.17ms | 31.84ms | 43.71ms |
| comp_4to1 | 1.66ms | 17.27ms | 8.30ms | 6.16ms | 2.80ms | 29.68ms | 16.79ms |
| comp_1000to1 | 4μs | 21μs | 5μs | 4μs | 8μs | 15μs | 39μs |
| comp_1to2 | 21.06ms | 36.35ms | 15.78ms | 14.28ms | 20.47ms | 28.70ms | 44.73ms |
| comp_1to4 | 16.42ms | 23.92ms | 24.53ms | 25.34ms | 7.02ms | 28.98ms | 45.04ms |
| comp_1to8 | 3.93ms | 24.28ms | 7.21ms | 4.94ms | 6.34ms | 23.66ms | 42.48ms |
| comp_1to1000 | 3.27ms | 22.50ms | 4.81ms | 4.31ms | 4.17ms | 14.15ms | 38.25ms |
| update_1to1 | 6.26ms | 26.74ms | 8.91ms | 78.74ms | 9.31ms | 14.13ms | 6.14ms |
| update_2to1 | 3.39ms | 13.72ms | 4.38ms | 42.66ms | 4.73ms | 6.93ms | 3.08ms |
| update_4to1 | 1.54ms | 7.23ms | 2.20ms | 19.84ms | 2.38ms | 3.63ms | 1.60ms |
| update_1000to1 | 15μs | 69μs | 22μs | 179μs | 23μs | 36μs | 15μs |
| update_1to2 | 4.41ms | 13.59ms | 4.44ms | 40.65ms | 4.63ms | 6.99ms | 3.08ms |
| update_1to4 | 1.22ms | 6.94ms | 2.23ms | 19.72ms | 2.54ms | 3.51ms | 1.55ms |
| update_1to1000 | 31μs | 161μs | 155μs | 144μs | 43μs | 273μs | 378μs |
| cellx1000 | 5.73ms | 79.41ms | 9.62ms | N/A | 9.91ms | 9.76ms | 12.07ms |
| cellx2500 | 17.26ms | 273.90ms | 27.64ms | N/A | 33.36ms | 33.64ms | 42.79ms |
| cellx5000 | 44.71ms | 595.98ms | 85.76ms | N/A | 77.44ms | 96.40ms | 133.17ms |
| 10x5 - 2 sources - read 20.0% (simple) | 180.98ms | 1.97s | 431.92ms | 2.20s | 506.78ms | 322.20ms | 242.96ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 157.33ms | 1.48s | 270.08ms | 1.49s (partial) | 277.56ms | 222.31ms | 197.17ms |
| 1000x12 - 4 sources - dynamic (large) | 299.00ms | 1.93s | 3.67s | 2.52s (partial) | 3.78s | 540.81ms | 377.64ms |
| 1000x5 - 25 sources (wide dense) | 543.49ms | 3.45s | 2.51s | 4.22s | 3.38s | 818.15ms | 497.01ms |
| 5x500 - 3 sources (deep) | 155.96ms | 1.12s | 229.06ms | 1.41s | 226.91ms | 229.69ms | 209.14ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 239.56ms | 1.64s | 456.69ms | 1.77s (partial) | 487.23ms | 341.58ms | 265.05ms |

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
