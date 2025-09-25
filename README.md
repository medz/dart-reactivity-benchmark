# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.20s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.38s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.21s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.57s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.29s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.02ms | 2.36s | 200.17ms | 1.55s | 210.96ms | 255.08ms | 151.62ms (fail) |
| broadPropagation | 316.50ms | 4.41s | 461.13ms | 93.44ms (fail) | 464.53ms | 465.85ms | 6.32ms (fail) |
| deepPropagation | 100.97ms | 1.56s | 179.44ms | 2.16s (fail) | 179.05ms | 145.03ms | 143.38ms (fail) |
| diamond | 228.26ms | 2.41s | 283.94ms | 3.03s (fail) | 283.81ms | 310.89ms | 189.67ms (fail) |
| mux | 342.66ms | 1.84s | 389.45ms | 573.87ms (fail) | 414.78ms | 421.08ms | 191.94ms (fail) |
| repeatedObservers | 50.47ms | 232.08ms | 40.05ms | 410.64ms (fail) | 46.03ms | 90.81ms | 52.82ms (fail) |
| triangle | 75.83ms | 765.12ms | 98.73ms | 999.41ms (fail) | 105.41ms | 97.57ms | 78.67ms (fail) |
| unstable | 139.43ms | 343.13ms | 74.22ms | 697.90ms (fail) | 75.96ms | 166.96ms | 339.45ms (fail) |
| molBench | 484.32ms | 582.76ms | 486.26ms | 11.90ms | 485.41ms | 501.16ms | 994μs |
| create_signals | 27.16ms | 76.22ms | 5.56ms | 24.43ms | 27.22ms | 58.02ms | 63.81ms |
| comp_0to1 | 9.36ms | 25.80ms | 19.37ms | 13.92ms | 12.06ms | 24.27ms | 59.87ms |
| comp_1to1 | 22.26ms | 35.07ms | 12.69ms | 27.64ms | 28.09ms | 39.14ms | 56.63ms |
| comp_2to1 | 19.14ms | 30.63ms | 17.63ms | 24.93ms | 8.87ms | 30.79ms | 37.27ms |
| comp_4to1 | 1.60ms | 36.34ms | 16.07ms | 7.49ms | 2.08ms | 4.44ms | 16.97ms |
| comp_1000to1 | 6μs | 17μs | 5μs | 3μs | 4μs | 19μs | 45μs |
| comp_1to2 | 11.47ms | 37.05ms | 33.68ms | 10.91ms | 25.98ms | 41.71ms | 47.74ms |
| comp_1to4 | 19.80ms | 25.23ms | 22.67ms | 24.84ms | 9.73ms | 21.09ms | 46.02ms |
| comp_1to8 | 9.70ms | 23.46ms | 11.03ms | 5.26ms | 12.48ms | 19.03ms | 45.10ms |
| comp_1to1000 | 3.72ms | 15.50ms | 8.27ms | 4.66ms | 7.18ms | 14.33ms | 41.01ms |
| update_1to1 | 5.50ms | 26.36ms | 8.31ms | 88.50ms | 10.22ms | 17.11ms | 6.04ms |
| update_2to1 | 2.83ms | 14.13ms | 4.44ms | 42.53ms | 4.51ms | 8.46ms | 3.10ms |
| update_4to1 | 1.44ms | 6.72ms | 2.12ms | 20.45ms | 2.58ms | 4.21ms | 1.50ms |
| update_1000to1 | 13μs | 69μs | 20μs | 175μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.80ms | 11.56ms | 6.62ms | 44.30ms | 4.56ms | 8.52ms | 3.02ms |
| update_1to4 | 1.46ms | 5.78ms | 2.13ms | 20.70ms | 2.57ms | 4.31ms | 1.50ms |
| update_1to1000 | 49μs | 199μs | 1.25ms | 93μs | 43μs | 144μs | 408μs |
| cellx1000 | 7.17ms | 71.50ms | 9.78ms | N/A | 9.66ms | 9.99ms | 5.28ms |
| cellx2500 | 19.24ms | 251.49ms | 26.32ms | N/A | 31.34ms | 29.18ms | 21.84ms |
| cellx5000 | 45.63ms | 600.00ms | 67.66ms | N/A | 59.97ms | 66.19ms | 52.61ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.58ms | 2.00s | 453.44ms | 2.41s | 512.44ms | 326.68ms | 236.61ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.37ms | 1.53s | 270.69ms | 1.57s (partial) | 280.66ms | 219.57ms | 196.34ms |
| 1000x12 - 4 sources - dynamic (large) | 341.02ms | 1.88s | 3.74s | 2.66s (partial) | 3.76s | 434.53ms | 341.14ms |
| 1000x5 - 25 sources (wide dense) | 496.04ms | 3.51s | 2.74s | 4.38s | 3.43s | 793.67ms | 512.31ms |
| 5x500 - 3 sources (deep) | 202.50ms | 1.13s | 230.19ms | 1.44s | 225.62ms | 226.57ms | 208.22ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 278.37ms | 1.72s | 458.75ms | 1.93s (partial) | 479.76ms | 342.89ms | 263.22ms |

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
