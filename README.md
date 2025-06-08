# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.44s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.42s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.41s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.80s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.01s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.69s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 171.48ms | 162.40ms | 2.38s | 202.81ms | 1.35s | 207.27ms | 278.19ms | 2.24s | 168.06ms (fail) |
| broadPropagation | 367.96ms | 316.63ms | 4.52s | 497.87ms | 80.85ms (fail) | 452.42ms | 510.06ms | 5.72s | 6.09ms (fail) |
| deepPropagation | 131.05ms | 98.49ms | 1.61s | 177.71ms | 1.92s (fail) | 175.19ms | 170.51ms | 2.09s | 141.66ms (fail) |
| diamond | 235.49ms | 217.17ms | 2.55s | 297.50ms | 2.52s (fail) | 287.69ms | 355.06ms | 3.59s | 182.54ms (fail) |
| mux | 376.33ms | 351.79ms | 1.90s | 396.81ms | 555.20ms (fail) | 448.68ms | 450.57ms | 2.10s | 193.50ms (fail) |
| repeatedObservers | 47.14ms | 50.05ms | 241.21ms | 41.16ms | 375.00ms (fail) | 44.62ms | 81.60ms | 225.20ms | 53.55ms (fail) |
| triangle | 88.08ms | 77.28ms | 798.59ms | 101.56ms | 870.80ms (fail) | 99.28ms | 120.00ms | 1.18s | 77.33ms (fail) |
| unstable | 62.37ms | 69.54ms | 354.92ms | 72.70ms | 615.52ms (fail) | 79.34ms | 98.86ms | 361.69ms | 338.27ms (fail) |
| molBench | 493.20ms | 491.70ms | 579.70ms | 486.23ms | 11.01ms | 486.33ms | 493.78ms | 1.72s | 934μs |
| create_signals | 7.86ms | 26.60ms | 73.97ms | 10.71ms | 24.23ms | 25.41ms | 78.94ms | 50.22ms | 69.11ms |
| comp_0to1 | 21.48ms | 9.18ms | 26.58ms | 26.01ms | 15.29ms | 11.55ms | 29.01ms | 22.44ms | 63.29ms |
| comp_1to1 | 17.76ms | 30.60ms | 18.79ms | 11.00ms | 25.94ms | 29.40ms | 49.13ms | 46.60ms | 63.42ms |
| comp_2to1 | 19.60ms | 15.81ms | 22.29ms | 10.43ms | 26.02ms | 9.79ms | 41.91ms | 43.15ms | 44.66ms |
| comp_4to1 | 2.29ms | 4.17ms | 29.18ms | 17.95ms | 4.29ms | 1.88ms | 12.78ms | 36.99ms | 17.34ms |
| comp_1000to1 | 3μs | 4μs | 17μs | 4μs | 4μs | 7μs | 19μs | 2.90ms | 41μs |
| comp_1to2 | 10.22ms | 10.00ms | 37.98ms | 21.19ms | 12.75ms | 16.10ms | 29.62ms | 33.10ms | 48.47ms |
| comp_1to4 | 4.64ms | 23.91ms | 25.73ms | 28.26ms | 27.04ms | 14.56ms | 27.30ms | 28.43ms | 49.43ms |
| comp_1to8 | 7.99ms | 7.96ms | 22.25ms | 5.95ms | 7.78ms | 10.48ms | 26.00ms | 26.05ms | 44.60ms |
| comp_1to1000 | 3.53ms | 5.36ms | 16.77ms | 6.34ms | 4.57ms | 4.23ms | 17.26ms | 18.47ms | 39.17ms |
| update_1to1 | 4.51ms | 5.53ms | 25.19ms | 8.69ms | 87.19ms | 8.88ms | 16.09ms | 44.05ms | 5.67ms |
| update_2to1 | 2.36ms | 2.83ms | 12.67ms | 4.28ms | 43.99ms | 4.54ms | 7.81ms | 21.81ms | 2.87ms |
| update_4to1 | 1.16ms | 1.47ms | 6.22ms | 2.23ms | 20.97ms | 2.27ms | 4.00ms | 11.02ms | 1.49ms |
| update_1000to1 | 11μs | 24μs | 71μs | 21μs | 172μs | 22μs | 40μs | 131μs | 14μs |
| update_1to2 | 2.33ms | 2.75ms | 11.67ms | 4.81ms | 45.08ms | 4.46ms | 8.05ms | 21.64ms | 2.88ms |
| update_1to4 | 1.19ms | 1.35ms | 6.17ms | 2.20ms | 21.94ms | 2.27ms | 4.01ms | 10.99ms | 1.48ms |
| update_1to1000 | 40μs | 59μs | 177μs | 1.00ms | 121μs | 43μs | 171μs | 214μs | 390μs |
| cellx1000 | 7.39ms | 29.66ms | 77.66ms | 9.79ms | N/A | 10.24ms | 12.07ms | 159.04ms | 5.92ms |
| cellx2500 | 23.21ms | 127.79ms | 282.30ms | 27.49ms | N/A | 33.77ms | 34.22ms | 490.61ms | 25.38ms |
| cellx5000 | 47.50ms | 412.94ms | 594.73ms | 76.24ms | N/A | 67.49ms | 81.06ms | 1.16s | 73.95ms |
| 10x5 - 2 sources - read 20.0% (simple) | 227.24ms | 232.61ms | 2.12s | 439.73ms | 2.22s | 526.06ms | 357.24ms | 2.74s (partial) | 246.37ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.97ms | 184.34ms | 1.61s | 269.80ms | 1.42s (partial) | 294.24ms | 242.24ms | 2.42s (partial) | 203.90ms |
| 1000x12 - 4 sources - dynamic (large) | 306.07ms | 363.67ms | 2.09s | 3.76s | 2.47s (partial) | 3.79s | 463.62ms | 4.10s (partial) | 343.01ms |
| 1000x5 - 25 sources (wide dense) | 454.03ms | 626.74ms | 3.78s | 2.72s | 4.13s | 3.55s | 586.58ms | 5.12s (partial) | 477.65ms |
| 5x500 - 3 sources (deep) | 199.68ms | 198.18ms | 1.20s | 226.32ms | 1.35s | 225.22ms | 252.76ms | 2.05s (partial) | 202.97ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.42ms | 285.63ms | 1.78s | 456.42ms | 1.74s (partial) | 487.41ms | 385.31ms | 2.81s (partial) | 254.70ms |

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
