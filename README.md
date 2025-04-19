# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.73s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.99s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.99s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.50s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.01s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 189.58ms | 2.33s | 209.94ms | 1.25s | 1.44s | 207.21ms | 276.31ms | 151.21ms (fail) |
| broadPropagation | 353.81ms | 4.28s | 453.58ms | 4.99s | 80.61ms (fail) | 454.77ms | 509.72ms | 6.57ms (fail) |
| deepPropagation | 126.81ms | 1.53s | 177.14ms | 4.00s | 1.84s (fail) | 176.08ms | 166.15ms | 141.40ms (fail) |
| diamond | 234.76ms | 2.39s | 290.64ms | 14.03s (fail) | 2.57s (fail) | 288.65ms | 356.60ms | 184.33ms (fail) |
| mux | 374.78ms | 1.83s | 383.84ms | 1.02s | 561.42ms (fail) | 407.55ms | 440.65ms | 189.31ms (fail) |
| repeatedObservers | 44.96ms | 234.30ms | 38.66ms | 9.74s | 413.87ms (fail) | 47.04ms | 78.23ms | 55.81ms (fail) |
| triangle | 84.32ms | 776.06ms | 100.49ms | 4.52s | 857.27ms (fail) | 101.47ms | 119.06ms | 75.64ms (fail) |
| unstable | 59.81ms | 350.11ms | 70.39ms | 7.64s | 621.06ms (fail) | 75.27ms | 94.67ms | 346.11ms (fail) |
| molBench | 493.15ms | 578.53ms | 491.45ms | 5.90s | 11.53ms | 489.01ms | 492.72ms | 1.10ms |
| create_signals | 26.79ms | 67.88ms | 4.70ms | 13.34ms | 23.92ms | 25.26ms | 71.23ms | 68.10ms |
| comp_0to1 | 7.98ms | 26.02ms | 18.07ms | 13.68ms | 14.03ms | 12.28ms | 28.56ms | 56.57ms |
| comp_1to1 | 4.22ms | 36.27ms | 14.73ms | 99.56ms | 22.82ms | 26.51ms | 37.15ms | 53.44ms |
| comp_2to1 | 2.29ms | 23.71ms | 10.15ms | 72.37ms | 31.79ms | 11.99ms | 23.65ms | 35.95ms |
| comp_4to1 | 8.72ms | 20.60ms | 7.90ms | 85.23ms | 10.98ms | 1.99ms | 15.34ms | 16.17ms |
| comp_1000to1 | 5μs | 20μs | 9μs | 59.32ms | 5μs | 5μs | 27μs | 41μs |
| comp_1to2 | 20.00ms | 39.91ms | 22.36ms | 66.89ms | 12.79ms | 20.78ms | 30.76ms | 45.15ms |
| comp_1to4 | 5.22ms | 19.83ms | 31.93ms | 99.18ms | 24.53ms | 10.74ms | 22.72ms | 44.02ms |
| comp_1to8 | 4.55ms | 22.45ms | 8.29ms | 116.37ms | 6.65ms | 7.09ms | 24.90ms | 42.70ms |
| comp_1to1000 | 3.42ms | 15.05ms | 6.83ms | 47.90ms | 5.98ms | 4.51ms | 14.69ms | 38.02ms |
| update_1to1 | 11.34ms | 21.79ms | 8.20ms | N/A | 88.12ms | 9.32ms | 16.14ms | 5.74ms |
| update_2to1 | 4.84ms | 10.53ms | 4.11ms | N/A | 43.97ms | 4.74ms | 7.96ms | 3.45ms |
| update_4to1 | 2.80ms | 6.12ms | 2.13ms | N/A | 21.72ms | 2.30ms | 4.10ms | 1.49ms |
| update_1000to1 | 11μs | 67μs | 32μs | N/A | 236μs | 22μs | 41μs | 15μs |
| update_1to2 | 5.61ms | 10.84ms | 4.45ms | N/A | 44.52ms | 4.91ms | 8.73ms | 2.97ms |
| update_1to4 | 1.59ms | 6.03ms | 2.11ms | N/A | 20.77ms | 2.30ms | 4.02ms | 1.57ms |
| update_1to1000 | 44μs | 171μs | 722μs | N/A | 104μs | 43μs | 150μs | 371μs |
| cellx1000 | 7.80ms | 75.61ms | 11.21ms | N/A | N/A | 9.83ms | 12.33ms | 5.11ms |
| cellx2500 | 19.99ms | 258.56ms | 34.95ms | N/A | N/A | 34.77ms | 40.09ms | 27.29ms |
| cellx5000 | 49.58ms | 570.55ms | 77.44ms | N/A | N/A | 79.66ms | 98.41ms | 73.67ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.74ms | 2.01s | 442.82ms | N/A | 2.19s | 503.51ms | 364.78ms | 239.04ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 184.24ms | 1.55s | 274.78ms | N/A | 1.48s (partial) | 278.24ms | 259.08ms | 201.99ms |
| 1000x12 - 4 sources - dynamic (large) | 283.51ms | 1.92s | 3.53s | N/A | 2.53s (partial) | 3.73s | 465.12ms | 346.75ms |
| 1000x5 - 25 sources (wide dense) | 420.18ms | 3.56s | 2.58s | N/A | 4.61s | 3.25s | 591.74ms | 505.74ms |
| 5x500 - 3 sources (deep) | 192.47ms | 1.16s | 230.38ms | N/A | 1.54s | 228.14ms | 252.53ms | 206.13ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.27ms | 1.77s | 447.68ms | N/A | 1.88s (partial) | 478.32ms | 379.24ms | 260.27ms |

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
