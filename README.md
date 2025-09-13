# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.27s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.47s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.21s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.73s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.87s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.11ms | 2.36s | 199.43ms | 1.43s | 218.39ms | 261.14ms | 154.04ms (fail) |
| broadPropagation | 317.10ms | 4.36s | 468.89ms | 82.56ms (fail) | 461.76ms | 452.05ms | 6.36ms (fail) |
| deepPropagation | 100.11ms | 1.55s | 179.85ms | 2.03s (fail) | 178.84ms | 146.85ms | 143.96ms (fail) |
| diamond | 229.61ms | 2.41s | 280.06ms | 2.80s (fail) | 285.11ms | 313.06ms | 189.43ms (fail) |
| mux | 341.56ms | 1.83s | 398.87ms | 570.56ms (fail) | 407.67ms | 400.51ms | 195.46ms (fail) |
| repeatedObservers | 50.47ms | 232.58ms | 40.67ms | 405.90ms (fail) | 46.35ms | 90.41ms | 52.65ms (fail) |
| triangle | 81.45ms | 777.74ms | 99.12ms | 919.74ms (fail) | 103.35ms | 115.68ms | 83.81ms (fail) |
| unstable | 142.11ms | 344.39ms | 74.55ms | 630.35ms (fail) | 75.77ms | 166.37ms | 339.50ms (fail) |
| molBench | 487.27ms | 582.99ms | 486.13ms | 11.37ms | 485.46ms | 502.15ms | 872μs |
| create_signals | 27.18ms | 70.05ms | 4.62ms | 24.17ms | 27.36ms | 77.43ms | 66.42ms |
| comp_0to1 | 12.80ms | 28.09ms | 22.42ms | 13.97ms | 12.54ms | 26.54ms | 61.16ms |
| comp_1to1 | 19.56ms | 39.85ms | 11.05ms | 22.90ms | 18.44ms | 40.32ms | 57.94ms |
| comp_2to1 | 22.01ms | 31.28ms | 18.20ms | 25.63ms | 17.47ms | 22.99ms | 38.78ms |
| comp_4to1 | 2.53ms | 26.21ms | 21.38ms | 4.51ms | 11.41ms | 13.79ms | 17.03ms |
| comp_1000to1 | 4μs | 20μs | 10μs | 3μs | 5μs | 19μs | 43μs |
| comp_1to2 | 14.77ms | 26.76ms | 45.50ms | 11.79ms | 15.82ms | 39.40ms | 48.02ms |
| comp_1to4 | 21.82ms | 17.66ms | 27.38ms | 24.03ms | 7.33ms | 19.82ms | 46.36ms |
| comp_1to8 | 8.97ms | 21.23ms | 8.14ms | 5.46ms | 6.65ms | 21.87ms | 45.55ms |
| comp_1to1000 | 9.44ms | 15.58ms | 6.23ms | 4.91ms | 4.36ms | 15.57ms | 41.06ms |
| update_1to1 | 5.51ms | 27.86ms | 8.30ms | 85.88ms | 9.88ms | 18.57ms | 6.01ms |
| update_2to1 | 2.85ms | 14.53ms | 4.35ms | 42.13ms | 4.44ms | 9.39ms | 3.10ms |
| update_4to1 | 1.40ms | 7.66ms | 2.13ms | 20.03ms | 2.44ms | 4.62ms | 1.57ms |
| update_1000to1 | 13μs | 69μs | 30μs | 187μs | 25μs | 46μs | 15μs |
| update_1to2 | 2.78ms | 13.79ms | 4.08ms | 42.47ms | 4.39ms | 9.41ms | 3.03ms |
| update_1to4 | 1.40ms | 6.80ms | 2.12ms | 20.27ms | 2.40ms | 4.66ms | 1.57ms |
| update_1to1000 | 41μs | 178μs | 183μs | 117μs | 44μs | 151μs | 415μs |
| cellx1000 | 7.36ms | 72.47ms | 9.98ms | N/A | 10.14ms | 10.87ms | 5.27ms |
| cellx2500 | 20.16ms | 273.89ms | 34.78ms | N/A | 39.48ms | 30.96ms | 28.36ms |
| cellx5000 | 46.91ms | 606.58ms | 87.08ms | N/A | 74.18ms | 85.84ms | 69.95ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.23ms | 2.07s | 463.93ms | 2.16s | 503.95ms | 326.60ms | 241.78ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.18ms | 1.55s | 276.07ms | 1.47s (partial) | 281.08ms | 221.20ms | 196.30ms |
| 1000x12 - 4 sources - dynamic (large) | 349.29ms | 1.94s | 3.78s | 2.52s (partial) | 3.75s | 448.94ms | 354.17ms |
| 1000x5 - 25 sources (wide dense) | 492.19ms | 3.56s | 2.70s | 4.34s | 3.45s | 801.09ms | 517.04ms |
| 5x500 - 3 sources (deep) | 201.40ms | 1.15s | 242.65ms | 1.40s | 222.91ms | 230.92ms | 204.16ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 284.04ms | 1.72s | 461.14ms | 1.76s (partial) | 469.80ms | 338.13ms | 258.38ms |

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
