# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.20s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.33s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.07s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.71s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.54ms | 2.32s | 201.89ms | 1.51s | 212.45ms | 258.63ms | 162.61ms (fail) |
| broadPropagation | 318.11ms | 4.22s | 459.50ms | 89.03ms (fail) | 463.37ms | 465.05ms | 6.31ms (fail) |
| deepPropagation | 102.07ms | 1.52s | 179.18ms | 2.10s (fail) | 178.37ms | 139.87ms | 140.58ms (fail) |
| diamond | 225.56ms | 2.38s | 278.67ms | 2.82s (fail) | 282.74ms | 310.19ms | 183.73ms (fail) |
| mux | 343.98ms | 1.84s | 393.27ms | 582.38ms (fail) | 415.09ms | 400.42ms | 194.48ms (fail) |
| repeatedObservers | 50.53ms | 230.39ms | 40.49ms | 395.29ms (fail) | 55.37ms | 90.43ms | 54.13ms (fail) |
| triangle | 76.78ms | 759.34ms | 99.96ms | 1.02s (fail) | 102.89ms | 97.13ms | 77.45ms (fail) |
| unstable | 140.26ms | 340.82ms | 73.91ms | 655.93ms (fail) | 76.12ms | 166.27ms | 343.57ms (fail) |
| molBench | 485.51ms | 583.48ms | 487.29ms | 12.20ms | 486.18ms | 502.14ms | 963μs |
| create_signals | 27.15ms | 72.46ms | 5.13ms | 24.15ms | 25.98ms | 76.73ms | 66.40ms |
| comp_0to1 | 9.40ms | 25.30ms | 17.32ms | 13.87ms | 11.45ms | 25.31ms | 59.26ms |
| comp_1to1 | 18.36ms | 17.50ms | 12.34ms | 22.01ms | 27.71ms | 53.48ms | 58.48ms |
| comp_2to1 | 16.10ms | 19.66ms | 21.89ms | 24.77ms | 13.17ms | 35.20ms | 42.92ms |
| comp_4to1 | 4.04ms | 27.89ms | 7.90ms | 7.51ms | 3.97ms | 13.70ms | 18.28ms |
| comp_1000to1 | 4μs | 35μs | 6μs | 3μs | 5μs | 16μs | 62μs |
| comp_1to2 | 9.78ms | 37.31ms | 16.46ms | 11.01ms | 13.93ms | 34.31ms | 49.52ms |
| comp_1to4 | 13.85ms | 22.76ms | 24.33ms | 18.56ms | 12.06ms | 21.29ms | 49.65ms |
| comp_1to8 | 9.70ms | 24.96ms | 7.21ms | 5.17ms | 6.72ms | 21.29ms | 46.31ms |
| comp_1to1000 | 4.05ms | 15.14ms | 5.74ms | 4.28ms | 4.45ms | 15.46ms | 41.27ms |
| update_1to1 | 5.47ms | 22.63ms | 8.30ms | 88.34ms | 11.54ms | 16.89ms | 6.01ms |
| update_2to1 | 5.33ms | 12.37ms | 4.42ms | 45.41ms | 5.32ms | 8.55ms | 3.08ms |
| update_4to1 | 2.61ms | 7.43ms | 2.09ms | 20.84ms | 2.90ms | 4.24ms | 1.51ms |
| update_1000to1 | 26μs | 71μs | 20μs | 195μs | 26μs | 42μs | 15μs |
| update_1to2 | 3.54ms | 11.74ms | 4.18ms | 43.93ms | 5.15ms | 8.54ms | 3.02ms |
| update_1to4 | 1.40ms | 6.87ms | 2.08ms | 21.70ms | 2.86ms | 4.20ms | 1.50ms |
| update_1to1000 | 64μs | 182μs | 141μs | 98μs | 43μs | 144μs | 418μs |
| cellx1000 | 7.87ms | 74.62ms | 9.57ms | N/A | 9.74ms | 9.80ms | 5.07ms |
| cellx2500 | 19.95ms | 262.42ms | 25.28ms | N/A | 36.28ms | 27.79ms | 27.68ms |
| cellx5000 | 49.91ms | 575.70ms | 66.00ms | N/A | 68.78ms | 60.68ms | 86.21ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.59ms | 2.01s | 445.55ms | 2.42s | 507.87ms | 327.90ms | 236.38ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.66ms | 1.50s | 277.45ms | 1.55s (partial) | 279.66ms | 219.23ms | 198.40ms |
| 1000x12 - 4 sources - dynamic (large) | 350.93ms | 1.78s | 3.72s | 2.62s (partial) | 3.78s | 437.18ms | 337.84ms |
| 1000x5 - 25 sources (wide dense) | 496.99ms | 3.51s | 2.75s | 4.14s | 3.42s | 789.33ms | 500.37ms |
| 5x500 - 3 sources (deep) | 206.71ms | 1.11s | 229.34ms | 1.52s | 223.71ms | 226.45ms | 207.75ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 284.75ms | 1.72s | 463.41ms | 1.92s (partial) | 472.30ms | 335.73ms | 255.79ms |

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
