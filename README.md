# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.37s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.10s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.63s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.53s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.56s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.36s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 141.47ms | 2.39s | 200.03ms | 1.44s | 215.42ms | 239.32ms | 149.43ms (fail) |
| broadPropagation | 277.04ms | 4.33s | 461.89ms | 84.43ms (fail) | 456.68ms | 438.88ms | 6.58ms (fail) |
| deepPropagation | 80.65ms | 1.55s | 181.42ms | 1.94s (fail) | 177.21ms | 132.16ms | 142.20ms (fail) |
| diamond | 178.90ms | 2.41s | 281.68ms | 2.70s (fail) | 281.24ms | 312.61ms | 188.51ms (fail) |
| mux | 328.60ms | 1.84s | 394.27ms | 567.72ms (fail) | 406.04ms | 406.58ms | 192.61ms (fail) |
| repeatedObservers | 49.14ms | 231.78ms | 40.05ms | 401.25ms (fail) | 46.26ms | 88.61ms | 53.09ms (fail) |
| triangle | 67.24ms | 763.63ms | 98.81ms | 931.09ms (fail) | 102.54ms | 107.56ms | 81.91ms (fail) |
| unstable | 61.17ms | 341.03ms | 74.11ms | 646.11ms (fail) | 75.88ms | 101.42ms | 338.19ms (fail) |
| molBench | 480.23ms | 584.86ms | 479.81ms | 11.45ms | 485.81ms | 497.86ms | 1.04ms |
| create_signals | 22.73ms | 60.23ms | 4.68ms | 23.31ms | 25.85ms | 81.03ms | 72.70ms |
| comp_0to1 | 17.69ms | 20.17ms | 18.17ms | 13.36ms | 11.92ms | 23.42ms | 62.13ms |
| comp_1to1 | 18.35ms | 29.25ms | 15.05ms | 27.45ms | 30.02ms | 35.97ms | 58.47ms |
| comp_2to1 | 10.09ms | 20.92ms | 16.67ms | 32.54ms | 18.09ms | 28.18ms | 39.06ms |
| comp_4to1 | 6.46ms | 14.44ms | 12.31ms | 7.31ms | 4.00ms | 21.05ms | 17.57ms |
| comp_1000to1 | 3μs | 22μs | 6μs | 3μs | 4μs | 26μs | 44μs |
| comp_1to2 | 8.35ms | 37.38ms | 14.32ms | 10.73ms | 18.48ms | 24.55ms | 48.45ms |
| comp_1to4 | 16.91ms | 25.72ms | 21.35ms | 19.48ms | 10.95ms | 29.33ms | 46.84ms |
| comp_1to8 | 5.88ms | 23.96ms | 6.40ms | 5.18ms | 6.67ms | 20.14ms | 45.98ms |
| comp_1to1000 | 4.76ms | 15.25ms | 6.46ms | 4.65ms | 4.48ms | 13.70ms | 41.49ms |
| update_1to1 | 5.48ms | 28.49ms | 8.35ms | 82.36ms | 10.33ms | 14.59ms | 6.03ms |
| update_2to1 | 2.85ms | 11.25ms | 4.38ms | 41.98ms | 4.55ms | 7.17ms | 3.14ms |
| update_4to1 | 1.38ms | 7.14ms | 2.08ms | 20.02ms | 2.54ms | 3.60ms | 1.57ms |
| update_1000to1 | 13μs | 69μs | 20μs | 204μs | 25μs | 37μs | 15μs |
| update_1to2 | 2.65ms | 14.53ms | 4.07ms | 41.55ms | 4.51ms | 7.37ms | 3.05ms |
| update_1to4 | 1.43ms | 6.89ms | 2.07ms | 20.19ms | 2.51ms | 3.63ms | 1.56ms |
| update_1to1000 | 49μs | 172μs | 324μs | 158μs | 42μs | 148μs | 421μs |
| cellx1000 | 6.85ms | 70.24ms | 9.60ms | N/A | 9.73ms | 9.33ms | 5.36ms |
| cellx2500 | 19.13ms | 241.38ms | 25.88ms | N/A | 34.05ms | 29.03ms | 30.86ms |
| cellx5000 | 66.05ms | 566.70ms | 67.47ms | N/A | 74.94ms | 64.16ms | 83.58ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.60ms | 2.04s | 445.36ms | 2.18s | 509.17ms | 318.34ms | 269.27ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.40ms | 1.52s | 282.11ms | 1.43s (partial) | 281.52ms | 220.48ms | 204.53ms |
| 1000x12 - 4 sources - dynamic (large) | 291.38ms | 1.92s | 3.73s | 2.53s (partial) | 4.03s | 443.49ms | 369.89ms |
| 1000x5 - 25 sources (wide dense) | 411.71ms | 3.50s | 2.74s | 4.06s | 3.57s | 809.88ms | 519.66ms |
| 5x500 - 3 sources (deep) | 181.13ms | 1.16s | 229.38ms | 1.32s | 224.88ms | 230.49ms | 210.86ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 249.40ms | 1.74s | 463.68ms | 1.76s (partial) | 491.89ms | 338.70ms | 268.67ms |

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
