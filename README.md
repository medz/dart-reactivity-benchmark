# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.97s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.46s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.48s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.91s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.60s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.50s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.13ms | 2.34s | 201.14ms | 1.40s | 211.03ms | 258.46ms | 159.70ms (fail) |
| broadPropagation | 317.97ms | 4.54s | 463.97ms | 83.66ms (fail) | 457.57ms | 452.04ms | 6.48ms (fail) |
| deepPropagation | 98.21ms | 1.57s | 178.70ms | 1.93s (fail) | 177.44ms | 143.04ms | 148.20ms (fail) |
| diamond | 227.42ms | 2.45s | 283.49ms | 2.62s (fail) | 286.61ms | 312.71ms | 187.15ms (fail) |
| mux | 339.00ms | 1.87s | 389.29ms | 563.93ms (fail) | 422.06ms | 398.75ms | 197.85ms (fail) |
| repeatedObservers | 50.55ms | 233.77ms | 40.28ms | 385.46ms (fail) | 46.19ms | 91.36ms | 52.80ms (fail) |
| triangle | 78.10ms | 778.25ms | 99.96ms | 906.97ms (fail) | 99.76ms | 99.16ms | 79.26ms (fail) |
| unstable | 139.98ms | 350.10ms | 74.31ms | 618.33ms (fail) | 74.15ms | 168.72ms | 339.84ms (fail) |
| molBench | 490.54ms | 584.32ms | 485.71ms | 11.31ms | 485.89ms | 501.64ms | 1.09ms |
| create_signals | 27.83ms | 54.42ms | 5.86ms | 25.52ms | 26.59ms | 83.45ms | 69.72ms |
| comp_0to1 | 10.03ms | 19.61ms | 18.53ms | 14.41ms | 12.21ms | 28.04ms | 65.37ms |
| comp_1to1 | 25.71ms | 32.36ms | 12.57ms | 23.66ms | 21.91ms | 43.95ms | 59.43ms |
| comp_2to1 | 16.66ms | 21.71ms | 12.45ms | 26.06ms | 9.26ms | 21.38ms | 39.03ms |
| comp_4to1 | 4.18ms | 15.98ms | 11.91ms | 3.20ms | 1.83ms | 13.16ms | 17.53ms |
| comp_1000to1 | 4μs | 23μs | 5μs | 4μs | 5μs | 16μs | 45μs |
| comp_1to2 | 13.75ms | 39.15ms | 26.58ms | 11.10ms | 19.57ms | 37.60ms | 49.32ms |
| comp_1to4 | 17.76ms | 28.20ms | 26.37ms | 25.86ms | 10.02ms | 22.08ms | 48.02ms |
| comp_1to8 | 7.29ms | 26.10ms | 16.42ms | 5.29ms | 6.81ms | 25.02ms | 47.10ms |
| comp_1to1000 | 4.57ms | 15.49ms | 6.33ms | 4.58ms | 4.48ms | 15.79ms | 42.63ms |
| update_1to1 | 5.51ms | 26.41ms | 8.37ms | 84.42ms | 10.33ms | 18.46ms | 6.27ms |
| update_2to1 | 2.81ms | 14.56ms | 4.34ms | 42.39ms | 4.54ms | 9.26ms | 3.25ms |
| update_4to1 | 1.42ms | 7.03ms | 2.10ms | 20.37ms | 2.57ms | 4.64ms | 1.62ms |
| update_1000to1 | 13μs | 69μs | 20μs | 195μs | 25μs | 46μs | 16μs |
| update_1to2 | 2.75ms | 11.97ms | 4.08ms | 42.69ms | 4.50ms | 9.28ms | 3.15ms |
| update_1to4 | 1.39ms | 7.25ms | 2.08ms | 20.78ms | 2.54ms | 4.61ms | 1.62ms |
| update_1to1000 | 51μs | 171μs | 44μs | 109μs | 43μs | 152μs | 429μs |
| cellx1000 | 8.27ms | 89.94ms | 11.57ms | N/A | 11.36ms | 17.93ms | 5.23ms |
| cellx2500 | 31.21ms | 293.13ms | 43.74ms | N/A | 49.34ms | 86.78ms | 25.18ms |
| cellx5000 | 93.21ms | 640.62ms | 137.78ms | N/A | 121.27ms | 194.28ms | 89.57ms |
| 10x5 - 2 sources - read 20.0% (simple) | 240.09ms | 2.02s | 447.14ms | 2.13s | 507.86ms | 337.89ms | 240.68ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.18ms | 1.54s | 270.36ms | 1.45s (partial) | 279.56ms | 222.18ms | 207.24ms |
| 1000x12 - 4 sources - dynamic (large) | 364.40ms | 1.89s | 3.77s | 2.53s (partial) | 3.55s | 450.26ms | 366.54ms |
| 1000x5 - 25 sources (wide dense) | 500.50ms | 3.50s | 2.74s | 4.27s | 3.62s | 811.82ms | 558.63ms |
| 5x500 - 3 sources (deep) | 206.56ms | 1.16s | 235.57ms | 1.47s | 225.77ms | 228.03ms | 205.01ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 296.88ms | 1.75s | 459.56ms | 1.77s (partial) | 482.60ms | 348.46ms | 274.57ms |

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
