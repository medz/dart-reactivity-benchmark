# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.54s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.37s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.58s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.35s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.76ms | 2.38s | 199.76ms | 1.46s | 211.73ms | 237.70ms | 166.69ms (fail) |
| broadPropagation | 268.97ms | 4.42s | 462.32ms | 81.30ms (fail) | 460.13ms | 443.54ms | 6.40ms (fail) |
| deepPropagation | 80.26ms | 1.55s | 180.34ms | 1.88s (fail) | 179.66ms | 130.13ms | 141.40ms (fail) |
| diamond | 183.61ms | 2.42s | 280.25ms | 2.54s (fail) | 281.43ms | 312.05ms | 190.26ms (fail) |
| mux | 334.24ms | 1.83s | 395.63ms | 559.63ms (fail) | 407.62ms | 399.32ms | 192.28ms (fail) |
| repeatedObservers | 49.19ms | 237.13ms | 40.47ms | 410.87ms (fail) | 46.19ms | 87.39ms | 52.64ms (fail) |
| triangle | 67.50ms | 771.15ms | 100.16ms | 887.46ms (fail) | 101.46ms | 94.38ms | 83.39ms (fail) |
| unstable | 61.91ms | 349.52ms | 73.93ms | 648.16ms (fail) | 75.88ms | 102.40ms | 342.22ms (fail) |
| molBench | 484.67ms | 583.96ms | 488.77ms | 11.30ms | 486.98ms | 496.69ms | 1.24ms |
| create_signals | 20.95ms | 72.19ms | 5.42ms | 23.85ms | 25.70ms | 76.96ms | 62.20ms |
| comp_0to1 | 16.65ms | 24.60ms | 22.41ms | 14.84ms | 11.68ms | 25.00ms | 55.44ms |
| comp_1to1 | 20.27ms | 17.47ms | 11.80ms | 23.97ms | 26.83ms | 36.68ms | 56.92ms |
| comp_2to1 | 8.81ms | 25.74ms | 21.41ms | 26.31ms | 8.72ms | 30.43ms | 39.02ms |
| comp_4to1 | 1.61ms | 16.87ms | 18.60ms | 3.92ms | 2.90ms | 42.04ms | 16.64ms |
| comp_1000to1 | 4μs | 15μs | 5μs | 6μs | 5μs | 14μs | 43μs |
| comp_1to2 | 14.11ms | 44.51ms | 15.13ms | 15.43ms | 19.82ms | 33.23ms | 47.71ms |
| comp_1to4 | 21.35ms | 25.87ms | 21.44ms | 26.14ms | 13.37ms | 32.31ms | 45.76ms |
| comp_1to8 | 8.26ms | 24.45ms | 13.21ms | 8.90ms | 6.92ms | 19.56ms | 45.36ms |
| comp_1to1000 | 6.56ms | 15.44ms | 8.08ms | 4.40ms | 4.43ms | 14.28ms | 41.09ms |
| update_1to1 | 6.18ms | 27.30ms | 8.42ms | 83.36ms | 10.31ms | 14.57ms | 6.04ms |
| update_2to1 | 4.56ms | 13.44ms | 4.36ms | 42.74ms | 4.54ms | 7.17ms | 3.08ms |
| update_4to1 | 1.62ms | 7.06ms | 2.10ms | 19.94ms | 2.58ms | 3.67ms | 1.53ms |
| update_1000to1 | 22μs | 68μs | 21μs | 179μs | 25μs | 36μs | 15μs |
| update_1to2 | 3.08ms | 13.10ms | 4.09ms | 41.91ms | 4.61ms | 7.33ms | 3.03ms |
| update_1to4 | 1.64ms | 6.87ms | 2.11ms | 20.29ms | 2.54ms | 3.61ms | 1.53ms |
| update_1to1000 | 46μs | 184μs | 65μs | 93μs | 43μs | 150μs | 431μs |
| cellx1000 | 6.85ms | 74.87ms | 9.78ms | N/A | 9.85ms | 9.28ms | 5.25ms |
| cellx2500 | 24.07ms | 269.01ms | 28.00ms | N/A | 35.29ms | 28.05ms | 28.55ms |
| cellx5000 | 59.35ms | 564.29ms | 73.55ms | N/A | 74.69ms | 71.85ms | 59.45ms |
| 10x5 - 2 sources - read 20.0% (simple) | 200.42ms | 1.99s | 454.21ms | 2.20s | 502.26ms | 317.66ms | 253.18ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.12ms | 1.51s | 279.79ms | 1.46s (partial) | 283.96ms | 218.53ms | 198.77ms |
| 1000x12 - 4 sources - dynamic (large) | 283.04ms | 1.88s | 3.73s | 2.53s (partial) | 3.76s | 444.12ms | 355.04ms |
| 1000x5 - 25 sources (wide dense) | 563.41ms | 3.51s | 2.72s | 4.18s | 3.43s | 815.16ms | 513.67ms |
| 5x500 - 3 sources (deep) | 181.49ms | 1.14s | 231.36ms | 1.38s | 224.84ms | 228.38ms | 206.49ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 250.11ms | 1.74s | 459.27ms | 1.77s (partial) | 491.37ms | 336.08ms | 263.50ms |

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
