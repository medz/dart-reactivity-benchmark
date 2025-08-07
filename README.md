# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.26s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.15s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.19s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 161.14ms | 2.36s | 200.37ms | 1.36s | 204.04ms | 263.64ms | 148.78ms (fail) |
| broadPropagation | 321.94ms | 4.54s | 448.38ms | 80.27ms (fail) | 470.13ms | 466.60ms | 6.08ms (fail) |
| deepPropagation | 96.75ms | 1.57s | 174.79ms | 1.90s (fail) | 169.71ms | 143.43ms | 143.35ms (fail) |
| diamond | 219.52ms | 2.50s | 281.66ms | 2.54s (fail) | 284.66ms | 329.32ms | 209.05ms (fail) |
| mux | 340.76ms | 1.81s | 402.19ms | 553.46ms (fail) | 414.69ms | 392.06ms | 194.11ms (fail) |
| repeatedObservers | 50.36ms | 235.02ms | 40.27ms | 386.73ms (fail) | 44.82ms | 89.16ms | 54.70ms (fail) |
| triangle | 106.14ms | 767.48ms | 99.64ms | 949.54ms (fail) | 100.95ms | 95.34ms | 79.72ms (fail) |
| unstable | 136.08ms | 352.48ms | 70.00ms | 616.42ms (fail) | 79.32ms | 174.79ms | 338.37ms (fail) |
| molBench | 494.15ms | 574.79ms | 485.36ms | 11.33ms | 486.26ms | 494.20ms | 1.01ms |
| create_signals | 26.61ms | 92.34ms | 4.71ms | 23.52ms | 25.61ms | 51.64ms | 69.81ms |
| comp_0to1 | 9.55ms | 17.61ms | 17.57ms | 13.78ms | 11.42ms | 25.34ms | 60.39ms |
| comp_1to1 | 22.65ms | 42.27ms | 12.67ms | 21.70ms | 27.19ms | 43.36ms | 58.84ms |
| comp_2to1 | 15.54ms | 35.31ms | 9.11ms | 24.45ms | 8.97ms | 22.24ms | 40.46ms |
| comp_4to1 | 4.12ms | 23.44ms | 11.30ms | 6.24ms | 1.93ms | 12.13ms | 16.94ms |
| comp_1000to1 | 4μs | 17μs | 4μs | 4μs | 5μs | 14μs | 41μs |
| comp_1to2 | 9.83ms | 35.83ms | 27.59ms | 12.88ms | 16.98ms | 42.38ms | 47.82ms |
| comp_1to4 | 13.54ms | 18.81ms | 20.16ms | 22.11ms | 14.13ms | 22.08ms | 48.79ms |
| comp_1to8 | 7.02ms | 21.23ms | 5.46ms | 4.88ms | 6.21ms | 20.22ms | 44.13ms |
| comp_1to1000 | 3.67ms | 16.04ms | 3.78ms | 4.16ms | 4.38ms | 14.58ms | 38.81ms |
| update_1to1 | 5.61ms | 23.62ms | 8.59ms | 83.28ms | 8.83ms | 16.69ms | 5.66ms |
| update_2to1 | 2.79ms | 11.20ms | 4.25ms | 41.86ms | 4.48ms | 8.18ms | 2.82ms |
| update_4to1 | 1.41ms | 7.23ms | 2.13ms | 20.57ms | 2.31ms | 4.39ms | 1.41ms |
| update_1000to1 | 25μs | 93μs | 21μs | 169μs | 22μs | 41μs | 14μs |
| update_1to2 | 2.83ms | 11.25ms | 4.63ms | 42.49ms | 4.48ms | 8.38ms | 2.86ms |
| update_1to4 | 1.50ms | 5.87ms | 2.13ms | 20.88ms | 2.27ms | 4.12ms | 1.42ms |
| update_1to1000 | 51μs | 178μs | 39μs | 90μs | 42μs | 146μs | 387μs |
| cellx1000 | 7.10ms | 78.80ms | 14.71ms | N/A | 9.80ms | 11.42ms | 5.80ms |
| cellx2500 | 19.39ms | 266.49ms | 34.61ms | N/A | 34.43ms | 34.33ms | 30.45ms |
| cellx5000 | 45.70ms | 581.06ms | 98.13ms | N/A | 71.33ms | 91.88ms | 91.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.18ms | 2.07s | 442.50ms | 2.13s | 528.32ms | 327.47ms | 241.74ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 187.23ms | 1.60s | 273.33ms | 1.44s (partial) | 279.15ms | 222.68ms | 202.19ms |
| 1000x12 - 4 sources - dynamic (large) | 348.99ms | 1.96s | 3.80s | 2.46s (partial) | 3.77s | 444.69ms | 357.63ms |
| 1000x5 - 25 sources (wide dense) | 491.39ms | 3.60s | 2.73s | 4.29s | 3.43s | 815.99ms | 504.00ms |
| 5x500 - 3 sources (deep) | 194.91ms | 1.22s | 230.41ms | 1.38s | 225.33ms | 230.04ms | 208.20ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 278.42ms | 1.69s | 449.79ms | 1.76s (partial) | 481.43ms | 340.95ms | 262.31ms |

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
