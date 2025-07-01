# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.38s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.27s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.14s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.80s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.40s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.25s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.39s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.22ms | 161.34ms | 2.36s | 201.53ms | 1.37s | 206.44ms | 270.35ms | 2.15s | 158.88ms (fail) |
| broadPropagation | 373.31ms | 315.69ms | 4.52s | 456.50ms | 82.58ms (fail) | 457.75ms | 505.11ms | 5.44s | 5.90ms (fail) |
| deepPropagation | 124.94ms | 99.23ms | 1.58s | 175.97ms | 1.96s (fail) | 170.53ms | 169.51ms | 1.99s | 145.75ms (fail) |
| diamond | 235.50ms | 216.23ms | 2.45s | 279.98ms | 2.63s (fail) | 280.04ms | 347.91ms | 3.43s | 182.50ms (fail) |
| mux | 381.64ms | 345.57ms | 1.89s | 401.23ms | 561.72ms (fail) | 443.30ms | 438.25ms | 1.99s | 192.40ms (fail) |
| repeatedObservers | 47.28ms | 50.14ms | 237.46ms | 40.28ms | 378.56ms (fail) | 44.82ms | 81.19ms | 216.52ms | 52.31ms (fail) |
| triangle | 89.99ms | 78.95ms | 777.39ms | 100.18ms | 899.41ms (fail) | 100.17ms | 120.55ms | 1.13s | 76.30ms (fail) |
| unstable | 61.15ms | 70.65ms | 353.19ms | 70.02ms | 608.92ms (fail) | 80.40ms | 96.36ms | 352.96ms | 337.12ms (fail) |
| molBench | 494.71ms | 492.57ms | 574.94ms | 488.29ms | 11.81ms | 486.83ms | 493.72ms | 1.71s | 956μs |
| create_signals | 7.50ms | 27.45ms | 81.19ms | 5.23ms | 23.32ms | 25.33ms | 101.46ms | 79.11ms | 61.76ms |
| comp_0to1 | 21.12ms | 9.73ms | 16.12ms | 17.36ms | 13.13ms | 11.23ms | 36.74ms | 36.43ms | 55.77ms |
| comp_1to1 | 17.26ms | 29.16ms | 38.94ms | 12.30ms | 19.00ms | 27.19ms | 53.47ms | 34.84ms | 55.98ms |
| comp_2to1 | 13.36ms | 21.63ms | 34.91ms | 19.94ms | 23.98ms | 8.33ms | 48.03ms | 37.92ms | 37.50ms |
| comp_4to1 | 1.71ms | 6.22ms | 13.88ms | 17.16ms | 7.68ms | 1.92ms | 20.21ms | 27.38ms | 17.00ms |
| comp_1000to1 | 4μs | 17μs | 21μs | 9μs | 4μs | 5μs | 17μs | 2.98ms | 56μs |
| comp_1to2 | 11.29ms | 10.95ms | 35.82ms | 17.94ms | 11.92ms | 12.91ms | 34.33ms | 27.88ms | 45.70ms |
| comp_1to4 | 8.30ms | 18.31ms | 19.95ms | 27.15ms | 24.51ms | 14.68ms | 22.64ms | 28.89ms | 45.12ms |
| comp_1to8 | 4.31ms | 5.18ms | 23.44ms | 6.71ms | 5.09ms | 6.52ms | 25.62ms | 23.65ms | 44.67ms |
| comp_1to1000 | 3.28ms | 3.88ms | 16.07ms | 5.87ms | 4.54ms | 4.21ms | 17.50ms | 18.37ms | 40.08ms |
| update_1to1 | 4.56ms | 5.47ms | 23.95ms | 9.36ms | 82.92ms | 8.92ms | 17.28ms | 43.22ms | 5.66ms |
| update_2to1 | 2.38ms | 5.07ms | 11.56ms | 4.29ms | 41.32ms | 4.46ms | 8.02ms | 21.48ms | 2.90ms |
| update_4to1 | 1.19ms | 1.55ms | 6.19ms | 2.24ms | 19.94ms | 2.69ms | 4.12ms | 10.80ms | 1.50ms |
| update_1000to1 | 12μs | 13μs | 70μs | 21μs | 182μs | 22μs | 61μs | 130μs | 14μs |
| update_1to2 | 2.37ms | 2.71ms | 11.24ms | 4.66ms | 41.72ms | 4.48ms | 8.16ms | 21.19ms | 2.91ms |
| update_1to4 | 1.23ms | 1.39ms | 6.24ms | 2.18ms | 20.57ms | 2.32ms | 4.04ms | 10.74ms | 1.49ms |
| update_1to1000 | 48μs | 32μs | 167μs | 742μs | 112μs | 43μs | 172μs | 210μs | 384μs |
| cellx1000 | 7.24ms | 30.25ms | 70.06ms | 9.75ms | N/A | 9.68ms | 12.33ms | 156.37ms | 6.49ms |
| cellx2500 | 21.65ms | 123.13ms | 245.01ms | 26.20ms | N/A | 30.88ms | 33.63ms | 478.16ms | 23.72ms |
| cellx5000 | 44.01ms | 400.83ms | 556.20ms | 70.33ms | N/A | 60.53ms | 73.90ms | 1.15s | 60.20ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.06ms | 233.24ms | 2.02s | 440.22ms | 2.16s | 500.47ms | 362.69ms | 2.62s (partial) | 245.59ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.96ms | 182.18ms | 1.56s | 275.87ms | 1.46s (partial) | 281.16ms | 242.21ms | 2.40s (partial) | 199.16ms |
| 1000x12 - 4 sources - dynamic (large) | 297.54ms | 343.01ms | 1.94s | 3.68s | 2.46s (partial) | 3.74s | 455.50ms | 4.08s (partial) | 329.28ms |
| 1000x5 - 25 sources (wide dense) | 445.85ms | 613.00ms | 3.51s | 2.72s | 4.28s | 3.41s | 592.66ms | 5.04s (partial) | 495.94ms |
| 5x500 - 3 sources (deep) | 202.35ms | 197.06ms | 1.14s | 229.63ms | 1.32s | 225.57ms | 251.42ms | 1.93s (partial) | 207.03ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.51ms | 280.25ms | 1.68s | 455.93ms | 1.72s (partial) | 482.00ms | 381.07ms | 2.71s (partial) | 258.87ms |

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
