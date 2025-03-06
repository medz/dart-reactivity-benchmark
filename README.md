# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.21s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.93s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.23s |

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
| avoidablePropagation | 190.73ms | 2.28s | 206.87ms | 1.25s | 1.39s | 209.52ms | 271.94ms | 155.40ms (fail) |
| broadPropagation | 359.29ms | 4.20s | 452.51ms | 4.99s | 81.15ms (fail) | 453.71ms | 506.89ms | 5.82ms (fail) |
| deepPropagation | 185.87ms | 1.52s | 179.32ms | 4.00s | 1.90s (fail) | 173.62ms | 168.39ms | 139.53ms (fail) |
| diamond | 239.55ms | 2.40s | 281.18ms | 14.03s (fail) | 2.63s (fail) | 291.77ms | 351.32ms | 181.99ms (fail) |
| mux | 371.79ms | 1.82s | 386.21ms | 1.02s | 563.46ms (fail) | 413.72ms | 440.44ms | 189.31ms (fail) |
| repeatedObservers | 46.07ms | 229.27ms | 39.01ms | 9.74s | 384.70ms (fail) | 46.38ms | 77.79ms | 53.12ms (fail) |
| triangle | 108.08ms | 770.27ms | 99.01ms | 4.52s | 950.40ms (fail) | 103.84ms | 115.31ms | 77.13ms (fail) |
| unstable | 61.85ms | 346.97ms | 70.94ms | 7.64s | 618.65ms (fail) | 75.00ms | 94.19ms | 338.10ms (fail) |
| molBench | 489.72ms | 577.81ms | 491.00ms | 5.90s | 12.39ms | 488.71ms | 492.32ms | 1.09ms |
| create_signals | 26.55ms | 66.42ms | 4.65ms | 13.34ms | 23.11ms | 25.47ms | 71.33ms | 68.02ms |
| comp_0to1 | 7.40ms | 25.41ms | 17.39ms | 13.68ms | 13.21ms | 11.60ms | 31.38ms | 56.76ms |
| comp_1to1 | 4.16ms | 36.75ms | 14.14ms | 99.56ms | 20.79ms | 26.67ms | 26.91ms | 56.84ms |
| comp_2to1 | 2.26ms | 34.31ms | 15.89ms | 72.37ms | 27.80ms | 9.68ms | 31.30ms | 41.54ms |
| comp_4to1 | 10.64ms | 17.39ms | 14.71ms | 85.23ms | 6.51ms | 12.37ms | 5.04ms | 16.87ms |
| comp_1000to1 | 4μs | 22μs | 4μs | 59.32ms | 3μs | 5μs | 14μs | 43μs |
| comp_1to2 | 10.30ms | 34.85ms | 18.98ms | 66.89ms | 10.13ms | 22.45ms | 34.49ms | 47.53ms |
| comp_1to4 | 8.92ms | 18.78ms | 34.03ms | 99.18ms | 25.04ms | 17.64ms | 20.55ms | 48.79ms |
| comp_1to8 | 5.08ms | 22.11ms | 7.36ms | 116.37ms | 5.01ms | 6.73ms | 23.41ms | 46.84ms |
| comp_1to1000 | 3.49ms | 14.63ms | 6.72ms | 47.90ms | 4.21ms | 4.45ms | 14.28ms | 39.37ms |
| update_1to1 | 11.35ms | 24.65ms | 8.16ms | N/A | 87.34ms | 9.21ms | 16.21ms | 5.74ms |
| update_2to1 | 5.05ms | 12.20ms | 4.05ms | N/A | 42.57ms | 4.65ms | 7.91ms | 7.54ms |
| update_4to1 | 2.78ms | 6.08ms | 2.06ms | N/A | 20.34ms | 2.29ms | 4.53ms | 1.50ms |
| update_1000to1 | 10μs | 57μs | 20μs | N/A | 177μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.64ms | 12.06ms | 4.09ms | N/A | 42.38ms | 4.93ms | 8.11ms | 2.96ms |
| update_1to4 | 2.49ms | 6.24ms | 2.02ms | N/A | 21.20ms | 2.31ms | 4.03ms | 1.50ms |
| update_1to1000 | 46μs | 160μs | 846μs | N/A | 132μs | 43μs | 159μs | 387μs |
| cellx1000 | 7.30ms | 70.30ms | 9.44ms | N/A | N/A | 9.53ms | 11.41ms | 5.05ms |
| cellx2500 | 19.34ms | 240.69ms | 24.91ms | N/A | N/A | 30.83ms | 30.79ms | 22.19ms |
| cellx5000 | 41.57ms | 536.15ms | 66.13ms | N/A | N/A | 58.68ms | 66.71ms | 60.31ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.19ms | 2.02s | 437.43ms | N/A | 2.26s | 514.53ms | 343.89ms | 240.96ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.25ms | 1.52s | 294.33ms | N/A | 1.50s (partial) | 279.02ms | 243.88ms | 200.76ms |
| 1000x12 - 4 sources - dynamic (large) | 278.71ms | 1.91s | 3.47s | N/A | 2.56s (partial) | 3.76s | 462.92ms | 336.26ms |
| 1000x5 - 25 sources (wide dense) | 402.85ms | 3.57s | 2.58s | N/A | 4.30s | 3.41s | 595.11ms | 507.14ms |
| 5x500 - 3 sources (deep) | 190.10ms | 1.16s | 234.90ms | N/A | 1.37s | 227.86ms | 265.66ms | 204.57ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.99ms | 1.72s | 442.12ms | N/A | 1.79s (partial) | 476.74ms | 373.38ms | 268.52ms |

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
