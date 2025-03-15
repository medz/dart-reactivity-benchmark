# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.71s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.40s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.98s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.00s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.53s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.13s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 190.03ms | 2.35s | 204.66ms | 1.25s | 1.39s | 211.71ms | 278.18ms | 159.25ms (fail) |
| broadPropagation | 359.19ms | 4.33s | 457.90ms | 4.99s | 85.56ms (fail) | 449.74ms | 504.21ms | 5.98ms (fail) |
| deepPropagation | 123.89ms | 1.52s | 177.04ms | 4.00s | 2.03s (fail) | 170.43ms | 178.46ms | 140.93ms (fail) |
| diamond | 237.86ms | 2.44s | 279.38ms | 14.03s (fail) | 2.90s (fail) | 285.57ms | 354.45ms | 191.67ms (fail) |
| mux | 373.19ms | 1.84s | 382.22ms | 1.02s | 580.51ms (fail) | 414.01ms | 437.45ms | 189.27ms (fail) |
| repeatedObservers | 44.81ms | 233.11ms | 38.29ms | 9.74s | 395.97ms (fail) | 47.91ms | 79.35ms | 53.68ms (fail) |
| triangle | 86.26ms | 774.79ms | 100.17ms | 4.52s | 934.94ms (fail) | 105.36ms | 120.23ms | 78.39ms (fail) |
| unstable | 59.59ms | 354.33ms | 70.17ms | 7.64s | 630.09ms (fail) | 74.21ms | 94.16ms | 343.53ms (fail) |
| molBench | 491.68ms | 580.09ms | 491.72ms | 5.90s | 12.23ms | 487.95ms | 493.11ms | 1.45ms |
| create_signals | 26.67ms | 78.30ms | 4.62ms | 13.34ms | 29.87ms | 26.03ms | 74.91ms | 67.14ms |
| comp_0to1 | 6.96ms | 46.15ms | 17.85ms | 13.68ms | 16.97ms | 12.04ms | 30.20ms | 57.68ms |
| comp_1to1 | 4.17ms | 27.82ms | 11.43ms | 99.56ms | 23.34ms | 27.70ms | 48.48ms | 60.86ms |
| comp_2to1 | 2.28ms | 18.73ms | 13.66ms | 72.37ms | 31.95ms | 9.93ms | 43.23ms | 39.45ms |
| comp_4to1 | 8.50ms | 28.08ms | 14.96ms | 85.23ms | 10.43ms | 2.07ms | 4.83ms | 16.79ms |
| comp_1000to1 | 5μs | 16μs | 4μs | 59.32ms | 3μs | 5μs | 18μs | 42μs |
| comp_1to2 | 14.52ms | 34.10ms | 15.76ms | 66.89ms | 11.73ms | 18.76ms | 27.40ms | 47.94ms |
| comp_1to4 | 11.27ms | 22.05ms | 23.75ms | 99.18ms | 20.96ms | 12.73ms | 15.90ms | 44.02ms |
| comp_1to8 | 5.50ms | 24.16ms | 8.45ms | 116.37ms | 5.11ms | 9.05ms | 20.52ms | 44.15ms |
| comp_1to1000 | 3.49ms | 15.04ms | 7.55ms | 47.90ms | 4.55ms | 4.73ms | 15.05ms | 38.29ms |
| update_1to1 | 11.23ms | 24.54ms | 8.22ms | N/A | 86.61ms | 9.38ms | 16.15ms | 5.73ms |
| update_2to1 | 4.97ms | 11.82ms | 4.14ms | N/A | 42.24ms | 4.59ms | 7.95ms | 2.88ms |
| update_4to1 | 2.82ms | 6.59ms | 2.46ms | N/A | 20.52ms | 2.34ms | 4.06ms | 1.47ms |
| update_1000to1 | 10μs | 55μs | 36μs | N/A | 175μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.62ms | 12.16ms | 4.39ms | N/A | 42.79ms | 4.92ms | 8.06ms | 2.96ms |
| update_1to4 | 2.46ms | 6.05ms | 2.12ms | N/A | 20.64ms | 2.40ms | 4.03ms | 1.48ms |
| update_1to1000 | 33μs | 168μs | 1.09ms | N/A | 120μs | 45μs | 150μs | 380μs |
| cellx1000 | 7.62ms | 73.21ms | 9.62ms | N/A | N/A | 9.52ms | 11.60ms | 5.20ms |
| cellx2500 | 20.27ms | 255.51ms | 25.55ms | N/A | N/A | 31.19ms | 32.53ms | 26.82ms |
| cellx5000 | 45.49ms | 560.13ms | 65.55ms | N/A | N/A | 63.90ms | 72.27ms | 81.89ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.64ms | 2.03s | 441.06ms | N/A | 2.25s | 518.85ms | 413.29ms | 244.46ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.69ms | 1.53s | 277.30ms | N/A | 1.55s (partial) | 275.57ms | 261.44ms | 200.19ms |
| 1000x12 - 4 sources - dynamic (large) | 279.56ms | 1.86s | 3.53s | N/A | 2.66s (partial) | 3.56s | 487.00ms | 341.14ms |
| 1000x5 - 25 sources (wide dense) | 414.94ms | 3.57s | 2.60s | N/A | 4.14s | 3.43s | 591.98ms | 493.35ms |
| 5x500 - 3 sources (deep) | 193.32ms | 1.15s | 230.68ms | N/A | 1.36s | 227.09ms | 275.94ms | 202.80ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.78ms | 1.72s | 452.09ms | N/A | 1.85s (partial) | 491.95ms | 397.79ms | 258.85ms |

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
