# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.32s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.97s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.27s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.87s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 142.85ms | 2.32s | 202.24ms | 1.35s | 218.60ms | 235.56ms | 153.53ms (fail) |
| broadPropagation | 269.77ms | 4.31s | 459.48ms | 78.87ms (fail) | 459.08ms | 435.29ms | 6.18ms (fail) |
| deepPropagation | 81.21ms | 1.53s | 180.38ms | 1.87s (fail) | 183.47ms | 129.05ms | 152.45ms (fail) |
| diamond | 179.52ms | 2.38s | 279.43ms | 2.51s (fail) | 283.22ms | 309.21ms | 190.66ms (fail) |
| mux | 321.82ms | 1.83s | 393.53ms | 561.87ms (fail) | 412.98ms | 392.72ms | 197.88ms (fail) |
| repeatedObservers | 49.15ms | 231.19ms | 40.54ms | 391.86ms (fail) | 46.67ms | 89.33ms | 52.81ms (fail) |
| triangle | 67.52ms | 769.84ms | 99.05ms | 916.25ms (fail) | 102.62ms | 94.96ms | 79.20ms (fail) |
| unstable | 62.00ms | 338.55ms | 74.11ms | 619.59ms (fail) | 76.05ms | 101.61ms | 339.45ms (fail) |
| molBench | 485.84ms | 581.25ms | 489.00ms | 11.40ms | 485.83ms | 497.74ms | 934μs |
| create_signals | 25.41ms | 62.64ms | 5.09ms | 23.80ms | 25.48ms | 69.47ms | 61.09ms |
| comp_0to1 | 5.92ms | 15.91ms | 20.86ms | 13.04ms | 11.31ms | 30.41ms | 54.99ms |
| comp_1to1 | 12.57ms | 45.24ms | 12.35ms | 27.20ms | 24.37ms | 49.51ms | 56.12ms |
| comp_2to1 | 3.79ms | 22.47ms | 17.34ms | 27.60ms | 16.32ms | 10.32ms | 37.38ms |
| comp_4to1 | 4.56ms | 15.98ms | 11.55ms | 12.75ms | 8.35ms | 4.16ms | 16.27ms |
| comp_1000to1 | 3μs | 21μs | 5μs | 6μs | 5μs | 28μs | 44μs |
| comp_1to2 | 13.28ms | 36.68ms | 15.45ms | 13.03ms | 16.55ms | 26.69ms | 48.28ms |
| comp_1to4 | 23.00ms | 20.26ms | 24.82ms | 23.15ms | 9.84ms | 20.06ms | 45.65ms |
| comp_1to8 | 4.29ms | 23.25ms | 6.92ms | 9.16ms | 6.22ms | 21.84ms | 45.64ms |
| comp_1to1000 | 3.29ms | 15.23ms | 5.55ms | 7.17ms | 4.41ms | 13.71ms | 41.14ms |
| update_1to1 | 5.29ms | 24.10ms | 8.32ms | 94.04ms | 10.89ms | 14.72ms | 6.02ms |
| update_2to1 | 5.85ms | 12.04ms | 4.35ms | 42.01ms | 5.16ms | 7.17ms | 3.10ms |
| update_4to1 | 1.43ms | 7.18ms | 2.11ms | 20.26ms | 2.74ms | 3.59ms | 1.56ms |
| update_1000to1 | 13μs | 69μs | 20μs | 209μs | 27μs | 36μs | 15μs |
| update_1to2 | 2.68ms | 13.66ms | 4.07ms | 41.64ms | 5.09ms | 7.46ms | 3.04ms |
| update_1to4 | 1.36ms | 7.23ms | 2.13ms | 20.24ms | 2.74ms | 3.58ms | 1.57ms |
| update_1to1000 | 50μs | 175μs | 159μs | 166μs | 46μs | 146μs | 421μs |
| cellx1000 | 6.40ms | 71.76ms | 9.48ms | N/A | 9.70ms | 9.11ms | 5.10ms |
| cellx2500 | 19.79ms | 238.80ms | 25.11ms | N/A | 31.10ms | 25.83ms | 22.33ms |
| cellx5000 | 49.18ms | 533.85ms | 65.11ms | N/A | 59.05ms | 57.65ms | 69.27ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.40ms | 2.01s | 444.02ms | 2.13s | 516.69ms | 318.48ms | 245.16ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.73ms | 1.53s | 274.38ms | 1.42s (partial) | 278.71ms | 217.63ms | 197.49ms |
| 1000x12 - 4 sources - dynamic (large) | 283.52ms | 1.96s | 3.70s | 2.49s (partial) | 3.76s | 429.92ms | 339.67ms |
| 1000x5 - 25 sources (wide dense) | 409.10ms | 3.46s | 2.72s | 4.05s | 3.42s | 789.80ms | 520.12ms |
| 5x500 - 3 sources (deep) | 177.15ms | 1.13s | 229.15ms | 1.35s | 221.32ms | 225.98ms | 202.37ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.22ms | 1.71s | 456.02ms | 1.76s (partial) | 476.66ms | 327.25ms | 262.91ms |

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
