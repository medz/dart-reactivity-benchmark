# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.73s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.23s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.98s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.24s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.18s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.60s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 190.65ms | 2.43s | 206.63ms | 1.25s | 1.40s | 215.25ms | 271.10ms | 158.22ms (fail) |
| broadPropagation | 361.24ms | 4.34s | 459.85ms | 4.99s | 83.42ms (fail) | 455.18ms | 496.56ms | 6.63ms (fail) |
| deepPropagation | 124.23ms | 1.58s | 179.69ms | 4.00s | 1.94s (fail) | 174.56ms | 169.51ms | 142.62ms (fail) |
| diamond | 236.80ms | 2.52s | 285.74ms | 14.03s (fail) | 2.61s (fail) | 289.66ms | 347.63ms | 194.31ms (fail) |
| mux | 375.41ms | 1.91s | 385.06ms | 1.02s | 584.99ms (fail) | 413.33ms | 439.31ms | 194.38ms (fail) |
| repeatedObservers | 44.97ms | 242.62ms | 38.73ms | 9.74s | 381.86ms (fail) | 47.19ms | 80.89ms | 52.40ms (fail) |
| triangle | 87.21ms | 804.82ms | 99.27ms | 4.52s | 953.36ms (fail) | 105.26ms | 115.43ms | 76.85ms (fail) |
| unstable | 60.18ms | 359.46ms | 70.61ms | 7.64s | 598.85ms (fail) | 71.83ms | 94.06ms | 337.71ms (fail) |
| molBench | 491.61ms | 581.78ms | 493.72ms | 5.90s | 11.83ms | 486.58ms | 493.55ms | 1.11ms |
| create_signals | 28.02ms | 60.62ms | 4.65ms | 13.34ms | 23.13ms | 26.66ms | 73.59ms | 69.99ms |
| comp_0to1 | 7.78ms | 15.31ms | 22.00ms | 13.68ms | 13.49ms | 12.45ms | 26.56ms | 62.84ms |
| comp_1to1 | 4.58ms | 44.93ms | 15.83ms | 99.56ms | 22.38ms | 30.17ms | 27.64ms | 59.14ms |
| comp_2to1 | 2.48ms | 33.50ms | 22.99ms | 72.37ms | 23.77ms | 11.97ms | 31.92ms | 37.87ms |
| comp_4to1 | 8.61ms | 23.28ms | 8.72ms | 85.23ms | 6.83ms | 2.04ms | 4.60ms | 17.36ms |
| comp_1000to1 | 3μs | 18μs | 7μs | 59.32ms | 3μs | 5μs | 15μs | 43μs |
| comp_1to2 | 14.98ms | 47.94ms | 14.58ms | 66.89ms | 12.34ms | 19.44ms | 33.79ms | 45.88ms |
| comp_1to4 | 5.01ms | 18.91ms | 26.68ms | 99.18ms | 25.84ms | 12.42ms | 21.06ms | 44.84ms |
| comp_1to8 | 5.24ms | 24.04ms | 7.29ms | 116.37ms | 5.67ms | 8.91ms | 23.04ms | 44.21ms |
| comp_1to1000 | 3.60ms | 15.31ms | 5.53ms | 47.90ms | 4.28ms | 4.52ms | 15.34ms | 39.85ms |
| update_1to1 | 11.27ms | 24.06ms | 8.22ms | N/A | 84.38ms | 9.30ms | 16.13ms | 5.79ms |
| update_2to1 | 5.03ms | 10.72ms | 4.04ms | N/A | 42.57ms | 4.64ms | 7.92ms | 2.89ms |
| update_4to1 | 2.90ms | 5.91ms | 2.11ms | N/A | 20.50ms | 2.26ms | 4.04ms | 1.45ms |
| update_1000to1 | 23μs | 65μs | 20μs | N/A | 187μs | 23μs | 51μs | 15μs |
| update_1to2 | 5.57ms | 10.52ms | 4.06ms | N/A | 43.18ms | 4.95ms | 8.09ms | 2.96ms |
| update_1to4 | 2.42ms | 5.64ms | 2.04ms | N/A | 20.49ms | 2.28ms | 4.06ms | 1.44ms |
| update_1to1000 | 46μs | 168μs | 151μs | N/A | 116μs | 44μs | 149μs | 394μs |
| cellx1000 | 7.55ms | 78.38ms | 10.21ms | N/A | N/A | 10.76ms | 11.48ms | 6.79ms |
| cellx2500 | 20.70ms | 260.57ms | 36.11ms | N/A | N/A | 39.92ms | 32.95ms | 30.72ms |
| cellx5000 | 48.72ms | 588.80ms | 99.58ms | N/A | N/A | 84.36ms | 79.76ms | 83.48ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.56ms | 2.06s | 435.72ms | N/A | 2.19s | 514.44ms | 356.33ms | 248.26ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.34ms | 1.57s | 273.79ms | N/A | 1.46s (partial) | 277.98ms | 243.48ms | 202.50ms |
| 1000x12 - 4 sources - dynamic (large) | 285.13ms | 1.95s | 3.48s | N/A | 2.58s (partial) | 3.75s | 470.25ms | 346.20ms |
| 1000x5 - 25 sources (wide dense) | 404.27ms | 3.60s | 2.60s | N/A | 4.26s | 3.43s | 595.71ms | 506.52ms |
| 5x500 - 3 sources (deep) | 191.01ms | 1.16s | 232.23ms | N/A | 1.41s | 226.41ms | 257.13ms | 206.46ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 275.17ms | 1.81s | 447.57ms | N/A | 1.78s (partial) | 492.42ms | 378.17ms | 261.43ms |

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
