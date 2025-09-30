# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.50s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.15s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.49s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.55s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.88s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 142.87ms | 2.32s | 200.32ms | 1.45s | 213.71ms | 238.31ms | 171.45ms (fail) |
| broadPropagation | 266.73ms | 4.45s | 468.43ms | 83.87ms (fail) | 455.05ms | 447.21ms | 6.51ms (fail) |
| deepPropagation | 80.51ms | 1.55s | 177.43ms | 1.92s (fail) | 177.19ms | 130.02ms | 146.56ms (fail) |
| diamond | 179.64ms | 2.43s | 282.95ms | 2.68s (fail) | 301.01ms | 308.15ms | 191.93ms (fail) |
| mux | 323.90ms | 1.82s | 397.72ms | 581.43ms (fail) | 407.77ms | 409.36ms | 192.22ms (fail) |
| repeatedObservers | 49.16ms | 232.36ms | 39.88ms | 422.46ms (fail) | 45.86ms | 87.11ms | 52.63ms (fail) |
| triangle | 76.90ms | 764.98ms | 100.98ms | 953.52ms (fail) | 103.39ms | 95.13ms | 83.83ms (fail) |
| unstable | 61.54ms | 347.23ms | 74.00ms | 647.51ms (fail) | 76.45ms | 101.01ms | 343.14ms (fail) |
| molBench | 485.53ms | 583.00ms | 481.36ms | 11.75ms | 485.82ms | 496.61ms | 945μs |
| create_signals | 31.39ms | 69.64ms | 5.19ms | 23.72ms | 25.10ms | 86.96ms | 75.34ms |
| comp_0to1 | 15.72ms | 28.37ms | 17.70ms | 13.95ms | 11.82ms | 41.32ms | 59.27ms |
| comp_1to1 | 19.70ms | 38.30ms | 12.47ms | 22.74ms | 28.14ms | 24.98ms | 58.56ms |
| comp_2to1 | 2.29ms | 34.31ms | 17.32ms | 33.20ms | 17.14ms | 30.34ms | 43.13ms |
| comp_4to1 | 1.53ms | 13.53ms | 15.56ms | 7.31ms | 3.22ms | 30.41ms | 17.07ms |
| comp_1000to1 | 3μs | 20μs | 9μs | 9μs | 5μs | 14μs | 44μs |
| comp_1to2 | 13.00ms | 36.38ms | 15.17ms | 13.27ms | 16.38ms | 34.16ms | 50.72ms |
| comp_1to4 | 26.25ms | 26.12ms | 25.63ms | 26.13ms | 10.67ms | 30.98ms | 47.94ms |
| comp_1to8 | 7.21ms | 24.11ms | 6.76ms | 6.51ms | 7.98ms | 21.47ms | 46.50ms |
| comp_1to1000 | 9.50ms | 16.12ms | 5.79ms | 5.91ms | 6.18ms | 13.85ms | 41.05ms |
| update_1to1 | 5.57ms | 30.16ms | 8.27ms | 88.01ms | 10.25ms | 14.47ms | 6.11ms |
| update_2to1 | 5.62ms | 11.12ms | 4.38ms | 45.71ms | 4.50ms | 7.17ms | 3.13ms |
| update_4to1 | 1.39ms | 7.57ms | 2.11ms | 20.10ms | 2.44ms | 3.59ms | 1.56ms |
| update_1000to1 | 23μs | 70μs | 20μs | 227μs | 25μs | 36μs | 15μs |
| update_1to2 | 3.39ms | 13.77ms | 4.13ms | 43.36ms | 4.45ms | 7.40ms | 3.05ms |
| update_1to4 | 1.35ms | 6.81ms | 2.11ms | 20.48ms | 2.54ms | 3.58ms | 1.56ms |
| update_1to1000 | 47μs | 179μs | 160μs | 145μs | 43μs | 241μs | 461μs |
| cellx1000 | 6.34ms | 72.49ms | 9.51ms | N/A | 9.90ms | 9.34ms | 5.38ms |
| cellx2500 | 17.74ms | 246.35ms | 27.77ms | N/A | 35.76ms | 29.84ms | 26.39ms |
| cellx5000 | 61.16ms | 552.17ms | 71.62ms | N/A | 74.37ms | 80.55ms | 83.65ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.55ms | 2.01s | 448.92ms | 2.25s | 517.23ms | 313.52ms | 245.57ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.37ms | 1.55s | 273.88ms | 1.51s (partial) | 288.56ms | 226.41ms | 196.06ms |
| 1000x12 - 4 sources - dynamic (large) | 276.57ms | 1.92s | 3.71s | 2.55s (partial) | 3.94s | 443.78ms | 351.45ms |
| 1000x5 - 25 sources (wide dense) | 545.81ms | 3.50s | 2.72s | 4.17s | 3.50s | 819.65ms | 513.42ms |
| 5x500 - 3 sources (deep) | 176.01ms | 1.13s | 228.43ms | 1.40s | 225.73ms | 228.57ms | 209.69ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 245.99ms | 1.71s | 461.58ms | 1.88s (partial) | 479.55ms | 333.66ms | 266.25ms |

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
