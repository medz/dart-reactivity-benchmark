# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.36s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.48s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.38s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.28s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.91s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.36s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 38.99s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.24ms | 165.11ms | 2.34s | 198.61ms | 1.34s | 207.56ms | 276.40ms | 2.15s | 161.39ms (fail) |
| broadPropagation | 372.82ms | 317.78ms | 4.43s | 448.57ms | 80.35ms (fail) | 458.50ms | 502.21ms | 5.41s | 6.57ms (fail) |
| deepPropagation | 129.27ms | 98.47ms | 1.56s | 177.51ms | 1.86s (fail) | 165.68ms | 167.97ms | 1.96s | 143.50ms (fail) |
| diamond | 240.31ms | 210.97ms | 2.45s | 281.86ms | 2.49s (fail) | 277.68ms | 354.42ms | 3.40s | 187.84ms (fail) |
| mux | 380.84ms | 344.37ms | 1.85s | 400.53ms | 565.79ms (fail) | 412.14ms | 443.06ms | 2.00s | 195.06ms (fail) |
| repeatedObservers | 47.16ms | 51.13ms | 232.72ms | 39.71ms | 386.69ms (fail) | 44.99ms | 81.62ms | 219.81ms | 55.16ms (fail) |
| triangle | 87.02ms | 79.03ms | 763.99ms | 98.50ms | 922.26ms (fail) | 99.45ms | 118.29ms | 1.12s | 81.22ms (fail) |
| unstable | 62.19ms | 70.06ms | 355.71ms | 69.93ms | 620.77ms (fail) | 79.19ms | 97.17ms | 343.22ms | 336.36ms (fail) |
| molBench | 492.57ms | 491.95ms | 571.45ms | 488.74ms | 11.81ms | 486.02ms | 494.89ms | 1.71s | 962μs |
| create_signals | 7.53ms | 26.82ms | 90.61ms | 5.20ms | 24.34ms | 25.57ms | 79.79ms | 56.10ms | 59.39ms |
| comp_0to1 | 23.15ms | 10.80ms | 16.55ms | 17.84ms | 13.94ms | 11.72ms | 29.04ms | 22.47ms | 52.41ms |
| comp_1to1 | 18.83ms | 24.25ms | 41.51ms | 14.45ms | 22.77ms | 28.50ms | 41.09ms | 43.69ms | 53.82ms |
| comp_2to1 | 20.31ms | 15.30ms | 28.22ms | 19.41ms | 24.92ms | 9.52ms | 27.75ms | 25.16ms | 34.93ms |
| comp_4to1 | 2.13ms | 3.16ms | 17.62ms | 13.55ms | 4.00ms | 2.11ms | 14.05ms | 30.68ms | 15.87ms |
| comp_1000to1 | 4μs | 4μs | 21μs | 4μs | 4μs | 5μs | 21μs | 2.80ms | 40μs |
| comp_1to2 | 11.29ms | 19.96ms | 36.62ms | 15.63ms | 12.85ms | 18.39ms | 42.07ms | 30.16ms | 44.17ms |
| comp_1to4 | 8.52ms | 16.76ms | 20.14ms | 22.74ms | 24.35ms | 15.09ms | 23.08ms | 27.25ms | 43.43ms |
| comp_1to8 | 4.39ms | 6.42ms | 24.50ms | 8.21ms | 4.81ms | 7.43ms | 25.22ms | 25.40ms | 42.65ms |
| comp_1to1000 | 3.36ms | 9.11ms | 16.16ms | 6.79ms | 4.14ms | 4.29ms | 17.00ms | 17.54ms | 38.32ms |
| update_1to1 | 4.50ms | 6.05ms | 28.02ms | 8.71ms | 84.07ms | 9.02ms | 16.11ms | 43.10ms | 5.67ms |
| update_2to1 | 2.73ms | 2.86ms | 13.24ms | 4.24ms | 42.56ms | 4.49ms | 7.83ms | 21.40ms | 2.84ms |
| update_4to1 | 1.17ms | 3.53ms | 7.29ms | 2.19ms | 20.56ms | 2.23ms | 3.98ms | 10.79ms | 1.46ms |
| update_1000to1 | 11μs | 13μs | 64μs | 21μs | 178μs | 22μs | 40μs | 118μs | 14μs |
| update_1to2 | 2.33ms | 3.35ms | 12.69ms | 4.75ms | 43.94ms | 4.46ms | 8.06ms | 21.21ms | 2.87ms |
| update_1to4 | 1.19ms | 1.39ms | 6.80ms | 2.18ms | 20.83ms | 2.25ms | 4.05ms | 10.79ms | 1.47ms |
| update_1to1000 | 40μs | 33μs | 173μs | 995μs | 93μs | 44μs | 171μs | 222μs | 372μs |
| cellx1000 | 7.31ms | 27.34ms | 84.87ms | 10.33ms | N/A | 10.42ms | 16.53ms | 143.16ms | 5.20ms |
| cellx2500 | 22.79ms | 120.52ms | 276.37ms | 32.01ms | N/A | 39.00ms | 76.92ms | 443.26ms | 23.77ms |
| cellx5000 | 47.72ms | 396.53ms | 630.25ms | 109.04ms | N/A | 90.09ms | 194.31ms | 1.04s | 54.18ms |
| 10x5 - 2 sources - read 20.0% (simple) | 244.07ms | 234.60ms | 2.08s | 436.93ms | 2.12s | 519.09ms | 360.83ms | 2.54s (partial) | 243.29ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.07ms | 183.65ms | 1.53s | 274.22ms | 1.45s (partial) | 279.24ms | 248.27ms | 2.34s (partial) | 196.68ms |
| 1000x12 - 4 sources - dynamic (large) | 302.98ms | 349.80ms | 1.96s | 3.77s | 2.63s (partial) | 3.76s | 477.37ms | 4.00s (partial) | 346.57ms |
| 1000x5 - 25 sources (wide dense) | 446.49ms | 601.64ms | 3.56s | 2.71s | 4.29s | 3.50s | 585.40ms | 5.12s (partial) | 471.89ms |
| 5x500 - 3 sources (deep) | 203.04ms | 195.02ms | 1.17s | 231.47ms | 1.48s | 224.92ms | 255.35ms | 1.93s (partial) | 201.03ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.61ms | 273.48ms | 1.70s | 456.67ms | 1.77s (partial) | 484.71ms | 393.39ms | 2.73s (partial) | 265.06ms |

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
