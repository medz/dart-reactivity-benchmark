# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.04s |
| 🥈 | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.07s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.81s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 8.79s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.46s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.39s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.13s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.57s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 144.68ms | 142.25ms | 2.28s | 194.82ms | 1.37s | 199.87ms | 228.93ms | 142.13ms (fail) |
| broadPropagation | 243.00ms | 237.17ms | 4.18s | 430.37ms | 66.39ms (fail) | 396.33ms | 426.70ms | 5.88ms (fail) |
| deepPropagation | 88.98ms | 91.98ms | 1.49s | 186.23ms | 2.23s (fail) | 172.99ms | 131.71ms | 156.55ms (fail) |
| diamond | 174.49ms | 160.53ms | 2.32s | 250.38ms | 2.78s (fail) | 263.94ms | 311.29ms | 182.16ms (fail) |
| mux | 316.24ms | 310.97ms | 1.84s | 344.02ms | 578.14ms (fail) | 354.44ms | 398.17ms | 177.00ms (fail) |
| repeatedObservers | 42.93ms | 26.23ms | 229.44ms | 34.37ms | 390.12ms (fail) | 40.07ms | 86.79ms | 46.72ms (fail) |
| triangle | 61.50ms | 63.56ms | 790.64ms | 94.55ms | 872.67ms (fail) | 95.20ms | 101.72ms | 76.67ms (fail) |
| unstable | 55.33ms | 45.67ms | 326.38ms | 58.30ms | 623.92ms (fail) | 63.91ms | 106.03ms | 323.74ms (fail) |
| molBench | 361.06ms | 359.23ms | 460.25ms | 365.97ms | 11.67ms | 366.48ms | 371.55ms | 939μs |
| create_signals | 27.32ms | 29.86ms | 70.45ms | 6.86ms | 26.81ms | 24.10ms | 77.83ms | 65.26ms |
| comp_0to1 | 6.49ms | 19.66ms | 19.76ms | 20.75ms | 16.05ms | 11.90ms | 24.41ms | 51.33ms |
| comp_1to1 | 14.19ms | 13.57ms | 37.16ms | 20.15ms | 25.56ms | 16.40ms | 26.21ms | 54.46ms |
| comp_2to1 | 10.32ms | 5.29ms | 9.69ms | 15.25ms | 35.83ms | 8.34ms | 28.88ms | 35.92ms |
| comp_4to1 | 2.35ms | 2.19ms | 14.83ms | 24.66ms | 2.75ms | 7.35ms | 15.52ms | 16.31ms |
| comp_1000to1 | 5μs | 5μs | 28μs | 12μs | 6μs | 7μs | 16μs | 46μs |
| comp_1to2 | 15.08ms | 11.69ms | 40.36ms | 26.95ms | 15.23ms | 18.65ms | 34.15ms | 45.73ms |
| comp_1to4 | 20.67ms | 23.02ms | 35.63ms | 34.34ms | 24.44ms | 16.85ms | 32.34ms | 45.55ms |
| comp_1to8 | 9.80ms | 7.04ms | 26.05ms | 7.72ms | 6.94ms | 9.10ms | 21.00ms | 44.04ms |
| comp_1to1000 | 5.02ms | 8.14ms | 15.88ms | 7.43ms | 6.72ms | 5.77ms | 15.17ms | 39.70ms |
| update_1to1 | 5.31ms | 4.76ms | 22.62ms | 9.48ms | 86.49ms | 10.87ms | 15.73ms | 4.82ms |
| update_2to1 | 2.74ms | 2.39ms | 10.99ms | 4.65ms | 44.87ms | 5.46ms | 7.87ms | 2.53ms |
| update_4to1 | 1.47ms | 1.27ms | 6.12ms | 2.42ms | 21.02ms | 2.72ms | 3.92ms | 1.26ms |
| update_1000to1 | 12μs | 17μs | 52μs | 26μs | 186μs | 28μs | 39μs | 14μs |
| update_1to2 | 2.83ms | 3.01ms | 10.97ms | 4.61ms | 43.83ms | 5.50ms | 7.90ms | 2.42ms |
| update_1to4 | 1.39ms | 1.25ms | 5.76ms | 2.39ms | 20.92ms | 2.73ms | 3.90ms | 1.35ms |
| update_1to1000 | 46μs | 41μs | 175μs | 713μs | 105μs | 63μs | 165μs | 381μs |
| cellx1000 | 9.51ms | 8.78ms | 97.17ms | 11.63ms | N/A | 11.41ms | 17.77ms | 9.64ms |
| cellx2500 | 24.22ms | 26.13ms | 280.17ms | 35.06ms | N/A | 38.00ms | 51.62ms | 31.44ms |
| cellx5000 | 66.58ms | 62.86ms | 616.93ms | 99.45ms | N/A | 85.62ms | 127.95ms | 75.00ms |
| 10x5 - 2 sources - read 20.0% (simple) | 193.95ms | 196.26ms | 2.16s | 391.00ms | 2.33s | 429.31ms | 321.05ms | 233.90ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 146.53ms | 151.60ms | 1.56s | 233.50ms | 1.48s (partial) | 238.66ms | 233.84ms | 174.44ms |
| 1000x12 - 4 sources - dynamic (large) | 248.88ms | 245.85ms | 1.80s | 3.02s | 2.81s (partial) | 3.28s | 380.42ms | 274.39ms |
| 1000x5 - 25 sources (wide dense) | 396.27ms | 398.71ms | 3.62s | 2.26s | 4.29s | 2.67s | 639.94ms | 389.59ms |
| 5x500 - 3 sources (deep) | 173.97ms | 178.60ms | 1.23s | 219.46ms | 1.44s | 215.32ms | 272.09ms | 205.55ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 199.11ms | 203.28ms | 1.77s | 379.36ms | 1.91s (partial) | 397.09ms | 291.02ms | 218.05ms |

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
