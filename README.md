# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.61s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.54s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.41s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.73s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.12ms | 2.41s | 197.99ms | 1.38s | 205.50ms | 293.14ms | 153.00ms (fail) |
| broadPropagation | 314.83ms | 4.48s | 449.28ms | 81.83ms (fail) | 458.29ms | 524.68ms | 6.25ms (fail) |
| deepPropagation | 95.21ms | 1.62s | 179.67ms | 1.98s (fail) | 176.39ms | 171.82ms | 141.80ms (fail) |
| diamond | 215.37ms | 2.54s | 282.87ms | 2.69s (fail) | 282.20ms | 350.76ms | 188.17ms (fail) |
| mux | 341.30ms | 1.85s | 400.30ms | 568.85ms (fail) | 409.60ms | 439.74ms | 194.99ms (fail) |
| repeatedObservers | 50.89ms | 236.82ms | 40.13ms | 385.41ms (fail) | 46.41ms | 87.35ms | 52.77ms (fail) |
| triangle | 74.84ms | 800.45ms | 98.30ms | 915.26ms (fail) | 101.14ms | 115.65ms | 81.93ms (fail) |
| unstable | 70.61ms | 357.73ms | 69.87ms | 611.51ms (fail) | 79.65ms | 102.46ms | 335.45ms (fail) |
| molBench | 487.69ms | 584.67ms | 489.52ms | 11.40ms | 486.15ms | 501.83ms | 860μs |
| create_signals | 27.26ms | 75.83ms | 5.67ms | 25.05ms | 26.62ms | 72.18ms | 64.05ms |
| comp_0to1 | 9.54ms | 29.83ms | 17.43ms | 15.65ms | 12.48ms | 34.49ms | 54.20ms |
| comp_1to1 | 20.03ms | 18.54ms | 12.50ms | 26.50ms | 29.35ms | 42.45ms | 60.45ms |
| comp_2to1 | 15.83ms | 18.57ms | 10.35ms | 27.00ms | 16.30ms | 13.66ms | 37.49ms |
| comp_4to1 | 3.35ms | 28.93ms | 8.09ms | 3.04ms | 1.92ms | 34.63ms | 16.90ms |
| comp_1000to1 | 6μs | 16μs | 8μs | 4μs | 5μs | 33μs | 42μs |
| comp_1to2 | 18.50ms | 38.40ms | 17.61ms | 15.37ms | 21.73ms | 30.65ms | 45.59ms |
| comp_1to4 | 19.01ms | 23.98ms | 33.83ms | 28.04ms | 9.57ms | 26.86ms | 47.83ms |
| comp_1to8 | 5.97ms | 27.28ms | 8.98ms | 8.54ms | 6.39ms | 18.31ms | 44.59ms |
| comp_1to1000 | 3.31ms | 16.41ms | 6.18ms | 4.49ms | 4.25ms | 16.86ms | 38.80ms |
| update_1to1 | 5.78ms | 25.55ms | 8.90ms | 82.08ms | 8.94ms | 16.67ms | 5.95ms |
| update_2to1 | 2.83ms | 11.00ms | 4.34ms | 41.61ms | 4.47ms | 7.68ms | 2.96ms |
| update_4to1 | 1.43ms | 7.36ms | 2.22ms | 20.71ms | 2.22ms | 3.83ms | 1.50ms |
| update_1000to1 | 14μs | 71μs | 21μs | 177μs | 22μs | 38μs | 15μs |
| update_1to2 | 3.06ms | 12.81ms | 4.61ms | 45.71ms | 4.48ms | 7.67ms | 3.00ms |
| update_1to4 | 1.50ms | 6.88ms | 2.26ms | 20.55ms | 2.21ms | 3.85ms | 1.50ms |
| update_1to1000 | 51μs | 182μs | 277μs | 94μs | 43μs | 169μs | 380μs |
| cellx1000 | 7.86ms | 94.42ms | 11.62ms | N/A | 9.92ms | 17.14ms | 6.94ms |
| cellx2500 | 33.69ms | 301.64ms | 39.33ms | N/A | 39.40ms | 63.69ms | 34.82ms |
| cellx5000 | 51.90ms | 641.71ms | 98.44ms | N/A | 97.59ms | 157.06ms | 75.84ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.18ms | 2.07s | 437.78ms | 2.23s | 518.64ms | 362.74ms | 247.15ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.66ms | 1.60s | 269.04ms | 1.46s (partial) | 281.44ms | 245.00ms | 197.22ms |
| 1000x12 - 4 sources - dynamic (large) | 348.63ms | 1.93s | 3.71s | 2.50s (partial) | 3.94s | 474.67ms | 350.60ms |
| 1000x5 - 25 sources (wide dense) | 493.07ms | 3.58s | 2.73s | 4.36s | 3.54s | 717.61ms | 477.64ms |
| 5x500 - 3 sources (deep) | 194.17ms | 1.21s | 228.37ms | 1.44s | 227.77ms | 268.46ms | 204.93ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 282.10ms | 1.76s | 444.31ms | 1.76s (partial) | 482.26ms | 384.81ms | 259.29ms |

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
