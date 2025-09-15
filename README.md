# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.12s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.45s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.51s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.50s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.46s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.59s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.87s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 159.24ms | 2.44s | 200.15ms | 1.41s | 214.66ms | 255.24ms | 155.53ms (fail) |
| broadPropagation | 325.89ms | 4.56s | 469.58ms | 81.56ms (fail) | 460.25ms | 455.66ms | 6.79ms (fail) |
| deepPropagation | 100.73ms | 1.58s | 180.36ms | 2.03s (fail) | 178.83ms | 139.11ms | 145.93ms (fail) |
| diamond | 227.93ms | 2.49s | 280.23ms | 2.67s (fail) | 285.20ms | 316.61ms | 186.05ms (fail) |
| mux | 343.27ms | 1.87s | 401.07ms | 575.67ms (fail) | 416.00ms | 416.41ms | 198.38ms (fail) |
| repeatedObservers | 51.08ms | 236.60ms | 41.73ms | 393.82ms (fail) | 46.22ms | 92.60ms | 54.57ms (fail) |
| triangle | 77.80ms | 785.30ms | 100.00ms | 877.88ms (fail) | 99.84ms | 95.89ms | 83.37ms (fail) |
| unstable | 144.11ms | 355.56ms | 74.38ms | 623.65ms (fail) | 75.72ms | 171.77ms | 353.50ms (fail) |
| molBench | 495.29ms | 592.84ms | 494.28ms | 11.36ms | 491.22ms | 513.83ms | 1.01ms |
| create_signals | 32.33ms | 82.99ms | 6.22ms | 31.42ms | 53.47ms | 92.65ms | 75.86ms |
| comp_0to1 | 10.36ms | 29.97ms | 20.11ms | 20.26ms | 25.44ms | 30.60ms | 65.94ms |
| comp_1to1 | 19.51ms | 46.70ms | 13.63ms | 24.94ms | 42.19ms | 51.28ms | 67.93ms |
| comp_2to1 | 13.18ms | 26.16ms | 19.48ms | 40.18ms | 14.24ms | 11.28ms | 42.58ms |
| comp_4to1 | 2.33ms | 32.36ms | 17.23ms | 14.66ms | 8.19ms | 16.43ms | 18.31ms |
| comp_1000to1 | 5μs | 17μs | 8μs | 4μs | 7μs | 16μs | 44μs |
| comp_1to2 | 17.05ms | 38.36ms | 19.41ms | 13.42ms | 16.29ms | 41.50ms | 49.65ms |
| comp_1to4 | 13.05ms | 18.68ms | 32.23ms | 26.44ms | 19.37ms | 25.34ms | 48.31ms |
| comp_1to8 | 9.28ms | 22.01ms | 12.72ms | 9.51ms | 9.86ms | 25.97ms | 46.65ms |
| comp_1to1000 | 5.58ms | 15.90ms | 7.89ms | 6.15ms | 5.73ms | 16.12ms | 41.25ms |
| update_1to1 | 9.85ms | 24.66ms | 8.31ms | 84.94ms | 10.29ms | 16.78ms | 6.19ms |
| update_2to1 | 2.92ms | 12.43ms | 4.44ms | 43.18ms | 4.56ms | 8.55ms | 3.22ms |
| update_4to1 | 1.51ms | 6.40ms | 2.09ms | 20.40ms | 2.54ms | 4.21ms | 1.61ms |
| update_1000to1 | 14μs | 71μs | 20μs | 187μs | 25μs | 42μs | 17μs |
| update_1to2 | 3.06ms | 13.31ms | 4.07ms | 41.94ms | 4.53ms | 8.91ms | 3.22ms |
| update_1to4 | 1.54ms | 5.96ms | 2.06ms | 21.09ms | 2.66ms | 4.30ms | 1.63ms |
| update_1to1000 | 63μs | 186μs | 1.30ms | 145μs | 58μs | 164μs | 404μs |
| cellx1000 | 7.92ms | 102.28ms | 10.61ms | N/A | 10.38ms | 11.11ms | 6.68ms |
| cellx2500 | 23.65ms | 341.58ms | 32.51ms | N/A | 39.58ms | 44.90ms | 34.35ms |
| cellx5000 | 84.58ms | 708.17ms | 106.94ms | N/A | 108.93ms | 119.04ms | 100.54ms |
| 10x5 - 2 sources - read 20.0% (simple) | 243.56ms | 2.05s | 453.57ms | 2.19s | 506.00ms | 327.76ms | 238.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 193.03ms | 1.54s | 276.43ms | 1.49s (partial) | 283.03ms | 225.38ms | 199.64ms |
| 1000x12 - 4 sources - dynamic (large) | 364.49ms | 1.89s | 3.77s | 2.67s (partial) | 3.88s | 469.81ms | 354.27ms |
| 1000x5 - 25 sources (wide dense) | 644.37ms | 3.63s | 2.75s | 4.14s | 3.47s | 835.53ms | 519.01ms |
| 5x500 - 3 sources (deep) | 208.91ms | 1.17s | 233.88ms | 1.44s | 226.73ms | 251.13ms | 213.83ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 287.25ms | 1.76s | 464.15ms | 1.87s (partial) | 483.89ms | 349.62ms | 264.28ms |

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
