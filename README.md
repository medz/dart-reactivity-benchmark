# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.32s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.35s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.65s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.10s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.42s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 38.91s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.12ms | 161.17ms | 2.42s | 201.62ms | 1.35s | 211.46ms | 267.76ms | 2.11s | 164.13ms (fail) |
| broadPropagation | 377.10ms | 323.83ms | 4.38s | 449.44ms | 79.78ms (fail) | 458.08ms | 502.17ms | 5.32s | 6.21ms (fail) |
| deepPropagation | 127.88ms | 98.14ms | 1.55s | 175.05ms | 1.90s (fail) | 176.91ms | 170.60ms | 1.96s | 139.67ms (fail) |
| diamond | 235.46ms | 220.24ms | 2.51s | 279.02ms | 2.51s (fail) | 275.68ms | 347.17ms | 3.38s | 183.43ms (fail) |
| mux | 381.96ms | 339.42ms | 1.86s | 401.90ms | 581.71ms (fail) | 444.82ms | 443.93ms | 1.98s | 197.97ms (fail) |
| repeatedObservers | 47.21ms | 51.89ms | 251.37ms | 39.88ms | 385.39ms (fail) | 44.70ms | 81.12ms | 216.83ms | 52.59ms (fail) |
| triangle | 87.18ms | 82.46ms | 784.42ms | 99.70ms | 969.85ms (fail) | 98.78ms | 118.99ms | 1.11s | 76.55ms (fail) |
| unstable | 61.62ms | 71.57ms | 360.39ms | 70.99ms | 609.40ms (fail) | 79.69ms | 97.03ms | 343.11ms | 335.76ms (fail) |
| molBench | 493.75ms | 493.23ms | 587.61ms | 486.40ms | 11.07ms | 486.93ms | 494.94ms | 1.71s | 945μs |
| create_signals | 7.47ms | 27.35ms | 87.05ms | 5.19ms | 23.00ms | 25.94ms | 59.80ms | 90.44ms | 64.43ms |
| comp_0to1 | 22.85ms | 10.69ms | 49.49ms | 17.73ms | 13.47ms | 11.97ms | 27.55ms | 35.68ms | 57.55ms |
| comp_1to1 | 19.70ms | 22.65ms | 32.31ms | 14.31ms | 22.89ms | 20.60ms | 49.92ms | 41.74ms | 58.67ms |
| comp_2to1 | 15.43ms | 15.47ms | 22.04ms | 17.14ms | 24.57ms | 8.80ms | 37.48ms | 25.59ms | 43.66ms |
| comp_4to1 | 1.66ms | 3.94ms | 19.26ms | 17.53ms | 4.57ms | 1.96ms | 11.99ms | 25.97ms | 18.16ms |
| comp_1000to1 | 3μs | 4μs | 36μs | 4μs | 3μs | 5μs | 17μs | 3.03ms | 41μs |
| comp_1to2 | 10.61ms | 26.63ms | 34.97ms | 20.80ms | 10.27ms | 16.20ms | 30.43ms | 21.02ms | 46.40ms |
| comp_1to4 | 5.97ms | 21.54ms | 23.08ms | 30.90ms | 22.71ms | 10.66ms | 22.07ms | 24.28ms | 47.42ms |
| comp_1to8 | 5.84ms | 5.73ms | 25.70ms | 5.31ms | 5.15ms | 6.72ms | 25.72ms | 19.16ms | 43.63ms |
| comp_1to1000 | 3.89ms | 3.74ms | 16.36ms | 5.64ms | 4.10ms | 4.25ms | 16.81ms | 17.28ms | 38.82ms |
| update_1to1 | 4.53ms | 5.41ms | 28.00ms | 8.63ms | 85.50ms | 8.87ms | 15.95ms | 43.39ms | 5.68ms |
| update_2to1 | 2.31ms | 2.79ms | 14.11ms | 4.37ms | 42.37ms | 4.49ms | 7.80ms | 21.37ms | 2.83ms |
| update_4to1 | 1.16ms | 1.35ms | 7.54ms | 2.21ms | 20.06ms | 2.27ms | 4.00ms | 10.79ms | 1.44ms |
| update_1000to1 | 11μs | 13μs | 70μs | 22μs | 177μs | 22μs | 40μs | 117μs | 14μs |
| update_1to2 | 2.31ms | 2.71ms | 13.78ms | 4.33ms | 42.16ms | 4.47ms | 8.02ms | 21.09ms | 2.83ms |
| update_1to4 | 1.19ms | 1.44ms | 6.53ms | 2.19ms | 20.44ms | 2.33ms | 3.98ms | 10.97ms | 1.44ms |
| update_1to1000 | 39μs | 30μs | 174μs | 917μs | 114μs | 42μs | 170μs | 212μs | 382μs |
| cellx1000 | 9.45ms | 29.89ms | 75.34ms | 11.19ms | N/A | 9.55ms | 12.08ms | 159.79ms | 5.26ms |
| cellx2500 | 23.75ms | 129.50ms | 265.56ms | 34.80ms | N/A | 33.05ms | 34.75ms | 501.44ms | 28.94ms |
| cellx5000 | 50.02ms | 404.02ms | 594.95ms | 90.68ms | N/A | 68.69ms | 80.05ms | 1.14s | 85.73ms |
| 10x5 - 2 sources - read 20.0% (simple) | 227.91ms | 232.97ms | 2.05s | 441.41ms | 2.13s | 521.87ms | 354.58ms | 2.56s (partial) | 246.90ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.03ms | 186.11ms | 1.53s | 266.88ms | 1.44s (partial) | 285.34ms | 241.98ms | 2.32s (partial) | 204.12ms |
| 1000x12 - 4 sources - dynamic (large) | 304.80ms | 357.19ms | 2.00s | 3.74s | 2.48s (partial) | 4.02s | 472.13ms | 3.98s (partial) | 355.97ms |
| 1000x5 - 25 sources (wide dense) | 452.75ms | 495.48ms | 3.60s | 2.72s | 4.26s | 3.59s | 593.51ms | 5.01s (partial) | 500.02ms |
| 5x500 - 3 sources (deep) | 201.83ms | 197.67ms | 1.18s | 231.96ms | 1.64s | 227.37ms | 254.00ms | 1.96s (partial) | 208.21ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.05ms | 289.21ms | 1.72s | 447.94ms | 1.73s (partial) | 483.37ms | 383.89ms | 2.73s (partial) | 261.16ms |

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
