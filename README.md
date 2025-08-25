# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.95s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.65s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.58s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.92s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.55s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.85s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.73ms | 2.31s | 200.58ms | 1.41s | 212.00ms | 252.98ms | 159.43ms (fail) |
| broadPropagation | 316.50ms | 4.44s | 461.58ms | 82.33ms (fail) | 454.72ms | 449.11ms | 6.55ms (fail) |
| deepPropagation | 99.89ms | 1.53s | 177.81ms | 1.93s (fail) | 176.06ms | 141.81ms | 144.63ms (fail) |
| diamond | 228.53ms | 2.38s | 283.83ms | 2.63s (fail) | 286.37ms | 315.32ms | 209.88ms (fail) |
| mux | 345.47ms | 1.87s | 402.06ms | 560.60ms (fail) | 406.71ms | 410.34ms | 190.04ms (fail) |
| repeatedObservers | 50.25ms | 237.23ms | 40.58ms | 381.75ms (fail) | 44.70ms | 91.01ms | 52.88ms (fail) |
| triangle | 80.66ms | 763.51ms | 99.79ms | 915.33ms (fail) | 101.10ms | 95.49ms | 84.07ms (fail) |
| unstable | 136.24ms | 347.89ms | 71.14ms | 614.32ms (fail) | 75.81ms | 168.33ms | 338.93ms (fail) |
| molBench | 489.00ms | 582.67ms | 479.65ms | 11.38ms | 487.07ms | 502.15ms | 968μs |
| create_signals | 26.85ms | 90.42ms | 4.68ms | 24.80ms | 27.14ms | 82.71ms | 62.91ms |
| comp_0to1 | 17.90ms | 17.18ms | 18.08ms | 14.39ms | 12.21ms | 26.74ms | 57.24ms |
| comp_1to1 | 24.64ms | 49.57ms | 13.15ms | 25.02ms | 19.96ms | 46.21ms | 58.40ms |
| comp_2to1 | 16.73ms | 24.11ms | 17.96ms | 29.49ms | 16.49ms | 27.77ms | 39.88ms |
| comp_4to1 | 4.48ms | 18.58ms | 13.52ms | 10.74ms | 2.02ms | 4.40ms | 17.44ms |
| comp_1000to1 | 18μs | 26μs | 6μs | 4μs | 5μs | 28μs | 45μs |
| comp_1to2 | 17.15ms | 38.07ms | 20.27ms | 13.40ms | 22.28ms | 36.89ms | 48.58ms |
| comp_1to4 | 14.45ms | 21.89ms | 25.44ms | 29.96ms | 9.65ms | 15.04ms | 46.96ms |
| comp_1to8 | 6.84ms | 24.86ms | 6.89ms | 6.74ms | 7.09ms | 20.95ms | 46.40ms |
| comp_1to1000 | 9.85ms | 15.43ms | 7.24ms | 5.93ms | 4.43ms | 14.56ms | 41.90ms |
| update_1to1 | 5.58ms | 25.14ms | 8.31ms | 81.46ms | 10.21ms | 16.82ms | 6.08ms |
| update_2to1 | 3.03ms | 14.05ms | 4.39ms | 40.70ms | 4.56ms | 8.45ms | 3.14ms |
| update_4to1 | 1.49ms | 6.29ms | 2.11ms | 19.47ms | 2.56ms | 4.22ms | 1.56ms |
| update_1000to1 | 24μs | 69μs | 20μs | 175μs | 25μs | 41μs | 15μs |
| update_1to2 | 2.85ms | 14.22ms | 4.07ms | 41.67ms | 4.54ms | 8.54ms | 3.06ms |
| update_1to4 | 1.60ms | 5.95ms | 2.13ms | 19.86ms | 2.54ms | 4.19ms | 1.57ms |
| update_1to1000 | 51μs | 176μs | 1.04ms | 93μs | 43μs | 144μs | 413μs |
| cellx1000 | 7.94ms | 92.77ms | 10.75ms | N/A | 11.98ms | 13.34ms | 6.30ms |
| cellx2500 | 24.53ms | 292.07ms | 40.33ms | N/A | 48.36ms | 52.10ms | 34.70ms |
| cellx5000 | 78.58ms | 636.64ms | 125.02ms | N/A | 103.06ms | 150.66ms | 82.01ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.28ms | 2.02s | 516.17ms | 2.18s | 510.60ms | 326.90ms | 257.04ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.76ms | 1.55s | 296.58ms | 1.49s (partial) | 279.67ms | 221.21ms | 203.92ms |
| 1000x12 - 4 sources - dynamic (large) | 358.39ms | 2.04s | 3.82s | 2.57s (partial) | 3.93s | 458.10ms | 367.81ms |
| 1000x5 - 25 sources (wide dense) | 510.35ms | 3.51s | 2.75s | 4.23s | 3.59s | 820.76ms | 488.99ms |
| 5x500 - 3 sources (deep) | 199.16ms | 1.16s | 251.36ms | 1.70s | 225.57ms | 229.23ms | 219.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 283.04ms | 1.80s | 480.75ms | 1.79s (partial) | 491.21ms | 345.05ms | 266.21ms |

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
