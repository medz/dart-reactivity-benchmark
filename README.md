# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.46s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.37s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.85s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.59s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.16s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.59s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 25.01s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 141.07ms | 2.35s | 206.03ms | 1.46s | 212.66ms | 237.76ms | 149.16ms (fail) |
| broadPropagation | 271.31ms | 4.27s | 466.35ms | 86.32ms (fail) | 468.62ms | 442.54ms | 6.75ms (fail) |
| deepPropagation | 80.56ms | 1.58s | 182.22ms | 2.01s (fail) | 170.09ms | 129.78ms | 149.23ms (fail) |
| diamond | 190.07ms | 2.44s | 283.38ms | 2.61s (fail) | 285.63ms | 309.92ms | 209.93ms (fail) |
| mux | 326.69ms | 1.92s | 402.97ms | 563.29ms (fail) | 414.76ms | 405.24ms | 202.44ms (fail) |
| repeatedObservers | 50.50ms | 232.42ms | 41.54ms | 386.77ms (fail) | 46.68ms | 88.89ms | 52.72ms (fail) |
| triangle | 67.46ms | 762.58ms | 103.61ms | 968.70ms (fail) | 101.59ms | 96.04ms | 79.34ms (fail) |
| unstable | 61.70ms | 342.26ms | 74.85ms | 620.89ms (fail) | 76.14ms | 103.50ms | 345.00ms (fail) |
| molBench | 485.41ms | 596.62ms | 490.82ms | 11.48ms | 488.38ms | 501.61ms | 1.00ms |
| create_signals | 26.56ms | 79.89ms | 17.33ms | 26.23ms | 29.77ms | 89.72ms | 71.73ms |
| comp_0to1 | 6.36ms | 26.32ms | 18.43ms | 15.34ms | 13.14ms | 30.21ms | 63.41ms |
| comp_1to1 | 13.05ms | 18.48ms | 8.53ms | 29.26ms | 31.07ms | 38.28ms | 62.34ms |
| comp_2to1 | 8.67ms | 13.84ms | 11.06ms | 30.62ms | 13.21ms | 18.39ms | 47.76ms |
| comp_4to1 | 6.99ms | 18.59ms | 15.02ms | 11.83ms | 4.30ms | 28.44ms | 18.96ms |
| comp_1000to1 | 4μs | 32μs | 5μs | 8μs | 6μs | 18μs | 47μs |
| comp_1to2 | 13.66ms | 37.46ms | 19.96ms | 14.35ms | 15.77ms | 23.24ms | 49.09ms |
| comp_1to4 | 21.57ms | 24.63ms | 29.57ms | 34.35ms | 14.76ms | 40.76ms | 47.05ms |
| comp_1to8 | 4.55ms | 27.61ms | 8.07ms | 5.88ms | 8.62ms | 27.07ms | 46.28ms |
| comp_1to1000 | 3.65ms | 15.96ms | 6.06ms | 4.91ms | 4.66ms | 15.52ms | 41.07ms |
| update_1to1 | 5.29ms | 28.66ms | 9.30ms | 80.42ms | 10.14ms | 14.52ms | 6.01ms |
| update_2to1 | 5.99ms | 14.35ms | 5.30ms | 42.15ms | 4.58ms | 7.18ms | 3.10ms |
| update_4to1 | 1.41ms | 7.21ms | 2.31ms | 19.93ms | 2.57ms | 3.64ms | 1.55ms |
| update_1000to1 | 13μs | 69μs | 23μs | 194μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.62ms | 14.16ms | 4.59ms | 41.58ms | 4.61ms | 7.51ms | 3.03ms |
| update_1to4 | 1.46ms | 7.15ms | 2.49ms | 20.24ms | 2.52ms | 3.62ms | 1.55ms |
| update_1to1000 | 51μs | 191μs | 173μs | 130μs | 47μs | 153μs | 417μs |
| cellx1000 | 8.97ms | 104.53ms | 13.90ms | N/A | 13.87ms | 18.77ms | 9.46ms |
| cellx2500 | 32.00ms | 360.70ms | 54.71ms | N/A | 67.54ms | 71.37ms | 43.61ms |
| cellx5000 | 112.16ms | 735.45ms | 159.28ms | N/A | 163.05ms | 189.79ms | 104.76ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.26ms | 2.07s | 448.15ms | 2.24s | 509.65ms | 318.80ms | 236.91ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.08ms | 1.52s | 282.39ms | 1.52s (partial) | 279.89ms | 222.62ms | 197.50ms |
| 1000x12 - 4 sources - dynamic (large) | 305.81ms | 1.84s | 3.86s | 2.68s (partial) | 3.72s | 464.00ms | 358.82ms |
| 1000x5 - 25 sources (wide dense) | 413.81ms | 3.55s | 2.93s | 4.94s | 3.71s | 838.31ms | 509.97ms |
| 5x500 - 3 sources (deep) | 178.80ms | 1.31s | 229.56ms | 2.44s | 223.84ms | 231.47ms | 209.31ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 255.20ms | 1.84s | 468.08ms | 2.10s (partial) | 474.87ms | 353.26ms | 263.56ms |

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
