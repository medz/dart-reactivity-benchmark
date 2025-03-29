# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.43s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.48s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.63s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.43ms | 2.32s | 197.43ms | 1.25s | 1.41s | 209.40ms | 273.50ms | 152.09ms (fail) |
| broadPropagation | 351.21ms | 4.26s | 456.64ms | 4.99s | 81.42ms (fail) | 451.91ms | 501.66ms | 5.92ms (fail) |
| deepPropagation | 120.03ms | 1.51s | 180.39ms | 4.00s | 1.89s (fail) | 173.98ms | 175.44ms | 144.65ms (fail) |
| diamond | 236.93ms | 2.41s | 279.36ms | 14.03s (fail) | 2.60s (fail) | 288.63ms | 362.19ms | 188.41ms (fail) |
| mux | 375.81ms | 1.83s | 382.17ms | 1.02s | 589.68ms (fail) | 407.25ms | 438.60ms | 192.64ms (fail) |
| repeatedObservers | 45.48ms | 227.30ms | 38.46ms | 9.74s | 394.09ms (fail) | 45.68ms | 78.73ms | 52.29ms (fail) |
| triangle | 82.59ms | 774.55ms | 98.56ms | 4.52s | 930.06ms (fail) | 102.23ms | 120.52ms | 77.14ms (fail) |
| unstable | 59.32ms | 354.17ms | 68.18ms | 7.64s | 615.76ms (fail) | 74.82ms | 94.30ms | 337.28ms (fail) |
| molBench | 487.93ms | 578.80ms | 490.63ms | 5.90s | 11.66ms | 488.59ms | 493.84ms | 986μs |
| create_signals | 27.36ms | 69.88ms | 4.60ms | 13.34ms | 24.26ms | 26.23ms | 56.43ms | 70.54ms |
| comp_0to1 | 7.00ms | 27.80ms | 23.60ms | 13.68ms | 14.00ms | 12.37ms | 26.08ms | 62.96ms |
| comp_1to1 | 4.16ms | 37.46ms | 11.97ms | 99.56ms | 23.39ms | 28.94ms | 37.95ms | 63.28ms |
| comp_2to1 | 2.25ms | 34.92ms | 11.63ms | 72.37ms | 23.84ms | 9.54ms | 26.17ms | 40.83ms |
| comp_4to1 | 8.53ms | 14.01ms | 14.00ms | 85.23ms | 5.85ms | 1.99ms | 8.72ms | 17.26ms |
| comp_1000to1 | 5μs | 20μs | 4μs | 59.32ms | 3μs | 8μs | 15μs | 46μs |
| comp_1to2 | 14.55ms | 35.74ms | 19.30ms | 66.89ms | 13.12ms | 17.32ms | 32.87ms | 46.23ms |
| comp_1to4 | 6.22ms | 19.45ms | 33.62ms | 99.18ms | 25.42ms | 9.48ms | 20.42ms | 45.35ms |
| comp_1to8 | 7.76ms | 23.41ms | 8.76ms | 116.37ms | 5.09ms | 7.00ms | 24.10ms | 44.78ms |
| comp_1to1000 | 3.51ms | 14.85ms | 6.89ms | 47.90ms | 4.15ms | 4.54ms | 15.01ms | 39.79ms |
| update_1to1 | 11.35ms | 22.34ms | 8.49ms | N/A | 85.80ms | 9.29ms | 16.16ms | 5.73ms |
| update_2to1 | 4.90ms | 10.66ms | 4.20ms | N/A | 43.09ms | 4.71ms | 7.91ms | 2.89ms |
| update_4to1 | 2.77ms | 6.19ms | 2.17ms | N/A | 20.07ms | 2.33ms | 4.08ms | 1.47ms |
| update_1000to1 | 11μs | 55μs | 20μs | N/A | 171μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.60ms | 10.78ms | 4.54ms | N/A | 44.88ms | 4.89ms | 8.14ms | 2.94ms |
| update_1to4 | 2.66ms | 5.74ms | 2.21ms | N/A | 21.33ms | 2.28ms | 4.06ms | 1.47ms |
| update_1to1000 | 54μs | 176μs | 1.05ms | N/A | 92μs | 44μs | 150μs | 397μs |
| cellx1000 | 7.34ms | 79.70ms | 10.85ms | N/A | N/A | 10.83ms | 13.11ms | 5.94ms |
| cellx2500 | 20.33ms | 274.53ms | 36.78ms | N/A | N/A | 41.06ms | 53.33ms | 27.96ms |
| cellx5000 | 56.73ms | 580.67ms | 97.52ms | N/A | N/A | 100.33ms | 143.31ms | 81.77ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.33ms | 2.00s | 444.82ms | N/A | 2.27s | 509.89ms | 350.15ms | 241.96ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.84ms | 1.57s | 275.83ms | N/A | 1.50s (partial) | 276.43ms | 243.86ms | 201.89ms |
| 1000x12 - 4 sources - dynamic (large) | 290.21ms | 1.91s | 3.53s | N/A | 2.49s (partial) | 3.86s | 475.81ms | 356.08ms |
| 1000x5 - 25 sources (wide dense) | 399.63ms | 3.56s | 2.60s | N/A | 4.27s | 3.54s | 594.00ms | 504.94ms |
| 5x500 - 3 sources (deep) | 189.93ms | 1.16s | 231.33ms | N/A | 1.44s | 225.75ms | 255.50ms | 203.43ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.65ms | 1.73s | 448.91ms | N/A | 1.78s (partial) | 470.94ms | 388.91ms | 272.70ms |

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
