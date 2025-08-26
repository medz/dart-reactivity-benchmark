# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.90s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.54s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.38s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.60s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.65s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 161.36ms | 2.35s | 202.08ms | 1.39s | 210.07ms | 257.47ms | 155.69ms (fail) |
| broadPropagation | 318.33ms | 4.38s | 459.53ms | 83.39ms (fail) | 468.42ms | 449.95ms | 6.55ms (fail) |
| deepPropagation | 98.28ms | 1.54s | 176.98ms | 2.03s (fail) | 176.29ms | 141.12ms | 146.42ms (fail) |
| diamond | 221.49ms | 2.40s | 282.15ms | 2.74s (fail) | 284.53ms | 318.76ms | 185.66ms (fail) |
| mux | 339.87ms | 1.85s | 387.22ms | 578.56ms (fail) | 408.01ms | 402.44ms | 196.49ms (fail) |
| repeatedObservers | 50.27ms | 232.90ms | 40.30ms | 390.29ms (fail) | 46.27ms | 91.01ms | 52.36ms (fail) |
| triangle | 81.09ms | 783.35ms | 98.91ms | 959.51ms (fail) | 103.23ms | 101.70ms | 80.33ms (fail) |
| unstable | 140.59ms | 343.86ms | 73.96ms | 628.98ms (fail) | 76.15ms | 168.48ms | 340.24ms (fail) |
| molBench | 489.00ms | 582.90ms | 481.29ms | 11.64ms | 485.33ms | 500.99ms | 961μs |
| create_signals | 27.47ms | 51.06ms | 5.30ms | 24.07ms | 26.00ms | 52.49ms | 61.40ms |
| comp_0to1 | 11.01ms | 15.40ms | 18.09ms | 14.15ms | 13.17ms | 25.99ms | 55.58ms |
| comp_1to1 | 25.57ms | 41.90ms | 13.79ms | 28.16ms | 27.20ms | 42.72ms | 57.54ms |
| comp_2to1 | 18.71ms | 35.24ms | 17.05ms | 32.79ms | 9.40ms | 20.06ms | 38.41ms |
| comp_4to1 | 4.98ms | 23.98ms | 12.90ms | 11.68ms | 2.13ms | 11.25ms | 16.94ms |
| comp_1000to1 | 4μs | 34μs | 4μs | 4μs | 5μs | 16μs | 46μs |
| comp_1to2 | 14.86ms | 33.06ms | 30.79ms | 11.23ms | 22.27ms | 36.80ms | 47.96ms |
| comp_1to4 | 14.81ms | 21.00ms | 22.59ms | 19.88ms | 9.80ms | 22.55ms | 46.34ms |
| comp_1to8 | 10.32ms | 22.93ms | 13.28ms | 6.01ms | 9.99ms | 22.71ms | 45.85ms |
| comp_1to1000 | 5.53ms | 15.07ms | 7.69ms | 4.80ms | 7.18ms | 16.35ms | 41.25ms |
| update_1to1 | 5.49ms | 24.52ms | 8.29ms | 89.42ms | 10.30ms | 21.09ms | 6.01ms |
| update_2to1 | 3.13ms | 13.15ms | 4.50ms | 45.64ms | 4.52ms | 10.62ms | 3.08ms |
| update_4to1 | 1.36ms | 6.52ms | 2.08ms | 22.07ms | 2.57ms | 5.27ms | 1.54ms |
| update_1000to1 | 13μs | 84μs | 20μs | 193μs | 25μs | 49μs | 15μs |
| update_1to2 | 2.74ms | 11.86ms | 4.08ms | 45.23ms | 4.56ms | 10.60ms | 3.00ms |
| update_1to4 | 1.40ms | 5.98ms | 2.08ms | 23.13ms | 2.50ms | 5.57ms | 1.53ms |
| update_1to1000 | 31μs | 171μs | 49μs | 99μs | 44μs | 160μs | 413μs |
| cellx1000 | 8.59ms | 71.42ms | 9.82ms | N/A | 9.68ms | 9.95ms | 5.49ms |
| cellx2500 | 24.04ms | 269.26ms | 32.13ms | N/A | 37.56ms | 28.59ms | 27.78ms |
| cellx5000 | 53.69ms | 636.41ms | 82.91ms | N/A | 74.33ms | 86.33ms | 67.89ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.99ms | 2.03s | 514.93ms | 2.19s | 506.66ms | 324.58ms | 236.88ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.39ms | 1.51s | 292.05ms | 1.46s (partial) | 279.07ms | 222.91ms | 195.42ms |
| 1000x12 - 4 sources - dynamic (large) | 353.02ms | 1.93s | 3.77s | 2.63s (partial) | 3.76s | 445.86ms | 346.11ms |
| 1000x5 - 25 sources (wide dense) | 493.96ms | 3.48s | 2.75s | 4.05s | 3.59s | 804.96ms | 510.51ms |
| 5x500 - 3 sources (deep) | 199.67ms | 1.15s | 246.90ms | 1.37s | 223.74ms | 227.13ms | 206.57ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 290.80ms | 1.74s | 472.18ms | 1.75s (partial) | 488.21ms | 333.77ms | 260.91ms |

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
