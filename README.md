# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.34s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.28s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.94s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.55s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.62s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.23s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.54s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.15ms | 156.51ms | 2.42s | 205.58ms | 1.40s | 207.42ms | 272.74ms | 2.21s | 167.46ms (fail) |
| broadPropagation | 382.73ms | 323.16ms | 4.28s | 464.11ms | 81.15ms (fail) | 450.76ms | 503.53ms | 5.44s | 6.14ms (fail) |
| deepPropagation | 129.53ms | 95.62ms | 1.53s | 178.42ms | 1.90s (fail) | 167.27ms | 178.25ms | 2.05s | 142.20ms (fail) |
| diamond | 237.15ms | 209.13ms | 2.44s | 283.18ms | 2.52s (fail) | 284.07ms | 353.06ms | 3.52s | 180.58ms (fail) |
| mux | 378.98ms | 342.24ms | 1.85s | 382.30ms | 572.48ms (fail) | 413.37ms | 441.06ms | 2.02s | 191.52ms (fail) |
| repeatedObservers | 47.89ms | 50.78ms | 237.58ms | 38.50ms | 400.60ms (fail) | 46.88ms | 78.84ms | 222.44ms | 53.21ms (fail) |
| triangle | 87.20ms | 73.92ms | 766.99ms | 100.07ms | 930.48ms (fail) | 100.44ms | 119.52ms | 1.15s | 76.97ms (fail) |
| unstable | 62.72ms | 69.13ms | 352.37ms | 70.94ms | 618.27ms (fail) | 73.42ms | 95.52ms | 358.95ms | 337.45ms (fail) |
| molBench | 482.95ms | 480.72ms | 577.80ms | 490.68ms | 11.59ms | 489.54ms | 492.85ms | 1.71s | 1.25ms |
| create_signals | 7.40ms | 27.06ms | 57.85ms | 5.32ms | 26.61ms | 26.37ms | 68.49ms | 51.70ms | 60.99ms |
| comp_0to1 | 20.73ms | 10.34ms | 18.58ms | 17.37ms | 16.80ms | 12.04ms | 33.39ms | 22.99ms | 53.86ms |
| comp_1to1 | 14.55ms | 18.05ms | 30.13ms | 10.89ms | 22.62ms | 28.68ms | 54.47ms | 43.60ms | 54.94ms |
| comp_2to1 | 18.92ms | 16.75ms | 17.25ms | 21.05ms | 30.58ms | 22.95ms | 21.30ms | 25.27ms | 37.03ms |
| comp_4to1 | 1.54ms | 3.76ms | 14.43ms | 8.68ms | 11.35ms | 6.52ms | 8.85ms | 32.05ms | 16.21ms |
| comp_1000to1 | 3μs | 4μs | 15μs | 4μs | 4μs | 9μs | 18μs | 2.89ms | 43μs |
| comp_1to2 | 11.54ms | 15.62ms | 35.03ms | 25.01ms | 13.21ms | 14.58ms | 38.34ms | 30.81ms | 46.13ms |
| comp_1to4 | 8.77ms | 12.84ms | 24.34ms | 32.92ms | 24.80ms | 7.25ms | 22.11ms | 29.10ms | 46.04ms |
| comp_1to8 | 4.21ms | 8.19ms | 24.27ms | 5.83ms | 6.32ms | 7.11ms | 26.57ms | 25.90ms | 44.47ms |
| comp_1to1000 | 3.33ms | 9.42ms | 15.44ms | 6.57ms | 5.88ms | 4.45ms | 15.21ms | 18.81ms | 39.88ms |
| update_1to1 | 4.92ms | 5.71ms | 24.65ms | 8.17ms | 84.10ms | 9.17ms | 16.22ms | 42.22ms | 5.74ms |
| update_2to1 | 2.51ms | 2.79ms | 12.28ms | 4.06ms | 42.31ms | 4.59ms | 7.92ms | 20.90ms | 2.88ms |
| update_4to1 | 1.31ms | 1.49ms | 6.04ms | 2.04ms | 21.18ms | 2.30ms | 4.07ms | 10.58ms | 1.46ms |
| update_1000to1 | 12μs | 25μs | 67μs | 20μs | 173μs | 24μs | 40μs | 127μs | 15μs |
| update_1to2 | 2.39ms | 2.82ms | 11.64ms | 4.12ms | 42.79ms | 4.87ms | 7.89ms | 20.86ms | 2.94ms |
| update_1to4 | 1.22ms | 1.48ms | 6.31ms | 2.03ms | 20.68ms | 2.32ms | 4.04ms | 10.54ms | 1.46ms |
| update_1to1000 | 36μs | 33μs | 167μs | 870μs | 117μs | 43μs | 153μs | 197μs | 407μs |
| cellx1000 | 7.47ms | 27.48ms | 78.10ms | 9.71ms | N/A | 9.92ms | 11.76ms | 166.93ms | 5.24ms |
| cellx2500 | 27.42ms | 124.93ms | 250.14ms | 27.60ms | N/A | 32.32ms | 34.51ms | 487.72ms | 24.97ms |
| cellx5000 | 48.05ms | 400.10ms | 549.19ms | 72.98ms | N/A | 67.16ms | 85.86ms | 1.11s | 76.25ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.83ms | 231.16ms | 2.00s | 437.76ms | 2.21s | 510.14ms | 349.24ms | 2.63s (partial) | 243.71ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.42ms | 183.23ms | 1.55s | 267.71ms | 1.48s (partial) | 277.72ms | 244.67ms | 2.38s (partial) | 200.38ms |
| 1000x12 - 4 sources - dynamic (large) | 296.95ms | 343.23ms | 1.94s | 3.47s | 2.48s (partial) | 4.01s | 465.51ms | 3.96s (partial) | 341.57ms |
| 1000x5 - 25 sources (wide dense) | 444.53ms | 624.51ms | 3.62s | 2.61s | 4.07s | 3.56s | 595.20ms | 5.02s (partial) | 511.15ms |
| 5x500 - 3 sources (deep) | 201.25ms | 196.41ms | 1.14s | 230.75ms | 1.37s | 227.99ms | 253.55ms | 1.97s (partial) | 205.53ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.09ms | 273.57ms | 1.74s | 448.45ms | 1.83s (partial) | 474.03ms | 375.91ms | 2.75s (partial) | 259.02ms |

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
