# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.52s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.65s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.21s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 220.31ms | 2.35s | 199.87ms | 1.42s | 208.38ms | 290.29ms | 151.28ms (fail) |
| broadPropagation | 392.77ms | 4.51s | 447.73ms | 82.58ms (fail) | 454.60ms | 521.41ms | 6.18ms (fail) |
| deepPropagation | 97.05ms | 1.56s | 176.30ms | 1.88s (fail) | 169.25ms | 166.63ms | 145.46ms (fail) |
| diamond | 227.36ms | 2.43s | 277.80ms | 2.56s (fail) | 278.16ms | 358.49ms | 198.52ms (fail) |
| mux | 405.62ms | 1.85s | 409.82ms | 562.09ms (fail) | 411.45ms | 446.15ms | 192.71ms (fail) |
| repeatedObservers | 48.07ms | 235.09ms | 39.30ms | 394.95ms (fail) | 44.72ms | 85.64ms | 52.47ms (fail) |
| triangle | 80.42ms | 775.18ms | 98.18ms | 904.80ms (fail) | 99.82ms | 115.69ms | 75.53ms (fail) |
| unstable | 66.73ms | 353.96ms | 70.34ms | 615.20ms (fail) | 79.38ms | 101.06ms | 371.24ms (fail) |
| molBench | 484.35ms | 570.82ms | 483.58ms | 11.23ms | 486.53ms | 501.76ms | 960μs |
| create_signals | 27.19ms | 53.50ms | 5.55ms | 23.39ms | 25.67ms | 73.84ms | 69.93ms |
| comp_0to1 | 11.48ms | 16.28ms | 17.88ms | 13.70ms | 11.26ms | 32.52ms | 57.22ms |
| comp_1to1 | 18.53ms | 46.09ms | 10.80ms | 21.97ms | 28.81ms | 34.70ms | 61.08ms |
| comp_2to1 | 23.76ms | 34.87ms | 11.90ms | 23.38ms | 9.40ms | 26.67ms | 41.59ms |
| comp_4to1 | 4.10ms | 13.69ms | 12.86ms | 5.34ms | 2.02ms | 24.60ms | 18.18ms |
| comp_1000to1 | 4μs | 21μs | 9μs | 3μs | 4μs | 29μs | 41μs |
| comp_1to2 | 11.82ms | 36.40ms | 17.88ms | 10.74ms | 24.58ms | 30.04ms | 47.60ms |
| comp_1to4 | 18.59ms | 20.18ms | 27.80ms | 22.51ms | 9.40ms | 31.94ms | 45.09ms |
| comp_1to8 | 5.32ms | 23.88ms | 6.65ms | 4.91ms | 12.32ms | 17.61ms | 43.67ms |
| comp_1to1000 | 3.76ms | 16.17ms | 6.35ms | 4.20ms | 6.84ms | 15.63ms | 38.09ms |
| update_1to1 | 5.01ms | 26.92ms | 8.53ms | 81.91ms | 8.98ms | 15.43ms | 5.66ms |
| update_2to1 | 2.59ms | 11.15ms | 4.22ms | 41.34ms | 4.61ms | 7.67ms | 2.81ms |
| update_4to1 | 1.31ms | 7.17ms | 2.13ms | 19.84ms | 2.21ms | 3.84ms | 1.42ms |
| update_1000to1 | 23μs | 68μs | 21μs | 182μs | 22μs | 38μs | 14μs |
| update_1to2 | 3.09ms | 13.25ms | 4.57ms | 41.09ms | 4.55ms | 7.68ms | 2.84ms |
| update_1to4 | 1.37ms | 6.04ms | 2.12ms | 20.02ms | 2.21ms | 3.84ms | 1.42ms |
| update_1to1000 | 51μs | 172μs | 801μs | 113μs | 42μs | 169μs | 382μs |
| cellx1000 | 10.60ms | 70.95ms | 9.53ms | N/A | 9.71ms | 12.87ms | 6.35ms |
| cellx2500 | 38.99ms | 264.56ms | 26.04ms | N/A | 36.44ms | 34.32ms | 28.33ms |
| cellx5000 | 82.12ms | 554.74ms | 72.65ms | N/A | 77.58ms | 74.41ms | 67.72ms |
| 10x5 - 2 sources - read 20.0% (simple) | 219.64ms | 2.04s | 473.70ms | 2.18s | 518.25ms | 385.53ms | 237.16ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.16ms | 1.55s | 280.85ms | 1.45s (partial) | 279.72ms | 250.68ms | 197.26ms |
| 1000x12 - 4 sources - dynamic (large) | 311.13ms | 1.89s | 3.72s | 2.51s (partial) | 3.74s | 461.77ms | 339.22ms |
| 1000x5 - 25 sources (wide dense) | 443.40ms | 3.52s | 2.71s | 4.17s | 3.43s | 729.07ms | 497.16ms |
| 5x500 - 3 sources (deep) | 196.47ms | 1.15s | 227.80ms | 1.36s | 225.39ms | 272.83ms | 201.44ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 257.22ms | 1.66s | 455.79ms | 1.77s (partial) | 476.29ms | 383.60ms | 257.77ms |

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
