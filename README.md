# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.36s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.38s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.87s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.41s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.40ms | 161.22ms | 2.30s | 207.16ms | 1.47s | 210.20ms | 272.48ms | 2.16s | 157.18ms (fail) |
| broadPropagation | 382.14ms | 327.18ms | 4.29s | 455.34ms | 82.56ms (fail) | 454.67ms | 503.15ms | 5.40s | 6.39ms (fail) |
| deepPropagation | 127.94ms | 96.25ms | 1.52s | 179.65ms | 1.97s (fail) | 179.26ms | 176.13ms | 2.00s | 140.85ms (fail) |
| diamond | 231.92ms | 210.69ms | 2.40s | 278.98ms | 2.69s (fail) | 294.58ms | 347.13ms | 3.42s | 191.94ms (fail) |
| mux | 377.34ms | 341.07ms | 1.83s | 383.91ms | 560.96ms (fail) | 410.30ms | 443.32ms | 1.98s | 190.69ms (fail) |
| repeatedObservers | 48.48ms | 51.06ms | 228.39ms | 38.33ms | 386.51ms (fail) | 46.90ms | 78.14ms | 218.70ms | 52.86ms (fail) |
| triangle | 83.58ms | 75.69ms | 766.20ms | 98.94ms | 888.95ms (fail) | 103.70ms | 119.87ms | 1.12s | 84.97ms (fail) |
| unstable | 63.27ms | 70.08ms | 350.92ms | 71.22ms | 618.33ms (fail) | 76.02ms | 93.66ms | 349.05ms | 336.96ms (fail) |
| molBench | 482.16ms | 480.88ms | 577.93ms | 491.52ms | 11.25ms | 490.10ms | 492.86ms | 1.71s | 1.14ms |
| create_signals | 7.58ms | 25.13ms | 58.87ms | 5.17ms | 23.76ms | 25.70ms | 71.66ms | 84.50ms | 64.66ms |
| comp_0to1 | 21.07ms | 10.80ms | 20.26ms | 17.32ms | 15.12ms | 11.90ms | 26.91ms | 39.57ms | 53.06ms |
| comp_1to1 | 11.86ms | 18.58ms | 36.91ms | 13.86ms | 26.04ms | 26.55ms | 47.10ms | 38.25ms | 53.82ms |
| comp_2to1 | 14.38ms | 12.16ms | 13.01ms | 16.11ms | 25.22ms | 9.32ms | 45.73ms | 22.84ms | 36.46ms |
| comp_4to1 | 2.71ms | 6.52ms | 14.61ms | 14.94ms | 6.57ms | 2.03ms | 4.58ms | 34.45ms | 15.88ms |
| comp_1000to1 | 3μs | 6μs | 15μs | 4μs | 3μs | 5μs | 24μs | 2.96ms | 41μs |
| comp_1to2 | 11.91ms | 12.57ms | 41.50ms | 18.87ms | 15.51ms | 20.70ms | 27.88ms | 35.70ms | 44.74ms |
| comp_1to4 | 8.06ms | 15.44ms | 22.78ms | 22.75ms | 28.39ms | 12.65ms | 21.58ms | 24.33ms | 43.31ms |
| comp_1to8 | 4.26ms | 4.70ms | 24.00ms | 8.59ms | 7.77ms | 9.28ms | 24.18ms | 26.22ms | 42.46ms |
| comp_1to1000 | 3.24ms | 4.00ms | 16.54ms | 6.85ms | 4.38ms | 4.70ms | 15.36ms | 18.16ms | 38.29ms |
| update_1to1 | 4.94ms | 5.69ms | 24.26ms | 8.22ms | 84.32ms | 9.26ms | 16.11ms | 42.48ms | 5.79ms |
| update_2to1 | 2.38ms | 2.78ms | 11.73ms | 4.12ms | 42.31ms | 4.58ms | 7.90ms | 21.83ms | 2.87ms |
| update_4to1 | 1.21ms | 1.47ms | 6.37ms | 2.06ms | 20.37ms | 2.31ms | 4.05ms | 10.62ms | 1.46ms |
| update_1000to1 | 12μs | 27μs | 54μs | 20μs | 177μs | 23μs | 52μs | 117μs | 15μs |
| update_1to2 | 2.79ms | 2.84ms | 12.66ms | 4.05ms | 44.41ms | 4.90ms | 8.08ms | 21.04ms | 2.93ms |
| update_1to4 | 1.98ms | 1.50ms | 5.88ms | 2.04ms | 20.61ms | 2.31ms | 4.05ms | 10.62ms | 1.46ms |
| update_1to1000 | 30μs | 56μs | 167μs | 1.29ms | 96μs | 43μs | 160μs | 202μs | 371μs |
| cellx1000 | 7.15ms | 28.38ms | 73.63ms | 9.67ms | N/A | 9.67ms | 11.24ms | 165.36ms | 5.34ms |
| cellx2500 | 21.71ms | 126.35ms | 249.26ms | 26.53ms | N/A | 32.23ms | 38.92ms | 479.39ms | 28.97ms |
| cellx5000 | 49.45ms | 402.52ms | 573.12ms | 73.50ms | N/A | 65.26ms | 85.37ms | 1.13s | 71.29ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.49ms | 230.38ms | 2.06s | 438.71ms | 2.29s | 508.96ms | 349.71ms | 2.64s (partial) | 248.31ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.72ms | 182.29ms | 1.53s | 273.56ms | 1.51s (partial) | 279.48ms | 242.82ms | 2.41s (partial) | 213.50ms |
| 1000x12 - 4 sources - dynamic (large) | 300.54ms | 348.05ms | 1.87s | 3.56s | 2.55s (partial) | 3.76s | 461.69ms | 4.09s (partial) | 344.94ms |
| 1000x5 - 25 sources (wide dense) | 447.65ms | 630.85ms | 3.54s | 2.60s | 4.26s | 3.43s | 597.96ms | 5.03s (partial) | 501.70ms |
| 5x500 - 3 sources (deep) | 199.36ms | 195.62ms | 1.19s | 230.59ms | 1.41s | 227.73ms | 252.40ms | 1.93s (partial) | 214.31ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.39ms | 278.30ms | 1.72s | 451.74ms | 1.81s (partial) | 479.23ms | 381.01ms | 2.74s (partial) | 264.99ms |

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
