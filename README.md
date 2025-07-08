# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.47s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.12s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.97s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.77s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 212.47ms | 2.35s | 201.57ms | 1.39s | 205.41ms | 288.56ms | 173.82ms (fail) |
| broadPropagation | 393.79ms | 4.51s | 456.39ms | 87.04ms (fail) | 448.04ms | 531.53ms | 6.03ms (fail) |
| deepPropagation | 97.50ms | 1.57s | 178.74ms | 2.05s (fail) | 173.60ms | 171.39ms | 143.39ms (fail) |
| diamond | 227.30ms | 2.48s | 280.42ms | 2.80s (fail) | 285.19ms | 353.04ms | 183.18ms (fail) |
| mux | 404.01ms | 1.82s | 403.21ms | 573.33ms (fail) | 402.93ms | 434.42ms | 191.09ms (fail) |
| repeatedObservers | 48.02ms | 238.65ms | 40.22ms | 409.93ms (fail) | 44.63ms | 86.42ms | 52.81ms (fail) |
| triangle | 79.99ms | 794.99ms | 97.70ms | 887.77ms (fail) | 100.28ms | 116.06ms | 81.41ms (fail) |
| unstable | 66.15ms | 350.30ms | 69.85ms | 630.48ms (fail) | 78.94ms | 102.56ms | 340.14ms (fail) |
| molBench | 484.65ms | 573.58ms | 489.20ms | 11.86ms | 485.15ms | 500.96ms | 948μs |
| create_signals | 24.94ms | 69.05ms | 5.24ms | 24.30ms | 25.33ms | 47.67ms | 60.52ms |
| comp_0to1 | 11.00ms | 36.61ms | 22.75ms | 14.98ms | 11.29ms | 45.35ms | 53.11ms |
| comp_1to1 | 18.48ms | 42.88ms | 11.34ms | 25.46ms | 20.44ms | 24.54ms | 54.31ms |
| comp_2to1 | 18.58ms | 35.48ms | 11.34ms | 26.48ms | 8.62ms | 21.22ms | 36.13ms |
| comp_4to1 | 5.09ms | 19.11ms | 14.36ms | 7.26ms | 1.93ms | 30.55ms | 16.24ms |
| comp_1000to1 | 4μs | 17μs | 4μs | 4μs | 4μs | 30μs | 41μs |
| comp_1to2 | 11.75ms | 37.28ms | 17.99ms | 11.79ms | 19.22ms | 33.10ms | 47.77ms |
| comp_1to4 | 21.07ms | 22.09ms | 35.68ms | 22.41ms | 10.13ms | 29.50ms | 44.51ms |
| comp_1to8 | 7.95ms | 23.41ms | 7.89ms | 7.81ms | 8.20ms | 24.16ms | 43.75ms |
| comp_1to1000 | 4.22ms | 16.11ms | 5.05ms | 4.86ms | 4.11ms | 16.09ms | 38.49ms |
| update_1to1 | 5.03ms | 23.27ms | 8.62ms | 86.47ms | 8.96ms | 15.56ms | 5.66ms |
| update_2to1 | 2.56ms | 12.39ms | 4.24ms | 43.63ms | 4.46ms | 7.67ms | 2.84ms |
| update_4to1 | 1.29ms | 6.61ms | 2.19ms | 20.71ms | 2.21ms | 3.84ms | 1.46ms |
| update_1000to1 | 27μs | 58μs | 21μs | 185μs | 22μs | 38μs | 15μs |
| update_1to2 | 3.38ms | 11.11ms | 4.53ms | 47.66ms | 4.46ms | 7.67ms | 2.88ms |
| update_1to4 | 1.29ms | 5.57ms | 2.15ms | 20.98ms | 2.21ms | 3.84ms | 1.45ms |
| update_1to1000 | 41μs | 170μs | 150μs | 93μs | 42μs | 169μs | 387μs |
| cellx1000 | 10.50ms | 73.28ms | 9.79ms | N/A | 9.61ms | 11.70ms | 5.17ms |
| cellx2500 | 36.81ms | 246.21ms | 26.30ms | N/A | 31.11ms | 32.67ms | 24.88ms |
| cellx5000 | 75.63ms | 590.44ms | 72.61ms | N/A | 66.31ms | 83.38ms | 56.53ms |
| 10x5 - 2 sources - read 20.0% (simple) | 216.61ms | 2.05s | 434.61ms | 2.20s | 508.16ms | 358.47ms | 246.19ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.78ms | 1.57s | 268.39ms | 1.49s (partial) | 286.17ms | 245.27ms | 199.34ms |
| 1000x12 - 4 sources - dynamic (large) | 304.79ms | 1.92s | 3.71s | 2.54s (partial) | 3.57s | 457.30ms | 341.18ms |
| 1000x5 - 25 sources (wide dense) | 446.94ms | 3.54s | 2.71s | 4.19s | 3.57s | 728.73ms | 498.04ms |
| 5x500 - 3 sources (deep) | 190.97ms | 1.18s | 234.26ms | 1.36s | 228.28ms | 270.16ms | 205.80ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 256.72ms | 1.75s | 452.76ms | 1.78s (partial) | 490.04ms | 385.31ms | 262.17ms |

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
