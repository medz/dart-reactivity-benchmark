# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.48s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.31s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.30s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.74s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.38s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 213.77ms | 2.36s | 202.76ms | 1.41s | 207.56ms | 291.83ms | 177.85ms (fail) |
| broadPropagation | 402.82ms | 4.37s | 450.96ms | 84.72ms (fail) | 447.43ms | 517.80ms | 6.82ms (fail) |
| deepPropagation | 96.87ms | 1.55s | 175.98ms | 1.87s (fail) | 168.98ms | 168.55ms | 141.53ms (fail) |
| diamond | 227.51ms | 2.47s | 280.67ms | 2.56s (fail) | 279.70ms | 355.21ms | 206.76ms (fail) |
| mux | 409.81ms | 1.86s | 406.34ms | 559.39ms (fail) | 410.56ms | 443.83ms | 195.90ms (fail) |
| repeatedObservers | 48.05ms | 234.10ms | 39.94ms | 377.98ms (fail) | 45.84ms | 87.06ms | 52.73ms (fail) |
| triangle | 80.97ms | 771.99ms | 115.76ms | 929.47ms (fail) | 101.29ms | 114.18ms | 84.47ms (fail) |
| unstable | 66.38ms | 355.74ms | 71.23ms | 617.13ms (fail) | 80.18ms | 101.75ms | 340.10ms (fail) |
| molBench | 484.97ms | 575.40ms | 490.00ms | 11.47ms | 486.26ms | 501.15ms | 888μs |
| create_signals | 25.56ms | 52.50ms | 5.19ms | 23.64ms | 26.74ms | 47.62ms | 59.70ms |
| comp_0to1 | 11.36ms | 15.94ms | 17.40ms | 13.57ms | 12.03ms | 46.92ms | 54.45ms |
| comp_1to1 | 18.63ms | 46.49ms | 12.46ms | 22.93ms | 27.07ms | 42.90ms | 54.99ms |
| comp_2to1 | 13.64ms | 34.90ms | 17.88ms | 24.20ms | 8.59ms | 9.55ms | 35.58ms |
| comp_4to1 | 6.07ms | 20.80ms | 12.10ms | 4.77ms | 1.86ms | 29.23ms | 15.93ms |
| comp_1000to1 | 4μs | 21μs | 6μs | 4μs | 5μs | 16μs | 42μs |
| comp_1to2 | 14.07ms | 36.72ms | 16.23ms | 11.68ms | 14.15ms | 19.78ms | 44.96ms |
| comp_1to4 | 16.59ms | 19.46ms | 22.39ms | 26.50ms | 14.89ms | 22.26ms | 43.80ms |
| comp_1to8 | 5.16ms | 24.13ms | 7.08ms | 5.06ms | 8.54ms | 21.52ms | 42.79ms |
| comp_1to1000 | 3.60ms | 16.22ms | 6.30ms | 4.71ms | 6.79ms | 15.71ms | 38.73ms |
| update_1to1 | 5.00ms | 22.42ms | 8.65ms | 82.65ms | 8.91ms | 15.41ms | 5.66ms |
| update_2to1 | 2.55ms | 11.39ms | 4.25ms | 42.19ms | 4.50ms | 7.87ms | 2.88ms |
| update_4to1 | 1.35ms | 6.16ms | 2.17ms | 20.14ms | 2.28ms | 3.85ms | 1.47ms |
| update_1000to1 | 23μs | 57μs | 21μs | 170μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.53ms | 11.08ms | 4.64ms | 41.02ms | 4.54ms | 7.68ms | 2.88ms |
| update_1to4 | 1.35ms | 6.07ms | 2.52ms | 20.57ms | 2.25ms | 3.84ms | 1.44ms |
| update_1to1000 | 51μs | 177μs | 1.05ms | 95μs | 41μs | 169μs | 380μs |
| cellx1000 | 11.41ms | 75.25ms | 9.86ms | N/A | 9.42ms | 14.54ms | 5.14ms |
| cellx2500 | 32.08ms | 268.34ms | 29.57ms | N/A | 30.09ms | 36.67ms | 23.88ms |
| cellx5000 | 80.12ms | 624.93ms | 85.66ms | N/A | 75.50ms | 110.20ms | 63.01ms |
| 10x5 - 2 sources - read 20.0% (simple) | 217.63ms | 2.03s | 450.10ms | 2.17s | 520.25ms | 359.57ms | 250.73ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 171.26ms | 1.51s | 268.69ms | 1.45s (partial) | 279.11ms | 244.01ms | 200.64ms |
| 1000x12 - 4 sources - dynamic (large) | 310.32ms | 1.93s | 3.68s | 2.52s (partial) | 3.87s | 469.35ms | 354.53ms |
| 1000x5 - 25 sources (wide dense) | 442.66ms | 3.54s | 2.72s | 4.29s | 3.42s | 717.61ms | 497.19ms |
| 5x500 - 3 sources (deep) | 190.52ms | 1.16s | 231.25ms | 1.42s | 226.15ms | 269.26ms | 207.34ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.20ms | 1.72s | 450.34ms | 1.77s (partial) | 489.35ms | 383.98ms | 262.59ms |

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
