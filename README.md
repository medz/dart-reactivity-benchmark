# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.24s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.47s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.24s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.29s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.33s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 168.46ms | 2.36s | 200.59ms | 1.39s | 211.23ms | 259.54ms | 153.13ms (fail) |
| broadPropagation | 317.98ms | 4.35s | 463.23ms | 80.52ms (fail) | 457.69ms | 456.98ms | 6.33ms (fail) |
| deepPropagation | 99.13ms | 1.54s | 171.25ms | 1.88s (fail) | 173.24ms | 148.30ms | 142.09ms (fail) |
| diamond | 231.82ms | 2.40s | 278.62ms | 2.59s (fail) | 286.66ms | 314.73ms | 184.78ms (fail) |
| mux | 339.61ms | 1.84s | 399.19ms | 562.72ms (fail) | 410.76ms | 396.91ms | 192.53ms (fail) |
| repeatedObservers | 50.49ms | 233.31ms | 42.73ms | 413.11ms (fail) | 46.53ms | 90.18ms | 52.61ms (fail) |
| triangle | 76.68ms | 765.33ms | 98.76ms | 946.98ms (fail) | 102.05ms | 109.11ms | 78.52ms (fail) |
| unstable | 141.25ms | 345.94ms | 74.20ms | 678.15ms (fail) | 76.31ms | 170.56ms | 338.61ms (fail) |
| molBench | 491.03ms | 583.48ms | 475.20ms | 11.64ms | 485.93ms | 499.89ms | 1.03ms |
| create_signals | 27.63ms | 68.65ms | 5.11ms | 23.30ms | 24.87ms | 99.05ms | 66.10ms |
| comp_0to1 | 9.02ms | 28.25ms | 17.74ms | 13.56ms | 10.94ms | 34.03ms | 58.72ms |
| comp_1to1 | 24.50ms | 36.85ms | 12.65ms | 23.17ms | 28.33ms | 53.81ms | 63.82ms |
| comp_2to1 | 18.73ms | 29.05ms | 12.38ms | 28.18ms | 18.87ms | 25.35ms | 44.79ms |
| comp_4to1 | 3.90ms | 15.82ms | 9.29ms | 10.72ms | 5.23ms | 4.43ms | 16.35ms |
| comp_1000to1 | 4μs | 20μs | 9μs | 6μs | 5μs | 15μs | 45μs |
| comp_1to2 | 11.88ms | 36.61ms | 17.71ms | 13.07ms | 14.47ms | 33.42ms | 48.16ms |
| comp_1to4 | 21.60ms | 28.10ms | 28.11ms | 21.72ms | 19.70ms | 19.44ms | 46.42ms |
| comp_1to8 | 7.69ms | 21.35ms | 7.08ms | 6.63ms | 7.20ms | 22.07ms | 45.75ms |
| comp_1to1000 | 4.52ms | 15.55ms | 7.17ms | 4.68ms | 4.32ms | 15.53ms | 41.51ms |
| update_1to1 | 5.58ms | 27.47ms | 8.35ms | 86.35ms | 10.15ms | 17.16ms | 6.01ms |
| update_2to1 | 2.87ms | 10.85ms | 4.42ms | 41.05ms | 4.52ms | 8.46ms | 3.11ms |
| update_4to1 | 1.44ms | 7.25ms | 2.05ms | 19.79ms | 2.57ms | 4.20ms | 1.55ms |
| update_1000to1 | 25μs | 69μs | 20μs | 173μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.79ms | 12.65ms | 4.16ms | 41.27ms | 4.50ms | 8.60ms | 3.07ms |
| update_1to4 | 1.49ms | 5.59ms | 2.07ms | 19.80ms | 2.57ms | 4.26ms | 1.56ms |
| update_1to1000 | 49μs | 187μs | 756μs | 91μs | 43μs | 148μs | 423μs |
| cellx1000 | 7.19ms | 79.22ms | 9.64ms | N/A | 9.74ms | 9.84ms | 5.18ms |
| cellx2500 | 19.64ms | 231.66ms | 25.89ms | N/A | 31.66ms | 27.57ms | 22.70ms |
| cellx5000 | 42.42ms | 572.49ms | 65.53ms | N/A | 61.34ms | 65.85ms | 57.70ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.56ms | 2.01s | 516.56ms | 2.20s | 498.04ms | 329.70ms | 292.74ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.72ms | 1.50s | 293.26ms | 1.47s (partial) | 292.75ms | 222.54ms | 196.23ms |
| 1000x12 - 4 sources - dynamic (large) | 343.84ms | 1.87s | 3.74s | 2.45s (partial) | 3.76s | 433.77ms | 339.49ms |
| 1000x5 - 25 sources (wide dense) | 498.23ms | 3.49s | 2.76s | 4.11s | 3.47s | 792.63ms | 511.59ms |
| 5x500 - 3 sources (deep) | 199.52ms | 1.11s | 244.41ms | 1.39s | 228.97ms | 227.09ms | 206.16ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 283.04ms | 1.67s | 476.26ms | 1.80s (partial) | 485.57ms | 335.91ms | 258.51ms |

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
