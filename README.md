# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.57s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.08s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.60s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.35s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.71s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.80s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 143.27ms | 2.37s | 201.46ms | 1.42s | 213.64ms | 238.79ms | 149.84ms (fail) |
| broadPropagation | 270.11ms | 4.39s | 469.57ms | 83.61ms (fail) | 459.29ms | 443.11ms | 6.54ms (fail) |
| deepPropagation | 80.47ms | 1.55s | 178.08ms | 1.97s (fail) | 178.80ms | 129.82ms | 142.72ms (fail) |
| diamond | 184.33ms | 2.41s | 279.37ms | 2.72s (fail) | 288.35ms | 316.43ms | 192.24ms (fail) |
| mux | 328.38ms | 1.85s | 392.44ms | 565.98ms (fail) | 407.52ms | 389.65ms | 193.36ms (fail) |
| repeatedObservers | 49.17ms | 239.30ms | 40.23ms | 406.69ms (fail) | 46.31ms | 86.67ms | 52.64ms (fail) |
| triangle | 68.23ms | 771.53ms | 100.14ms | 916.17ms (fail) | 104.31ms | 93.60ms | 97.05ms (fail) |
| unstable | 61.27ms | 349.04ms | 73.59ms | 634.59ms (fail) | 74.30ms | 100.86ms | 338.06ms (fail) |
| molBench | 486.45ms | 584.55ms | 488.32ms | 11.30ms | 490.76ms | 497.31ms | 965μs |
| create_signals | 26.74ms | 73.98ms | 5.30ms | 25.17ms | 25.81ms | 70.72ms | 69.62ms |
| comp_0to1 | 6.71ms | 36.90ms | 18.32ms | 15.43ms | 11.73ms | 27.76ms | 56.95ms |
| comp_1to1 | 13.48ms | 38.52ms | 12.67ms | 26.29ms | 29.10ms | 31.09ms | 58.88ms |
| comp_2to1 | 9.09ms | 22.47ms | 18.01ms | 26.95ms | 14.37ms | 20.22ms | 39.16ms |
| comp_4to1 | 7.50ms | 26.32ms | 14.29ms | 2.55ms | 4.04ms | 4.50ms | 17.11ms |
| comp_1000to1 | 4μs | 16μs | 9μs | 3μs | 4μs | 17μs | 45μs |
| comp_1to2 | 18.58ms | 38.05ms | 21.88ms | 14.98ms | 20.56ms | 35.83ms | 49.23ms |
| comp_1to4 | 20.84ms | 20.74ms | 30.67ms | 25.69ms | 12.73ms | 21.76ms | 47.05ms |
| comp_1to8 | 10.33ms | 19.96ms | 5.75ms | 8.80ms | 6.50ms | 19.12ms | 46.11ms |
| comp_1to1000 | 7.73ms | 15.20ms | 7.13ms | 4.50ms | 4.47ms | 13.94ms | 41.98ms |
| update_1to1 | 5.70ms | 27.20ms | 8.33ms | 80.38ms | 10.34ms | 14.73ms | 6.01ms |
| update_2to1 | 5.55ms | 13.71ms | 4.39ms | 42.20ms | 4.53ms | 7.14ms | 3.08ms |
| update_4to1 | 1.91ms | 7.36ms | 2.07ms | 20.66ms | 2.56ms | 3.57ms | 1.53ms |
| update_1000to1 | 13μs | 69μs | 20μs | 171μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.84ms | 13.23ms | 4.07ms | 41.23ms | 4.52ms | 7.51ms | 3.02ms |
| update_1to4 | 1.49ms | 6.81ms | 2.06ms | 20.77ms | 2.65ms | 3.59ms | 1.52ms |
| update_1to1000 | 45μs | 170μs | 1.00ms | 93μs | 44μs | 148μs | 415μs |
| cellx1000 | 6.71ms | 74.09ms | 11.18ms | N/A | 10.05ms | 10.07ms | 5.96ms |
| cellx2500 | 21.80ms | 275.34ms | 34.56ms | N/A | 33.98ms | 30.61ms | 28.87ms |
| cellx5000 | 84.13ms | 609.31ms | 98.50ms | N/A | 71.20ms | 90.54ms | 62.88ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.39ms | 2.03s | 513.71ms | 2.23s | 506.63ms | 313.48ms | 262.18ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.69ms | 1.55s | 297.82ms | 1.49s (partial) | 280.45ms | 218.43ms | 202.58ms |
| 1000x12 - 4 sources - dynamic (large) | 291.55ms | 1.90s | 3.78s | 2.54s (partial) | 3.77s | 445.25ms | 349.63ms |
| 1000x5 - 25 sources (wide dense) | 565.72ms | 3.50s | 2.75s | 4.24s | 3.56s | 818.08ms | 515.91ms |
| 5x500 - 3 sources (deep) | 179.19ms | 1.16s | 250.80ms | 1.40s | 222.06ms | 233.38ms | 207.32ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 252.62ms | 1.74s | 479.67ms | 1.80s (partial) | 480.16ms | 344.88ms | 264.19ms |

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
