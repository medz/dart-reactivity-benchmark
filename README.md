# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.36s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.32s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.60s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.63s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.54s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 177.13ms | 161.25ms | 2.33s | 203.48ms | 1.51s | 206.91ms | 275.72ms | 2.20s | 157.28ms (fail) |
| broadPropagation | 371.63ms | 318.90ms | 4.44s | 455.85ms | 84.62ms (fail) | 453.02ms | 505.53ms | 5.72s | 6.34ms (fail) |
| deepPropagation | 128.14ms | 98.50ms | 1.55s | 177.31ms | 2.02s (fail) | 169.77ms | 168.03ms | 2.06s | 141.78ms (fail) |
| diamond | 236.96ms | 212.78ms | 2.42s | 277.82ms | 2.70s (fail) | 275.87ms | 348.01ms | 3.56s | 181.81ms (fail) |
| mux | 379.02ms | 349.74ms | 1.83s | 402.65ms | 564.03ms (fail) | 452.36ms | 441.61ms | 2.08s | 195.00ms (fail) |
| repeatedObservers | 47.22ms | 50.17ms | 228.99ms | 40.22ms | 397.59ms (fail) | 44.45ms | 81.47ms | 225.62ms | 52.80ms (fail) |
| triangle | 87.43ms | 78.33ms | 773.24ms | 106.48ms | 952.34ms (fail) | 102.80ms | 117.49ms | 1.15s | 78.39ms (fail) |
| unstable | 61.90ms | 69.78ms | 343.57ms | 70.28ms | 618.34ms (fail) | 79.21ms | 97.56ms | 358.67ms | 337.68ms (fail) |
| molBench | 494.93ms | 493.09ms | 574.01ms | 485.53ms | 11.70ms | 486.59ms | 492.92ms | 1.72s | 842μs |
| create_signals | 7.72ms | 27.65ms | 69.22ms | 5.21ms | 23.59ms | 24.46ms | 98.69ms | 55.25ms | 59.49ms |
| comp_0to1 | 22.46ms | 8.75ms | 27.89ms | 17.32ms | 14.47ms | 10.70ms | 36.28ms | 40.04ms | 52.15ms |
| comp_1to1 | 19.28ms | 16.92ms | 43.03ms | 14.30ms | 22.56ms | 25.95ms | 44.40ms | 45.86ms | 54.21ms |
| comp_2to1 | 14.23ms | 10.53ms | 22.04ms | 16.62ms | 25.25ms | 8.49ms | 47.96ms | 39.82ms | 35.40ms |
| comp_4to1 | 2.54ms | 6.17ms | 16.28ms | 14.39ms | 5.37ms | 1.95ms | 19.66ms | 16.58ms | 17.72ms |
| comp_1000to1 | 4μs | 4μs | 16μs | 4μs | 3μs | 5μs | 18μs | 2.72ms | 41μs |
| comp_1to2 | 11.12ms | 13.09ms | 34.88ms | 18.32ms | 16.87ms | 19.07ms | 33.18ms | 31.61ms | 45.34ms |
| comp_1to4 | 9.74ms | 18.00ms | 18.56ms | 32.60ms | 27.78ms | 12.27ms | 17.34ms | 27.00ms | 47.43ms |
| comp_1to8 | 4.91ms | 7.56ms | 21.05ms | 6.49ms | 8.29ms | 6.22ms | 21.84ms | 23.36ms | 43.02ms |
| comp_1to1000 | 3.10ms | 4.45ms | 15.68ms | 5.99ms | 4.69ms | 4.17ms | 16.82ms | 17.66ms | 37.92ms |
| update_1to1 | 4.54ms | 5.45ms | 26.57ms | 8.68ms | 91.93ms | 9.00ms | 16.05ms | 43.23ms | 5.64ms |
| update_2to1 | 2.32ms | 2.78ms | 12.36ms | 4.24ms | 46.61ms | 4.48ms | 7.88ms | 21.41ms | 2.83ms |
| update_4to1 | 1.12ms | 1.40ms | 7.14ms | 2.17ms | 22.61ms | 2.24ms | 4.03ms | 10.77ms | 1.45ms |
| update_1000to1 | 11μs | 13μs | 71μs | 21μs | 202μs | 22μs | 51μs | 119μs | 15μs |
| update_1to2 | 2.31ms | 2.69ms | 12.05ms | 4.81ms | 45.73ms | 4.47ms | 8.02ms | 21.15ms | 3.03ms |
| update_1to4 | 1.18ms | 1.42ms | 6.06ms | 2.20ms | 22.58ms | 2.26ms | 4.04ms | 10.78ms | 1.45ms |
| update_1to1000 | 37μs | 57μs | 171μs | 776μs | 122μs | 50μs | 170μs | 214μs | 383μs |
| cellx1000 | 7.28ms | 30.94ms | 70.72ms | 9.68ms | N/A | 9.59ms | 13.86ms | 159.91ms | 5.14ms |
| cellx2500 | 23.36ms | 124.63ms | 245.71ms | 25.92ms | N/A | 31.55ms | 35.84ms | 466.56ms | 24.24ms |
| cellx5000 | 46.30ms | 393.27ms | 546.65ms | 70.52ms | N/A | 61.06ms | 74.74ms | 1.12s | 76.26ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.91ms | 241.29ms | 2.02s | 435.02ms | 2.48s | 521.74ms | 362.52ms | 2.68s (partial) | 247.89ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.81ms | 183.52ms | 1.53s | 270.46ms | 1.59s (partial) | 280.70ms | 254.14ms | 2.38s (partial) | 199.13ms |
| 1000x12 - 4 sources - dynamic (large) | 302.15ms | 342.82ms | 1.91s | 3.69s | 2.66s (partial) | 3.74s | 462.45ms | 4.32s (partial) | 341.39ms |
| 1000x5 - 25 sources (wide dense) | 454.46ms | 608.20ms | 3.63s | 2.72s | 4.43s | 3.56s | 589.89ms | 5.15s (partial) | 492.55ms |
| 5x500 - 3 sources (deep) | 204.60ms | 196.66ms | 1.14s | 238.76ms | 1.41s | 227.96ms | 251.38ms | 1.99s (partial) | 206.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.12ms | 277.22ms | 1.68s | 448.00ms | 1.83s (partial) | 485.48ms | 380.22ms | 2.79s (partial) | 258.09ms |

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
