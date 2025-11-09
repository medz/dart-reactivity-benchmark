# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.55s |
| 🥈 | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.24s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.14s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.56s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.26s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.96s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.60s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.53s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.54ms | 162.80ms | 2.34s | 200.40ms | 1.41s | 210.60ms | 243.45ms | 167.89ms (fail) |
| broadPropagation | 266.75ms | 311.18ms | 4.45s | 459.98ms | 82.69ms (fail) | 458.41ms | 446.31ms | 6.64ms (fail) |
| deepPropagation | 81.95ms | 100.00ms | 1.54s | 181.26ms | 1.91s (fail) | 173.75ms | 131.61ms | 146.12ms (fail) |
| diamond | 183.18ms | 206.84ms | 2.40s | 281.67ms | 2.60s (fail) | 282.73ms | 306.34ms | 185.89ms (fail) |
| mux | 326.09ms | 345.14ms | 1.85s | 398.72ms | 563.04ms (fail) | 415.71ms | 410.94ms | 196.15ms (fail) |
| repeatedObservers | 49.20ms | 44.11ms | 236.38ms | 40.50ms | 424.93ms (fail) | 46.53ms | 87.66ms | 52.70ms (fail) |
| triangle | 67.25ms | 111.58ms | 764.19ms | 99.56ms | 907.13ms (fail) | 102.83ms | 98.26ms | 79.27ms (fail) |
| unstable | 61.92ms | 65.25ms | 345.37ms | 74.47ms | 630.32ms (fail) | 75.90ms | 102.53ms | 376.19ms (fail) |
| molBench | 483.92ms | 491.16ms | 584.54ms | 451.89ms | 11.35ms | 485.52ms | 492.76ms | 918μs |
| create_signals | 29.52ms | 39.47ms | 76.86ms | 5.36ms | 25.00ms | 27.16ms | 57.64ms | 65.01ms |
| comp_0to1 | 6.79ms | 25.68ms | 25.55ms | 18.00ms | 15.28ms | 11.88ms | 20.61ms | 57.70ms |
| comp_1to1 | 13.27ms | 22.91ms | 39.04ms | 12.82ms | 26.71ms | 30.23ms | 44.95ms | 61.17ms |
| comp_2to1 | 9.03ms | 21.67ms | 21.37ms | 18.04ms | 27.73ms | 10.28ms | 22.41ms | 45.63ms |
| comp_4to1 | 7.58ms | 25.17ms | 29.61ms | 9.73ms | 7.37ms | 2.35ms | 14.76ms | 18.95ms |
| comp_1000to1 | 4μs | 5μs | 19μs | 5μs | 20μs | 5μs | 14μs | 46μs |
| comp_1to2 | 14.86ms | 8.58ms | 33.40ms | 15.82ms | 12.40ms | 20.83ms | 33.12ms | 49.63ms |
| comp_1to4 | 18.53ms | 21.95ms | 19.90ms | 28.33ms | 22.75ms | 10.99ms | 21.54ms | 47.89ms |
| comp_1to8 | 8.58ms | 10.94ms | 28.06ms | 6.21ms | 8.32ms | 7.18ms | 19.05ms | 46.49ms |
| comp_1to1000 | 4.06ms | 3.99ms | 21.11ms | 6.02ms | 4.46ms | 4.49ms | 13.72ms | 41.96ms |
| update_1to1 | 5.73ms | 6.17ms | 28.27ms | 8.29ms | 82.50ms | 10.27ms | 14.72ms | 6.03ms |
| update_2to1 | 5.47ms | 3.04ms | 13.42ms | 4.35ms | 41.85ms | 4.46ms | 7.19ms | 3.13ms |
| update_4to1 | 1.39ms | 1.61ms | 7.14ms | 2.06ms | 20.41ms | 2.59ms | 3.58ms | 1.57ms |
| update_1000to1 | 13μs | 16μs | 67μs | 21μs | 178μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.63ms | 2.89ms | 12.43ms | 4.16ms | 44.24ms | 4.61ms | 7.57ms | 3.05ms |
| update_1to4 | 1.71ms | 3.90ms | 6.38ms | 2.07ms | 20.84ms | 2.50ms | 3.60ms | 1.57ms |
| update_1to1000 | 45μs | 50μs | 174μs | 188μs | 161μs | 42μs | 146μs | 434μs |
| cellx1000 | 6.85ms | 19.17ms | 85.92ms | 10.97ms | N/A | 9.90ms | 11.53ms | 6.40ms |
| cellx2500 | 21.05ms | 87.81ms | 290.70ms | 37.10ms | N/A | 36.29ms | 35.55ms | 32.16ms |
| cellx5000 | 71.65ms | 269.66ms | 639.32ms | 110.63ms | N/A | 78.59ms | 96.03ms | 69.82ms |
| 10x5 - 2 sources - read 20.0% (simple) | 199.86ms | 237.31ms | 2.03s | 510.67ms | 2.14s | 508.23ms | 311.83ms | 258.30ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.92ms | 193.17ms | 1.54s | 292.01ms | 1.46s (partial) | 279.76ms | 216.68ms | 213.86ms |
| 1000x12 - 4 sources - dynamic (large) | 298.12ms | 371.53ms | 2.03s | 3.79s | 2.50s (partial) | 3.77s | 469.33ms | 354.42ms |
| 1000x5 - 25 sources (wide dense) | 567.86ms | 514.96ms | 3.55s | 2.74s | 4.13s | 3.46s | 824.20ms | 518.16ms |
| 5x500 - 3 sources (deep) | 182.92ms | 206.90ms | 1.17s | 248.02ms | 1.50s | 227.01ms | 234.36ms | 214.27ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 251.60ms | 299.08ms | 1.75s | 481.18ms | 1.89s (partial) | 493.55ms | 340.35ms | 268.11ms |

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
