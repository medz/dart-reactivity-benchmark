# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.32s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.23s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.97s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.15s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.17s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.60s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.25ms | 156.50ms | 2.33s | 207.18ms | 1.55s | 207.59ms | 272.68ms | 2.16s | 151.93ms (fail) |
| broadPropagation | 380.15ms | 323.33ms | 4.42s | 454.79ms | 84.52ms (fail) | 452.67ms | 500.11ms | 5.43s | 6.17ms (fail) |
| deepPropagation | 128.45ms | 95.89ms | 1.58s | 178.29ms | 2.02s (fail) | 173.68ms | 175.94ms | 2.01s | 139.24ms (fail) |
| diamond | 235.76ms | 205.51ms | 2.44s | 280.87ms | 2.72s (fail) | 287.19ms | 353.80ms | 3.46s | 190.50ms (fail) |
| mux | 376.70ms | 341.33ms | 1.86s | 385.81ms | 590.96ms (fail) | 405.88ms | 433.14ms | 2.05s | 190.47ms (fail) |
| repeatedObservers | 47.97ms | 51.72ms | 230.06ms | 38.37ms | 435.89ms (fail) | 46.51ms | 78.75ms | 223.45ms | 53.29ms (fail) |
| triangle | 91.05ms | 75.04ms | 794.26ms | 98.99ms | 1.04s (fail) | 100.96ms | 119.15ms | 1.15s | 78.05ms (fail) |
| unstable | 62.17ms | 69.30ms | 352.31ms | 70.89ms | 625.31ms (fail) | 75.26ms | 94.21ms | 351.47ms | 337.81ms (fail) |
| molBench | 482.94ms | 480.82ms | 579.47ms | 492.18ms | 11.80ms | 487.04ms | 492.39ms | 1.71s | 1.00ms |
| create_signals | 7.32ms | 25.12ms | 87.07ms | 13.16ms | 23.98ms | 24.97ms | 73.04ms | 56.12ms | 60.75ms |
| comp_0to1 | 20.84ms | 10.86ms | 21.15ms | 15.32ms | 13.20ms | 11.21ms | 26.41ms | 39.60ms | 54.44ms |
| comp_1to1 | 14.20ms | 18.47ms | 40.71ms | 11.45ms | 26.17ms | 18.18ms | 46.07ms | 43.15ms | 55.43ms |
| comp_2to1 | 14.34ms | 12.59ms | 45.23ms | 22.32ms | 23.30ms | 17.77ms | 36.68ms | 26.03ms | 36.53ms |
| comp_4to1 | 1.67ms | 1.71ms | 13.31ms | 7.72ms | 6.14ms | 8.90ms | 12.88ms | 29.28ms | 18.59ms |
| comp_1000to1 | 6μs | 4μs | 20μs | 4μs | 3μs | 5μs | 15μs | 2.62ms | 44μs |
| comp_1to2 | 18.20ms | 11.51ms | 28.41ms | 14.95ms | 10.46ms | 23.24ms | 31.21ms | 27.34ms | 47.03ms |
| comp_1to4 | 11.59ms | 18.41ms | 23.75ms | 22.85ms | 23.59ms | 10.76ms | 15.19ms | 23.76ms | 46.07ms |
| comp_1to8 | 4.17ms | 6.76ms | 25.52ms | 7.24ms | 5.01ms | 6.61ms | 20.52ms | 19.19ms | 44.97ms |
| comp_1to1000 | 3.28ms | 4.40ms | 14.79ms | 6.22ms | 4.17ms | 4.47ms | 14.44ms | 18.16ms | 40.74ms |
| update_1to1 | 4.93ms | 5.63ms | 25.44ms | 8.19ms | 89.83ms | 9.31ms | 16.16ms | 42.39ms | 5.73ms |
| update_2to1 | 2.72ms | 2.77ms | 12.47ms | 4.08ms | 43.42ms | 4.60ms | 7.92ms | 21.34ms | 2.89ms |
| update_4to1 | 1.26ms | 1.53ms | 6.63ms | 2.05ms | 21.05ms | 2.29ms | 4.11ms | 10.88ms | 1.45ms |
| update_1000to1 | 24μs | 26μs | 60μs | 20μs | 173μs | 22μs | 40μs | 118μs | 15μs |
| update_1to2 | 3.04ms | 2.85ms | 12.59ms | 4.13ms | 41.99ms | 4.91ms | 8.05ms | 20.94ms | 2.93ms |
| update_1to4 | 1.23ms | 1.53ms | 6.17ms | 2.04ms | 20.50ms | 2.36ms | 4.06ms | 10.64ms | 1.45ms |
| update_1to1000 | 49μs | 55μs | 167μs | 812μs | 92μs | 42μs | 148μs | 211μs | 399μs |
| cellx1000 | 7.37ms | 28.31ms | 70.93ms | 9.68ms | N/A | 9.47ms | 12.81ms | 147.67ms | 5.37ms |
| cellx2500 | 23.23ms | 128.69ms | 243.66ms | 25.58ms | N/A | 31.23ms | 30.34ms | 475.21ms | 28.40ms |
| cellx5000 | 44.49ms | 396.20ms | 551.80ms | 65.82ms | N/A | 61.18ms | 65.06ms | 1.08s | 54.52ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.19ms | 229.08ms | 2.03s | 442.79ms | 2.41s | 508.02ms | 344.98ms | 2.61s (partial) | 251.22ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.66ms | 184.01ms | 1.57s | 276.93ms | 1.58s (partial) | 277.48ms | 243.48ms | 2.40s (partial) | 201.76ms |
| 1000x12 - 4 sources - dynamic (large) | 299.97ms | 343.91ms | 2.02s | 3.53s | 2.70s (partial) | 3.83s | 461.68ms | 4.03s (partial) | 340.98ms |
| 1000x5 - 25 sources (wide dense) | 458.02ms | 619.45ms | 3.75s | 2.59s | 4.62s | 3.42s | 594.78ms | 5.13s (partial) | 500.96ms |
| 5x500 - 3 sources (deep) | 201.28ms | 194.17ms | 1.21s | 228.48ms | 1.53s | 228.32ms | 252.18ms | 1.98s (partial) | 204.04ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.36ms | 276.90ms | 1.76s | 452.19ms | 1.91s (partial) | 490.13ms | 385.85ms | 2.80s (partial) | 258.73ms |

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
