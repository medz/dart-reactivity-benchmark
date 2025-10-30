# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.52s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.45s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.42s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.66s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.64s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.28s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.00ms | 2.40s | 200.06ms | 1.41s | 214.62ms | 237.81ms | 165.77ms (fail) |
| broadPropagation | 265.92ms | 4.44s | 460.14ms | 82.53ms (fail) | 458.30ms | 439.34ms | 6.58ms (fail) |
| deepPropagation | 80.79ms | 1.55s | 180.25ms | 1.94s (fail) | 175.77ms | 130.32ms | 143.80ms (fail) |
| diamond | 179.47ms | 2.46s | 278.66ms | 2.63s (fail) | 281.06ms | 304.53ms | 202.04ms (fail) |
| mux | 330.55ms | 1.85s | 392.48ms | 559.36ms (fail) | 413.78ms | 400.12ms | 205.71ms (fail) |
| repeatedObservers | 49.26ms | 233.47ms | 40.52ms | 386.66ms (fail) | 47.42ms | 87.27ms | 52.62ms (fail) |
| triangle | 68.07ms | 764.57ms | 100.86ms | 946.40ms (fail) | 101.90ms | 94.00ms | 86.20ms (fail) |
| unstable | 62.16ms | 346.82ms | 74.35ms | 619.50ms (fail) | 76.77ms | 101.71ms | 341.37ms (fail) |
| molBench | 480.02ms | 585.81ms | 479.70ms | 11.29ms | 485.48ms | 495.40ms | 902μs |
| create_signals | 32.05ms | 81.72ms | 9.84ms | 23.74ms | 26.53ms | 72.35ms | 65.59ms |
| comp_0to1 | 16.74ms | 15.39ms | 16.78ms | 13.73ms | 12.74ms | 37.71ms | 56.26ms |
| comp_1to1 | 17.29ms | 55.96ms | 7.28ms | 22.38ms | 29.52ms | 30.58ms | 64.33ms |
| comp_2to1 | 9.98ms | 23.74ms | 10.15ms | 25.32ms | 11.24ms | 28.15ms | 43.95ms |
| comp_4to1 | 17.07ms | 16.16ms | 17.07ms | 4.11ms | 1.87ms | 15.41ms | 18.94ms |
| comp_1000to1 | 4μs | 21μs | 5μs | 4μs | 9μs | 15μs | 44μs |
| comp_1to2 | 8.75ms | 37.45ms | 18.64ms | 10.87ms | 17.04ms | 38.66ms | 51.76ms |
| comp_1to4 | 14.80ms | 18.58ms | 23.92ms | 25.11ms | 17.36ms | 21.53ms | 49.73ms |
| comp_1to8 | 6.31ms | 23.39ms | 7.53ms | 5.13ms | 6.41ms | 24.20ms | 46.53ms |
| comp_1to1000 | 3.27ms | 15.30ms | 6.68ms | 4.51ms | 4.29ms | 14.92ms | 41.05ms |
| update_1to1 | 5.30ms | 26.57ms | 8.42ms | 80.47ms | 10.20ms | 14.71ms | 6.01ms |
| update_2to1 | 5.84ms | 11.34ms | 4.40ms | 41.04ms | 4.52ms | 7.18ms | 3.07ms |
| update_4to1 | 1.35ms | 7.34ms | 2.11ms | 20.05ms | 2.54ms | 3.59ms | 1.55ms |
| update_1000to1 | 13μs | 67μs | 20μs | 171μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.58ms | 13.44ms | 4.06ms | 41.41ms | 4.53ms | 7.50ms | 3.03ms |
| update_1to4 | 1.38ms | 5.69ms | 2.12ms | 19.85ms | 2.51ms | 3.60ms | 1.52ms |
| update_1to1000 | 43μs | 172μs | 386μs | 102μs | 42μs | 152μs | 459μs |
| cellx1000 | 6.47ms | 67.68ms | 9.88ms | N/A | 9.55ms | 10.31ms | 5.82ms |
| cellx2500 | 21.03ms | 242.56ms | 27.14ms | N/A | 32.96ms | 30.38ms | 33.47ms |
| cellx5000 | 46.59ms | 568.15ms | 77.16ms | N/A | 65.43ms | 101.91ms | 94.56ms |
| 10x5 - 2 sources - read 20.0% (simple) | 199.90ms | 2.03s | 518.28ms | 2.12s | 508.25ms | 313.31ms | 277.25ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.97ms | 1.53s | 298.22ms | 1.42s (partial) | 280.01ms | 221.90ms | 206.30ms |
| 1000x12 - 4 sources - dynamic (large) | 304.17ms | 1.89s | 3.70s | 2.51s (partial) | 3.82s | 449.90ms | 360.49ms |
| 1000x5 - 25 sources (wide dense) | 556.50ms | 3.49s | 2.75s | 4.15s | 3.58s | 810.68ms | 522.12ms |
| 5x500 - 3 sources (deep) | 177.18ms | 1.15s | 249.41ms | 1.34s | 225.78ms | 230.66ms | 212.50ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 250.31ms | 1.71s | 476.17ms | 1.81s (partial) | 488.24ms | 336.92ms | 269.33ms |

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
