# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.83s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.27s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.27s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.62s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.80s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.27s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 159.19ms | 2.37s | 200.37ms | 1.42s | 209.32ms | 275.38ms | 148.66ms (fail) |
| broadPropagation | 318.73ms | 4.44s | 447.98ms | 83.36ms (fail) | 465.61ms | 452.56ms | 6.15ms (fail) |
| deepPropagation | 96.53ms | 1.55s | 176.54ms | 1.98s (fail) | 174.84ms | 145.68ms | 147.93ms (fail) |
| diamond | 215.45ms | 2.47s | 279.33ms | 2.67s (fail) | 278.85ms | 318.73ms | 187.68ms (fail) |
| mux | 339.01ms | 1.85s | 401.70ms | 572.74ms (fail) | 448.16ms | 405.65ms | 193.77ms (fail) |
| repeatedObservers | 50.45ms | 236.29ms | 40.17ms | 400.51ms (fail) | 44.73ms | 90.47ms | 54.92ms (fail) |
| triangle | 75.55ms | 783.69ms | 98.75ms | 870.80ms (fail) | 101.08ms | 96.48ms | 81.73ms (fail) |
| unstable | 136.18ms | 356.41ms | 70.08ms | 614.93ms (fail) | 79.40ms | 173.06ms | 336.60ms (fail) |
| molBench | 493.26ms | 576.48ms | 488.61ms | 13.22ms | 486.14ms | 489.95ms | 981μs |
| create_signals | 29.11ms | 70.96ms | 5.25ms | 25.17ms | 25.54ms | 95.41ms | 59.34ms |
| comp_0to1 | 11.18ms | 27.47ms | 17.28ms | 14.52ms | 11.04ms | 33.24ms | 52.99ms |
| comp_1to1 | 23.74ms | 33.04ms | 14.46ms | 26.99ms | 29.00ms | 31.07ms | 55.48ms |
| comp_2to1 | 15.84ms | 38.97ms | 20.63ms | 29.22ms | 9.64ms | 26.06ms | 36.33ms |
| comp_4to1 | 3.38ms | 14.89ms | 10.76ms | 10.14ms | 2.04ms | 4.43ms | 16.45ms |
| comp_1000to1 | 3μs | 16μs | 4μs | 6μs | 4μs | 14μs | 41μs |
| comp_1to2 | 12.73ms | 40.06ms | 15.40ms | 13.61ms | 23.29ms | 34.99ms | 45.43ms |
| comp_1to4 | 17.23ms | 19.40ms | 22.46ms | 23.92ms | 9.47ms | 19.97ms | 43.65ms |
| comp_1to8 | 6.46ms | 24.25ms | 7.80ms | 6.76ms | 9.43ms | 21.82ms | 43.40ms |
| comp_1to1000 | 4.33ms | 15.89ms | 6.37ms | 5.72ms | 7.22ms | 14.65ms | 38.57ms |
| update_1to1 | 5.54ms | 22.38ms | 8.85ms | 95.48ms | 9.03ms | 16.31ms | 5.67ms |
| update_2to1 | 5.33ms | 11.72ms | 4.30ms | 45.24ms | 4.62ms | 8.24ms | 2.86ms |
| update_4to1 | 1.54ms | 6.65ms | 2.20ms | 22.14ms | 2.26ms | 4.11ms | 1.47ms |
| update_1000to1 | 25μs | 69μs | 21μs | 199μs | 22μs | 41μs | 15μs |
| update_1to2 | 5.39ms | 10.81ms | 4.92ms | 46.38ms | 4.49ms | 8.27ms | 2.88ms |
| update_1to4 | 2.54ms | 7.13ms | 2.19ms | 23.18ms | 2.25ms | 4.06ms | 1.47ms |
| update_1to1000 | 53μs | 174μs | 1.03ms | 101μs | 48μs | 145μs | 375μs |
| cellx1000 | 8.41ms | 73.68ms | 9.76ms | N/A | 9.54ms | 11.31ms | 5.69ms |
| cellx2500 | 19.14ms | 248.67ms | 26.26ms | N/A | 30.92ms | 26.23ms | 22.19ms |
| cellx5000 | 42.80ms | 576.63ms | 67.83ms | N/A | 57.51ms | 63.08ms | 61.16ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.03ms | 2.01s | 437.66ms | 2.17s | 520.19ms | 336.11ms | 237.14ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 186.16ms | 1.50s | 266.88ms | 1.44s (partial) | 280.24ms | 224.64ms | 197.86ms |
| 1000x12 - 4 sources - dynamic (large) | 339.32ms | 1.92s | 3.72s | 2.48s (partial) | 4.01s | 461.77ms | 338.69ms |
| 1000x5 - 25 sources (wide dense) | 490.42ms | 3.62s | 2.72s | 4.03s | 3.56s | 814.19ms | 499.58ms |
| 5x500 - 3 sources (deep) | 193.98ms | 1.15s | 229.91ms | 1.35s | 226.73ms | 228.71ms | 205.65ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 280.23ms | 1.72s | 453.39ms | 1.78s (partial) | 478.54ms | 336.18ms | 259.51ms |

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
