# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.35s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.23s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.05s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.23s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.32s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.71s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.61s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.00ms | 159.21ms | 2.30s | 206.27ms | 1.47s | 207.63ms | 272.96ms | 2.21s | 148.80ms (fail) |
| broadPropagation | 382.81ms | 324.49ms | 4.28s | 454.42ms | 82.52ms (fail) | 458.60ms | 513.45ms | 5.50s | 5.96ms (fail) |
| deepPropagation | 127.64ms | 95.94ms | 1.53s | 181.58ms | 1.92s (fail) | 176.52ms | 178.59ms | 2.04s | 143.99ms (fail) |
| diamond | 237.04ms | 208.29ms | 2.41s | 282.51ms | 2.67s (fail) | 291.70ms | 356.05ms | 3.49s | 190.49ms (fail) |
| mux | 376.82ms | 338.12ms | 1.80s | 386.43ms | 571.20ms (fail) | 414.78ms | 439.14ms | 2.04s | 190.04ms (fail) |
| repeatedObservers | 48.08ms | 55.05ms | 227.52ms | 38.08ms | 386.59ms (fail) | 45.87ms | 78.63ms | 218.06ms | 53.13ms (fail) |
| triangle | 87.33ms | 74.27ms | 793.64ms | 100.26ms | 916.86ms (fail) | 102.88ms | 119.69ms | 1.15s | 77.36ms (fail) |
| unstable | 62.74ms | 68.54ms | 344.01ms | 70.57ms | 615.15ms (fail) | 74.23ms | 93.79ms | 343.55ms | 337.66ms (fail) |
| molBench | 482.39ms | 481.06ms | 575.91ms | 492.15ms | 11.91ms | 486.08ms | 493.31ms | 1.71s | 1.21ms |
| create_signals | 6.90ms | 27.72ms | 66.54ms | 5.30ms | 24.58ms | 25.69ms | 51.95ms | 55.52ms | 59.52ms |
| comp_0to1 | 23.63ms | 12.06ms | 34.20ms | 17.87ms | 15.04ms | 11.96ms | 25.05ms | 39.43ms | 52.35ms |
| comp_1to1 | 14.60ms | 17.36ms | 38.17ms | 10.92ms | 30.34ms | 29.38ms | 44.10ms | 29.98ms | 53.87ms |
| comp_2to1 | 13.65ms | 13.70ms | 23.34ms | 11.47ms | 32.54ms | 16.89ms | 24.65ms | 32.12ms | 35.97ms |
| comp_4to1 | 1.65ms | 2.80ms | 13.61ms | 13.19ms | 9.68ms | 9.23ms | 15.80ms | 20.19ms | 16.57ms |
| comp_1000to1 | 4μs | 6μs | 15μs | 4μs | 3μs | 5μs | 15μs | 3.06ms | 41μs |
| comp_1to2 | 9.60ms | 10.71ms | 35.35ms | 17.95ms | 14.59ms | 22.03ms | 31.62ms | 29.01ms | 46.83ms |
| comp_1to4 | 4.72ms | 19.80ms | 31.69ms | 39.71ms | 27.29ms | 9.16ms | 14.74ms | 32.65ms | 44.10ms |
| comp_1to8 | 6.89ms | 4.66ms | 20.29ms | 8.32ms | 9.04ms | 6.97ms | 20.54ms | 27.88ms | 44.26ms |
| comp_1to1000 | 3.49ms | 3.85ms | 15.10ms | 6.06ms | 4.51ms | 4.62ms | 14.72ms | 18.70ms | 38.90ms |
| update_1to1 | 4.87ms | 5.70ms | 21.20ms | 8.20ms | 84.92ms | 9.35ms | 16.21ms | 42.24ms | 5.72ms |
| update_2to1 | 2.41ms | 2.85ms | 10.49ms | 4.09ms | 43.21ms | 4.55ms | 7.92ms | 20.95ms | 2.88ms |
| update_4to1 | 1.21ms | 1.47ms | 5.28ms | 2.05ms | 20.84ms | 2.30ms | 4.04ms | 10.54ms | 1.45ms |
| update_1000to1 | 11μs | 14μs | 52μs | 20μs | 179μs | 22μs | 40μs | 116μs | 15μs |
| update_1to2 | 2.56ms | 2.83ms | 11.18ms | 4.12ms | 42.60ms | 4.98ms | 8.09ms | 20.83ms | 2.95ms |
| update_1to4 | 1.19ms | 1.40ms | 5.30ms | 2.06ms | 20.98ms | 2.31ms | 4.03ms | 10.54ms | 1.46ms |
| update_1to1000 | 30μs | 33μs | 175μs | 176μs | 96μs | 43μs | 151μs | 199μs | 390μs |
| cellx1000 | 7.28ms | 28.38ms | 81.58ms | 9.49ms | N/A | 9.87ms | 11.38ms | 158.03ms | 5.44ms |
| cellx2500 | 23.22ms | 128.38ms | 244.32ms | 25.84ms | N/A | 35.17ms | 35.18ms | 479.77ms | 24.78ms |
| cellx5000 | 45.41ms | 402.04ms | 631.07ms | 69.68ms | N/A | 71.42ms | 75.39ms | 1.20s | 76.32ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.32ms | 231.32ms | 2.01s | 479.50ms | 2.27s | 509.16ms | 349.05ms | 2.62s (partial) | 260.40ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.39ms | 185.19ms | 1.53s | 283.57ms | 1.51s (partial) | 285.21ms | 243.85ms | 2.35s (partial) | 223.63ms |
| 1000x12 - 4 sources - dynamic (large) | 299.76ms | 358.73ms | 1.77s | 3.54s | 2.58s (partial) | 3.77s | 470.32ms | 3.95s (partial) | 350.29ms |
| 1000x5 - 25 sources (wide dense) | 446.05ms | 620.08ms | 3.58s | 2.61s | 4.07s | 3.42s | 587.51ms | 5.02s (partial) | 520.57ms |
| 5x500 - 3 sources (deep) | 203.68ms | 194.04ms | 1.17s | 231.59ms | 1.40s | 231.79ms | 253.24ms | 1.96s (partial) | 206.01ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 257.87ms | 272.32ms | 1.72s | 449.26ms | 1.86s (partial) | 475.99ms | 377.57ms | 2.78s (partial) | 274.71ms |

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
