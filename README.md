# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.51s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.14s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.46s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.81s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.80s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.45ms | 2.35s | 200.63ms | 1.43s | 211.52ms | 233.19ms | 154.58ms (fail) |
| broadPropagation | 268.18ms | 4.36s | 470.64ms | 84.14ms (fail) | 458.97ms | 451.64ms | 6.73ms (fail) |
| deepPropagation | 80.77ms | 1.54s | 179.01ms | 1.92s (fail) | 173.40ms | 130.56ms | 141.59ms (fail) |
| diamond | 180.91ms | 2.43s | 282.42ms | 2.65s (fail) | 289.61ms | 305.60ms | 188.07ms (fail) |
| mux | 325.76ms | 1.81s | 395.06ms | 560.43ms (fail) | 413.28ms | 388.27ms | 193.49ms (fail) |
| repeatedObservers | 49.34ms | 233.41ms | 40.29ms | 386.73ms (fail) | 46.55ms | 89.71ms | 52.63ms (fail) |
| triangle | 68.36ms | 794.93ms | 99.00ms | 969.75ms (fail) | 99.41ms | 94.41ms | 79.48ms (fail) |
| unstable | 61.33ms | 344.19ms | 74.91ms | 644.38ms (fail) | 76.39ms | 101.52ms | 341.56ms (fail) |
| molBench | 482.12ms | 583.56ms | 489.48ms | 11.44ms | 486.17ms | 498.13ms | 1.42ms |
| create_signals | 23.39ms | 72.04ms | 5.15ms | 24.64ms | 26.88ms | 82.58ms | 70.34ms |
| comp_0to1 | 17.53ms | 28.64ms | 17.65ms | 14.06ms | 12.27ms | 22.43ms | 62.88ms |
| comp_1to1 | 12.45ms | 45.45ms | 15.04ms | 23.67ms | 25.92ms | 46.56ms | 76.57ms |
| comp_2to1 | 13.38ms | 23.08ms | 17.39ms | 25.20ms | 11.87ms | 36.60ms | 44.37ms |
| comp_4to1 | 5.59ms | 17.89ms | 14.11ms | 4.24ms | 9.67ms | 25.76ms | 18.48ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 5μs | 5μs | 31μs | 46μs |
| comp_1to2 | 11.95ms | 37.26ms | 18.35ms | 11.99ms | 21.70ms | 25.13ms | 50.20ms |
| comp_1to4 | 21.42ms | 20.51ms | 36.84ms | 29.86ms | 11.10ms | 29.83ms | 49.24ms |
| comp_1to8 | 10.16ms | 24.03ms | 8.03ms | 5.77ms | 6.31ms | 20.28ms | 46.36ms |
| comp_1to1000 | 6.29ms | 15.50ms | 6.15ms | 4.71ms | 4.48ms | 13.52ms | 41.53ms |
| update_1to1 | 5.27ms | 26.46ms | 8.95ms | 90.59ms | 10.30ms | 14.56ms | 6.02ms |
| update_2to1 | 4.46ms | 14.44ms | 4.86ms | 43.73ms | 4.55ms | 7.16ms | 3.09ms |
| update_4to1 | 1.36ms | 7.61ms | 2.26ms | 21.54ms | 2.60ms | 3.68ms | 1.56ms |
| update_1000to1 | 12μs | 56μs | 31μs | 207μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.60ms | 10.95ms | 4.42ms | 43.34ms | 4.58ms | 7.35ms | 3.07ms |
| update_1to4 | 1.34ms | 7.29ms | 2.31ms | 21.32ms | 2.54ms | 3.61ms | 1.55ms |
| update_1to1000 | 47μs | 175μs | 182μs | 132μs | 44μs | 143μs | 412μs |
| cellx1000 | 6.40ms | 87.07ms | 9.84ms | N/A | 10.89ms | 9.16ms | 7.32ms |
| cellx2500 | 18.89ms | 314.03ms | 31.19ms | N/A | 42.58ms | 31.72ms | 28.99ms |
| cellx5000 | 56.88ms | 628.47ms | 100.76ms | N/A | 94.63ms | 91.24ms | 72.61ms |
| 10x5 - 2 sources - read 20.0% (simple) | 207.64ms | 2.03s | 446.86ms | 2.26s | 502.48ms | 316.16ms | 241.11ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.07ms | 1.51s | 273.00ms | 1.49s (partial) | 280.03ms | 219.24ms | 199.87ms |
| 1000x12 - 4 sources - dynamic (large) | 283.87ms | 1.94s | 3.70s | 2.48s (partial) | 3.89s | 448.07ms | 339.21ms |
| 1000x5 - 25 sources (wide dense) | 553.19ms | 3.52s | 2.76s | 4.31s | 3.53s | 823.51ms | 509.55ms |
| 5x500 - 3 sources (deep) | 181.19ms | 1.22s | 231.28ms | 1.45s | 225.54ms | 231.01ms | 206.41ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.98ms | 1.75s | 459.43ms | 1.81s (partial) | 469.96ms | 336.28ms | 259.12ms |

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
