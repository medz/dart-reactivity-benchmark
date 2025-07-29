# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.54s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.24s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.55s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.89s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.98s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 156.75ms | 2.30s | 202.19ms | 1.38s | 206.11ms | 290.95ms | 150.05ms (fail) |
| broadPropagation | 317.82ms | 4.45s | 494.49ms | 79.63ms (fail) | 449.18ms | 520.38ms | 6.16ms (fail) |
| deepPropagation | 96.67ms | 1.55s | 177.58ms | 1.86s (fail) | 174.15ms | 170.87ms | 140.62ms (fail) |
| diamond | 215.37ms | 2.40s | 298.30ms | 2.47s (fail) | 279.32ms | 358.88ms | 184.08ms (fail) |
| mux | 341.22ms | 1.83s | 404.32ms | 548.77ms (fail) | 410.00ms | 441.12ms | 196.24ms (fail) |
| repeatedObservers | 50.76ms | 233.11ms | 41.32ms | 373.71ms (fail) | 45.18ms | 86.10ms | 52.51ms (fail) |
| triangle | 95.63ms | 765.71ms | 102.80ms | 869.32ms (fail) | 106.70ms | 116.37ms | 76.41ms (fail) |
| unstable | 70.69ms | 349.74ms | 74.55ms | 618.44ms (fail) | 79.14ms | 102.44ms | 339.82ms (fail) |
| molBench | 485.29ms | 569.35ms | 491.06ms | 10.97ms | 485.69ms | 501.45ms | 1.31ms |
| create_signals | 25.99ms | 86.88ms | 5.06ms | 24.41ms | 25.56ms | 34.57ms | 64.16ms |
| comp_0to1 | 10.00ms | 28.61ms | 21.77ms | 14.01ms | 11.30ms | 30.35ms | 60.43ms |
| comp_1to1 | 23.86ms | 44.44ms | 12.62ms | 22.81ms | 27.33ms | 40.09ms | 54.33ms |
| comp_2to1 | 18.52ms | 21.92ms | 17.04ms | 24.15ms | 11.83ms | 13.04ms | 39.32ms |
| comp_4to1 | 3.94ms | 17.76ms | 8.43ms | 5.90ms | 1.84ms | 34.17ms | 16.14ms |
| comp_1000to1 | 4μs | 22μs | 7μs | 4μs | 5μs | 31μs | 41μs |
| comp_1to2 | 11.76ms | 36.53ms | 23.32ms | 11.79ms | 21.30ms | 29.33ms | 43.82ms |
| comp_1to4 | 18.70ms | 20.52ms | 22.11ms | 23.24ms | 9.33ms | 26.27ms | 42.95ms |
| comp_1to8 | 5.36ms | 23.95ms | 8.67ms | 4.84ms | 12.37ms | 17.85ms | 42.46ms |
| comp_1to1000 | 3.67ms | 16.20ms | 6.25ms | 4.03ms | 6.94ms | 16.03ms | 38.05ms |
| update_1to1 | 5.74ms | 24.36ms | 8.64ms | 85.40ms | 8.91ms | 15.58ms | 5.68ms |
| update_2to1 | 2.91ms | 11.41ms | 4.21ms | 44.73ms | 4.49ms | 7.79ms | 2.82ms |
| update_4to1 | 1.53ms | 7.16ms | 2.18ms | 20.92ms | 2.34ms | 3.83ms | 1.42ms |
| update_1000to1 | 26μs | 70μs | 21μs | 174μs | 22μs | 38μs | 15μs |
| update_1to2 | 2.90ms | 11.59ms | 4.55ms | 42.69ms | 4.47ms | 7.66ms | 2.84ms |
| update_1to4 | 1.55ms | 6.06ms | 2.19ms | 20.49ms | 2.25ms | 3.85ms | 1.43ms |
| update_1to1000 | 52μs | 174μs | 992μs | 117μs | 42μs | 170μs | 371μs |
| cellx1000 | 7.13ms | 69.73ms | 9.69ms | N/A | 9.57ms | 14.76ms | 5.21ms |
| cellx2500 | 18.99ms | 241.07ms | 27.66ms | N/A | 30.79ms | 34.54ms | 23.96ms |
| cellx5000 | 47.65ms | 543.41ms | 65.64ms | N/A | 66.86ms | 78.91ms | 65.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.57ms | 2.07s | 443.21ms | 2.19s | 521.15ms | 399.56ms | 239.09ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.92ms | 1.55s | 272.73ms | 1.49s (partial) | 282.95ms | 262.12ms | 202.22ms |
| 1000x12 - 4 sources - dynamic (large) | 341.63ms | 2.00s | 3.60s | 2.55s (partial) | 3.99s | 467.59ms | 331.02ms |
| 1000x5 - 25 sources (wide dense) | 490.23ms | 3.72s | 2.70s | 4.13s | 3.57s | 754.12ms | 499.00ms |
| 5x500 - 3 sources (deep) | 194.94ms | 1.14s | 228.76ms | 1.34s | 223.00ms | 274.90ms | 205.41ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 285.14ms | 1.76s | 453.47ms | 1.73s (partial) | 480.61ms | 388.44ms | 259.41ms |

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
