# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.92s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.02s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.67s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.63ms | 2.31s | 204.74ms | 1.25s | 1.45s | 214.52ms | 274.18ms | 151.82ms (fail) |
| broadPropagation | 358.11ms | 4.21s | 457.19ms | 4.99s | 82.94ms (fail) | 459.86ms | 505.91ms | 6.03ms (fail) |
| deepPropagation | 122.20ms | 1.52s | 176.31ms | 4.00s | 1.89s (fail) | 179.69ms | 177.18ms | 140.57ms (fail) |
| diamond | 237.49ms | 2.41s | 283.05ms | 14.03s (fail) | 2.64s (fail) | 296.71ms | 354.21ms | 190.08ms (fail) |
| mux | 375.39ms | 1.80s | 389.43ms | 1.02s | 562.43ms (fail) | 404.04ms | 440.39ms | 200.97ms (fail) |
| repeatedObservers | 44.89ms | 227.17ms | 38.66ms | 9.74s | 385.93ms (fail) | 46.00ms | 81.04ms | 52.88ms (fail) |
| triangle | 86.79ms | 757.62ms | 99.95ms | 4.52s | 870.42ms (fail) | 100.34ms | 119.10ms | 78.39ms (fail) |
| unstable | 60.72ms | 347.27ms | 71.03ms | 7.64s | 666.71ms (fail) | 74.63ms | 95.23ms | 340.49ms (fail) |
| molBench | 491.27ms | 581.33ms | 491.54ms | 5.90s | 12.20ms | 486.00ms | 493.17ms | 1.11ms |
| create_signals | 27.74ms | 78.38ms | 4.61ms | 13.34ms | 22.61ms | 25.07ms | 92.99ms | 61.72ms |
| comp_0to1 | 7.84ms | 21.18ms | 17.65ms | 13.68ms | 13.63ms | 11.19ms | 36.50ms | 51.99ms |
| comp_1to1 | 4.38ms | 41.64ms | 14.03ms | 99.56ms | 25.57ms | 17.94ms | 40.86ms | 54.91ms |
| comp_2to1 | 2.28ms | 24.79ms | 16.13ms | 72.37ms | 29.70ms | 8.26ms | 30.09ms | 34.81ms |
| comp_4to1 | 8.55ms | 24.22ms | 12.56ms | 85.23ms | 6.17ms | 1.97ms | 11.80ms | 15.85ms |
| comp_1000to1 | 5μs | 21μs | 5μs | 59.32ms | 3μs | 5μs | 19μs | 42μs |
| comp_1to2 | 13.08ms | 33.25ms | 15.33ms | 66.89ms | 11.08ms | 19.46ms | 27.89ms | 44.43ms |
| comp_1to4 | 9.21ms | 16.85ms | 22.01ms | 99.18ms | 19.51ms | 9.80ms | 26.14ms | 43.68ms |
| comp_1to8 | 5.36ms | 19.30ms | 8.01ms | 116.37ms | 4.96ms | 6.63ms | 24.90ms | 43.64ms |
| comp_1to1000 | 3.54ms | 14.78ms | 6.37ms | 47.90ms | 3.94ms | 4.49ms | 14.96ms | 38.17ms |
| update_1to1 | 11.23ms | 21.91ms | 8.23ms | N/A | 84.25ms | 9.24ms | 16.15ms | 5.73ms |
| update_2to1 | 4.40ms | 11.27ms | 4.06ms | N/A | 46.05ms | 4.57ms | 7.99ms | 2.91ms |
| update_4to1 | 2.78ms | 5.85ms | 2.13ms | N/A | 20.59ms | 2.34ms | 4.04ms | 1.61ms |
| update_1000to1 | 10μs | 69μs | 36μs | N/A | 178μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.51ms | 10.88ms | 4.08ms | N/A | 43.19ms | 4.91ms | 8.12ms | 2.98ms |
| update_1to4 | 2.36ms | 5.21ms | 2.12ms | N/A | 20.97ms | 2.33ms | 4.05ms | 1.51ms |
| update_1to1000 | 46μs | 164μs | 875μs | N/A | 94μs | 44μs | 159μs | 371μs |
| cellx1000 | 7.35ms | 69.92ms | 9.76ms | N/A | N/A | 9.49ms | 11.74ms | 5.64ms |
| cellx2500 | 19.91ms | 238.13ms | 25.60ms | N/A | N/A | 30.53ms | 37.55ms | 27.11ms |
| cellx5000 | 48.53ms | 539.37ms | 63.13ms | N/A | N/A | 58.05ms | 101.62ms | 63.74ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.88ms | 1.99s | 445.09ms | N/A | 2.34s | 511.59ms | 357.10ms | 248.82ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 181.84ms | 1.54s | 272.07ms | N/A | 1.51s (partial) | 280.58ms | 245.98ms | 204.38ms |
| 1000x12 - 4 sources - dynamic (large) | 277.31ms | 1.85s | 3.47s | N/A | 2.52s (partial) | 3.75s | 479.46ms | 344.22ms |
| 1000x5 - 25 sources (wide dense) | 404.46ms | 3.49s | 2.60s | N/A | 4.09s | 3.42s | 593.71ms | 499.41ms |
| 5x500 - 3 sources (deep) | 193.93ms | 1.12s | 232.88ms | N/A | 1.41s | 226.80ms | 266.48ms | 209.21ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.87ms | 1.68s | 453.85ms | N/A | 1.90s (partial) | 477.48ms | 379.15ms | 259.64ms |

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
