# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.19s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.33s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.85s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.71s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 163.67ms | 2.39s | 201.60ms | 1.43s | 213.96ms | 256.11ms | 157.54ms (fail) |
| broadPropagation | 316.56ms | 4.51s | 471.03ms | 81.47ms (fail) | 465.91ms | 455.99ms | 6.43ms (fail) |
| deepPropagation | 100.51ms | 1.55s | 176.12ms | 1.93s (fail) | 175.19ms | 137.94ms | 141.41ms (fail) |
| diamond | 229.58ms | 2.40s | 276.90ms | 2.64s (fail) | 282.20ms | 312.36ms | 215.97ms (fail) |
| mux | 338.72ms | 1.85s | 394.48ms | 566.87ms (fail) | 415.05ms | 397.40ms | 193.07ms (fail) |
| repeatedObservers | 50.51ms | 232.42ms | 40.64ms | 392.07ms (fail) | 46.20ms | 92.10ms | 52.93ms (fail) |
| triangle | 78.11ms | 789.32ms | 98.70ms | 977.05ms (fail) | 105.45ms | 99.35ms | 78.66ms (fail) |
| unstable | 138.25ms | 346.45ms | 74.22ms | 631.08ms (fail) | 76.51ms | 170.97ms | 376.39ms (fail) |
| molBench | 487.49ms | 585.74ms | 487.20ms | 11.16ms | 484.80ms | 501.31ms | 989μs |
| create_signals | 31.12ms | 57.80ms | 4.58ms | 24.16ms | 24.53ms | 76.34ms | 61.18ms |
| comp_0to1 | 10.87ms | 18.83ms | 21.84ms | 14.17ms | 11.50ms | 25.99ms | 55.63ms |
| comp_1to1 | 31.37ms | 31.32ms | 12.43ms | 23.38ms | 27.42ms | 42.47ms | 56.64ms |
| comp_2to1 | 19.09ms | 14.82ms | 17.43ms | 24.31ms | 10.20ms | 8.65ms | 38.00ms |
| comp_4to1 | 1.73ms | 14.41ms | 12.94ms | 4.60ms | 1.99ms | 14.66ms | 16.63ms |
| comp_1000to1 | 4μs | 22μs | 7μs | 4μs | 5μs | 16μs | 44μs |
| comp_1to2 | 9.41ms | 37.47ms | 22.50ms | 13.27ms | 17.72ms | 37.45ms | 47.55ms |
| comp_1to4 | 14.07ms | 25.71ms | 21.74ms | 22.86ms | 7.15ms | 21.09ms | 46.18ms |
| comp_1to8 | 8.85ms | 24.24ms | 6.59ms | 5.04ms | 6.67ms | 18.84ms | 45.39ms |
| comp_1to1000 | 8.82ms | 16.41ms | 6.63ms | 4.13ms | 4.33ms | 14.51ms | 41.12ms |
| update_1to1 | 5.56ms | 25.56ms | 8.44ms | 88.30ms | 10.23ms | 16.82ms | 6.02ms |
| update_2to1 | 2.77ms | 11.71ms | 4.39ms | 43.21ms | 4.50ms | 8.41ms | 3.10ms |
| update_4to1 | 1.37ms | 6.33ms | 2.12ms | 20.12ms | 2.53ms | 4.23ms | 1.56ms |
| update_1000to1 | 13μs | 69μs | 21μs | 195μs | 35μs | 42μs | 15μs |
| update_1to2 | 2.72ms | 12.30ms | 4.08ms | 42.11ms | 4.56ms | 8.48ms | 3.04ms |
| update_1to4 | 1.40ms | 5.99ms | 2.10ms | 20.93ms | 2.51ms | 4.19ms | 1.56ms |
| update_1to1000 | 45μs | 175μs | 836μs | 153μs | 42μs | 143μs | 412μs |
| cellx1000 | 7.16ms | 71.58ms | 9.67ms | N/A | 9.68ms | 11.72ms | 5.07ms |
| cellx2500 | 19.23ms | 247.42ms | 25.66ms | N/A | 31.69ms | 28.91ms | 21.38ms |
| cellx5000 | 45.30ms | 579.82ms | 67.07ms | N/A | 64.23ms | 69.47ms | 62.53ms |
| 10x5 - 2 sources - read 20.0% (simple) | 248.07ms | 2.07s | 449.75ms | 2.22s | 510.36ms | 329.25ms | 248.76ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.47ms | 1.52s | 275.25ms | 1.51s (partial) | 281.12ms | 220.33ms | 198.82ms |
| 1000x12 - 4 sources - dynamic (large) | 347.28ms | 1.97s | 3.72s | 2.53s (partial) | 3.79s | 433.34ms | 340.28ms |
| 1000x5 - 25 sources (wide dense) | 497.98ms | 3.50s | 2.73s | 4.23s | 3.43s | 802.15ms | 521.32ms |
| 5x500 - 3 sources (deep) | 200.19ms | 1.17s | 231.08ms | 1.41s | 224.20ms | 227.96ms | 206.32ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 282.25ms | 1.76s | 461.75ms | 1.80s (partial) | 476.72ms | 338.88ms | 258.08ms |

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
