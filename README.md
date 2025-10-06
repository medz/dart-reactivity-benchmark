# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.57s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.05s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.24s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.93s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.38s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.15ms | 2.34s | 200.53ms | 1.44s | 215.59ms | 235.44ms | 155.34ms (fail) |
| broadPropagation | 269.53ms | 4.63s | 455.78ms | 82.00ms (fail) | 471.69ms | 432.95ms | 6.51ms (fail) |
| deepPropagation | 81.03ms | 1.56s | 177.63ms | 1.95s (fail) | 175.68ms | 129.62ms | 146.44ms (fail) |
| diamond | 180.59ms | 2.46s | 281.84ms | 2.59s (fail) | 286.60ms | 309.27ms | 205.75ms (fail) |
| mux | 327.58ms | 1.82s | 395.09ms | 565.42ms (fail) | 411.23ms | 402.90ms | 192.46ms (fail) |
| repeatedObservers | 49.34ms | 238.76ms | 40.42ms | 384.70ms (fail) | 45.96ms | 88.55ms | 52.51ms (fail) |
| triangle | 68.07ms | 762.82ms | 99.38ms | 919.39ms (fail) | 102.08ms | 93.90ms | 78.83ms (fail) |
| unstable | 61.93ms | 351.56ms | 86.92ms | 626.32ms (fail) | 76.53ms | 100.91ms | 338.81ms (fail) |
| molBench | 485.80ms | 585.84ms | 483.33ms | 11.60ms | 487.24ms | 497.46ms | 919μs |
| create_signals | 29.21ms | 80.39ms | 5.22ms | 24.22ms | 27.25ms | 76.96ms | 66.85ms |
| comp_0to1 | 16.61ms | 37.81ms | 17.80ms | 17.32ms | 12.22ms | 26.92ms | 60.56ms |
| comp_1to1 | 13.05ms | 43.96ms | 12.69ms | 23.27ms | 26.91ms | 31.72ms | 67.64ms |
| comp_2to1 | 3.58ms | 16.86ms | 9.50ms | 26.21ms | 8.66ms | 21.08ms | 40.52ms |
| comp_4to1 | 12.53ms | 27.98ms | 13.44ms | 4.33ms | 1.89ms | 4.39ms | 16.74ms |
| comp_1000to1 | 3μs | 34μs | 5μs | 3μs | 5μs | 19μs | 44μs |
| comp_1to2 | 12.87ms | 55.40ms | 15.19ms | 12.86ms | 13.56ms | 41.10ms | 48.85ms |
| comp_1to4 | 27.78ms | 41.39ms | 38.51ms | 25.74ms | 8.96ms | 21.04ms | 46.70ms |
| comp_1to8 | 7.28ms | 42.74ms | 5.67ms | 8.31ms | 14.56ms | 19.12ms | 45.88ms |
| comp_1to1000 | 3.51ms | 35.25ms | 6.13ms | 4.88ms | 5.50ms | 14.15ms | 41.58ms |
| update_1to1 | 5.27ms | 47.76ms | 8.36ms | 86.23ms | 10.20ms | 14.71ms | 6.01ms |
| update_2to1 | 5.98ms | 23.47ms | 4.40ms | 41.06ms | 4.68ms | 7.17ms | 3.08ms |
| update_4to1 | 1.32ms | 12.38ms | 2.12ms | 19.47ms | 2.57ms | 3.63ms | 1.50ms |
| update_1000to1 | 12μs | 108μs | 21μs | 170μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.62ms | 23.82ms | 4.11ms | 41.55ms | 4.51ms | 7.53ms | 3.02ms |
| update_1to4 | 1.90ms | 11.92ms | 2.11ms | 19.78ms | 2.53ms | 3.63ms | 1.50ms |
| update_1to1000 | 29μs | 367μs | 183μs | 100μs | 41μs | 149μs | 416μs |
| cellx1000 | 6.76ms | 74.20ms | 9.96ms | N/A | 9.67ms | 10.61ms | 5.30ms |
| cellx2500 | 20.87ms | 252.02ms | 30.07ms | N/A | 34.47ms | 27.86ms | 22.97ms |
| cellx5000 | 73.82ms | 611.75ms | 83.96ms | N/A | 64.48ms | 69.34ms | 64.71ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.08ms | 2.01s | 446.37ms | 2.12s | 507.99ms | 316.72ms | 250.80ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 163.13ms | 1.50s | 275.23ms | 1.48s (partial) | 281.82ms | 219.89ms | 196.82ms |
| 1000x12 - 4 sources - dynamic (large) | 297.49ms | 1.91s | 3.73s | 2.55s (partial) | 3.78s | 444.44ms | 348.26ms |
| 1000x5 - 25 sources (wide dense) | 569.47ms | 3.46s | 2.71s | 4.20s | 3.44s | 815.62ms | 509.40ms |
| 5x500 - 3 sources (deep) | 185.19ms | 1.13s | 229.42ms | 1.34s | 226.20ms | 226.54ms | 205.95ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 251.19ms | 1.74s | 459.81ms | 1.76s (partial) | 476.28ms | 334.68ms | 264.32ms |

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
