# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.50s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.04s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.56s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.00ms | 2.39s | 200.01ms | 1.33s | 207.88ms | 293.38ms | 152.41ms (fail) |
| broadPropagation | 317.42ms | 4.57s | 447.08ms | 78.86ms (fail) | 464.20ms | 522.17ms | 6.18ms (fail) |
| deepPropagation | 96.88ms | 1.56s | 178.88ms | 1.88s (fail) | 169.37ms | 172.51ms | 140.87ms (fail) |
| diamond | 221.96ms | 2.49s | 278.46ms | 2.52s (fail) | 281.04ms | 354.92ms | 190.22ms (fail) |
| mux | 337.92ms | 1.81s | 401.08ms | 560.67ms (fail) | 407.62ms | 441.85ms | 191.86ms (fail) |
| repeatedObservers | 51.86ms | 235.27ms | 39.67ms | 371.77ms (fail) | 45.00ms | 87.29ms | 52.81ms (fail) |
| triangle | 76.17ms | 766.97ms | 99.02ms | 881.68ms (fail) | 105.72ms | 115.36ms | 75.70ms (fail) |
| unstable | 71.91ms | 357.50ms | 70.37ms | 616.46ms (fail) | 79.19ms | 102.31ms | 340.13ms (fail) |
| molBench | 484.43ms | 574.07ms | 487.88ms | 10.92ms | 485.45ms | 498.43ms | 989μs |
| create_signals | 28.49ms | 62.67ms | 5.40ms | 25.00ms | 26.04ms | 35.55ms | 70.27ms |
| comp_0to1 | 10.03ms | 20.00ms | 17.03ms | 15.37ms | 11.84ms | 30.88ms | 57.55ms |
| comp_1to1 | 21.30ms | 31.92ms | 12.29ms | 30.93ms | 32.29ms | 44.81ms | 57.07ms |
| comp_2to1 | 15.98ms | 20.45ms | 17.02ms | 34.52ms | 8.98ms | 13.47ms | 37.43ms |
| comp_4to1 | 3.22ms | 29.32ms | 12.52ms | 9.05ms | 2.14ms | 26.96ms | 16.70ms |
| comp_1000to1 | 6μs | 17μs | 4μs | 4μs | 4μs | 26μs | 43μs |
| comp_1to2 | 14.07ms | 40.60ms | 30.57ms | 11.98ms | 20.80ms | 41.69ms | 45.94ms |
| comp_1to4 | 17.71ms | 27.27ms | 21.54ms | 22.27ms | 11.72ms | 33.28ms | 44.60ms |
| comp_1to8 | 5.81ms | 23.20ms | 12.60ms | 6.96ms | 8.04ms | 17.49ms | 43.54ms |
| comp_1to1000 | 3.18ms | 16.16ms | 6.60ms | 4.59ms | 4.18ms | 15.96ms | 39.28ms |
| update_1to1 | 5.73ms | 24.68ms | 8.67ms | 83.10ms | 8.94ms | 15.64ms | 5.96ms |
| update_2to1 | 2.84ms | 11.76ms | 4.36ms | 41.26ms | 4.51ms | 7.68ms | 2.96ms |
| update_4to1 | 1.48ms | 6.37ms | 2.16ms | 20.75ms | 2.28ms | 3.87ms | 1.53ms |
| update_1000to1 | 14μs | 71μs | 21μs | 228μs | 22μs | 38μs | 25μs |
| update_1to2 | 2.87ms | 12.12ms | 4.68ms | 41.66ms | 4.46ms | 7.68ms | 2.98ms |
| update_1to4 | 1.43ms | 5.57ms | 2.19ms | 20.16ms | 2.28ms | 3.88ms | 1.51ms |
| update_1to1000 | 30μs | 173μs | 42μs | 142μs | 43μs | 172μs | 404μs |
| cellx1000 | 7.30ms | 90.33ms | 9.97ms | N/A | 10.17ms | 12.80ms | 6.35ms |
| cellx2500 | 32.09ms | 285.24ms | 27.39ms | N/A | 34.60ms | 41.80ms | 30.18ms |
| cellx5000 | 51.13ms | 615.85ms | 82.95ms | N/A | 77.84ms | 103.63ms | 77.26ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.30ms | 2.07s | 437.64ms | 2.13s | 522.91ms | 365.17ms | 240.89ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.05ms | 1.54s | 277.21ms | 1.47s (partial) | 297.77ms | 246.00ms | 199.04ms |
| 1000x12 - 4 sources - dynamic (large) | 351.66ms | 1.94s | 3.69s | 2.51s (partial) | 3.77s | 467.32ms | 345.82ms |
| 1000x5 - 25 sources (wide dense) | 494.92ms | 3.51s | 2.70s | 4.30s | 3.36s | 725.63ms | 486.50ms |
| 5x500 - 3 sources (deep) | 197.89ms | 1.16s | 235.98ms | 1.71s | 224.88ms | 268.30ms | 207.00ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.60ms | 1.73s | 456.49ms | 1.82s (partial) | 489.50ms | 380.98ms | 258.98ms |

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
