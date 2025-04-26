# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.71s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.25s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.23s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.02s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.34ms | 2.29s | 204.66ms | 1.25s | 1.43s | 206.70ms | 273.27ms | 149.09ms (fail) |
| broadPropagation | 358.15ms | 4.26s | 453.32ms | 4.99s | 86.01ms (fail) | 464.78ms | 511.59ms | 5.89ms (fail) |
| deepPropagation | 125.44ms | 1.53s | 177.07ms | 4.00s | 2.01s (fail) | 182.56ms | 169.46ms | 144.02ms (fail) |
| diamond | 237.16ms | 2.40s | 277.31ms | 14.03s (fail) | 2.81s (fail) | 288.44ms | 382.73ms | 186.89ms (fail) |
| mux | 375.32ms | 1.82s | 383.75ms | 1.02s | 571.58ms (fail) | 411.12ms | 430.12ms | 193.65ms (fail) |
| repeatedObservers | 44.95ms | 223.80ms | 38.46ms | 9.74s | 395.31ms (fail) | 45.81ms | 77.72ms | 51.97ms (fail) |
| triangle | 84.31ms | 763.70ms | 99.32ms | 4.52s | 899.38ms (fail) | 103.92ms | 118.69ms | 78.96ms (fail) |
| unstable | 59.80ms | 345.22ms | 70.88ms | 7.64s | 616.47ms (fail) | 75.22ms | 96.08ms | 336.45ms (fail) |
| molBench | 490.48ms | 575.85ms | 492.20ms | 5.90s | 12.11ms | 489.81ms | 493.10ms | 1.03ms |
| create_signals | 26.56ms | 70.69ms | 5.39ms | 13.34ms | 24.07ms | 25.30ms | 50.95ms | 59.08ms |
| comp_0to1 | 8.11ms | 24.12ms | 17.80ms | 13.68ms | 16.89ms | 14.79ms | 25.69ms | 52.33ms |
| comp_1to1 | 4.20ms | 17.12ms | 11.05ms | 99.56ms | 22.31ms | 27.90ms | 27.89ms | 52.88ms |
| comp_2to1 | 2.27ms | 13.42ms | 22.82ms | 72.37ms | 29.18ms | 17.90ms | 36.74ms | 35.58ms |
| comp_4to1 | 8.68ms | 14.29ms | 9.10ms | 85.23ms | 6.52ms | 5.03ms | 4.63ms | 16.14ms |
| comp_1000to1 | 5μs | 15μs | 4μs | 59.32ms | 3μs | 9μs | 15μs | 42μs |
| comp_1to2 | 15.39ms | 35.25ms | 20.86ms | 66.89ms | 10.85ms | 15.12ms | 31.36ms | 44.26ms |
| comp_1to4 | 7.40ms | 22.69ms | 17.48ms | 99.18ms | 25.69ms | 7.35ms | 15.42ms | 43.34ms |
| comp_1to8 | 7.29ms | 20.16ms | 9.25ms | 116.37ms | 4.81ms | 6.58ms | 20.48ms | 42.56ms |
| comp_1to1000 | 3.36ms | 14.79ms | 4.46ms | 47.90ms | 4.26ms | 5.29ms | 15.30ms | 38.03ms |
| update_1to1 | 11.27ms | 24.59ms | 8.15ms | N/A | 85.00ms | 9.27ms | 16.16ms | 5.79ms |
| update_2to1 | 4.95ms | 10.74ms | 4.09ms | N/A | 43.33ms | 4.59ms | 7.92ms | 2.99ms |
| update_4to1 | 2.78ms | 6.08ms | 2.06ms | N/A | 20.58ms | 2.29ms | 4.03ms | 1.49ms |
| update_1000to1 | 10μs | 60μs | 20μs | N/A | 179μs | 24μs | 40μs | 15μs |
| update_1to2 | 5.62ms | 11.53ms | 4.06ms | N/A | 42.67ms | 4.85ms | 8.15ms | 2.96ms |
| update_1to4 | 1.90ms | 5.74ms | 2.04ms | N/A | 21.21ms | 2.29ms | 4.05ms | 1.51ms |
| update_1to1000 | 44μs | 168μs | 38μs | N/A | 96μs | 43μs | 152μs | 375μs |
| cellx1000 | 7.48ms | 67.47ms | 12.33ms | N/A | N/A | 9.71ms | 13.29ms | 5.15ms |
| cellx2500 | 19.81ms | 245.81ms | 31.07ms | N/A | N/A | 32.30ms | 30.32ms | 20.70ms |
| cellx5000 | 42.81ms | 544.96ms | 80.38ms | N/A | N/A | 63.48ms | 66.23ms | 58.53ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.84ms | 2.01s | 448.82ms | N/A | 2.26s | 513.24ms | 365.01ms | 241.04ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.64ms | 1.56s | 277.44ms | N/A | 1.52s (partial) | 279.65ms | 252.61ms | 201.71ms |
| 1000x12 - 4 sources - dynamic (large) | 281.03ms | 1.87s | 3.57s | N/A | 2.56s (partial) | 3.75s | 464.14ms | 335.19ms |
| 1000x5 - 25 sources (wide dense) | 413.61ms | 3.52s | 2.60s | N/A | 4.29s | 3.43s | 593.61ms | 505.34ms |
| 5x500 - 3 sources (deep) | 191.10ms | 1.15s | 231.66ms | N/A | 1.41s | 224.09ms | 258.06ms | 208.15ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.79ms | 1.77s | 449.30ms | N/A | 1.80s (partial) | 485.84ms | 384.61ms | 260.05ms |

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
