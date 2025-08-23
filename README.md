# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.23s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.43s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.49s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.43s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.74s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.95ms | 2.35s | 201.22ms | 1.41s | 214.70ms | 259.38ms | 147.10ms (fail) |
| broadPropagation | 318.56ms | 4.35s | 459.52ms | 80.55ms (fail) | 465.04ms | 451.82ms | 6.69ms (fail) |
| deepPropagation | 98.20ms | 1.54s | 181.11ms | 1.98s (fail) | 176.73ms | 144.98ms | 147.74ms (fail) |
| diamond | 225.45ms | 2.41s | 279.75ms | 2.63s (fail) | 284.64ms | 310.27ms | 207.71ms (fail) |
| mux | 346.22ms | 1.81s | 405.66ms | 565.55ms (fail) | 419.69ms | 399.25ms | 191.77ms (fail) |
| repeatedObservers | 50.61ms | 233.63ms | 39.91ms | 400.13ms (fail) | 46.30ms | 90.23ms | 53.48ms (fail) |
| triangle | 78.44ms | 767.98ms | 99.77ms | 893.84ms (fail) | 100.78ms | 98.93ms | 77.07ms (fail) |
| unstable | 140.37ms | 345.61ms | 73.66ms | 635.15ms (fail) | 76.15ms | 168.70ms | 347.29ms (fail) |
| molBench | 484.97ms | 582.58ms | 485.86ms | 12.28ms | 487.19ms | 501.62ms | 894μs |
| create_signals | 27.30ms | 70.57ms | 5.20ms | 25.17ms | 25.38ms | 78.33ms | 63.11ms |
| comp_0to1 | 11.43ms | 27.71ms | 23.20ms | 15.59ms | 11.59ms | 26.33ms | 56.84ms |
| comp_1to1 | 29.82ms | 40.47ms | 15.14ms | 26.33ms | 20.52ms | 44.18ms | 57.89ms |
| comp_2to1 | 20.42ms | 32.16ms | 20.30ms | 26.74ms | 9.23ms | 22.56ms | 38.73ms |
| comp_4to1 | 1.65ms | 25.37ms | 15.66ms | 7.51ms | 2.88ms | 14.19ms | 17.16ms |
| comp_1000to1 | 6μs | 20μs | 5μs | 4μs | 8μs | 15μs | 43μs |
| comp_1to2 | 11.51ms | 30.03ms | 14.63ms | 14.78ms | 17.79ms | 40.87ms | 48.28ms |
| comp_1to4 | 14.46ms | 24.69ms | 21.56ms | 28.59ms | 7.46ms | 21.96ms | 46.48ms |
| comp_1to8 | 7.94ms | 28.86ms | 10.58ms | 9.04ms | 6.64ms | 19.23ms | 45.73ms |
| comp_1to1000 | 3.48ms | 15.66ms | 7.01ms | 4.77ms | 4.38ms | 14.38ms | 41.66ms |
| update_1to1 | 5.59ms | 23.68ms | 9.23ms | 84.02ms | 10.85ms | 17.01ms | 6.01ms |
| update_2to1 | 2.77ms | 13.48ms | 5.30ms | 42.13ms | 5.11ms | 8.43ms | 3.10ms |
| update_4to1 | 1.40ms | 6.70ms | 2.38ms | 20.60ms | 2.72ms | 4.21ms | 1.52ms |
| update_1000to1 | 24μs | 61μs | 23μs | 170μs | 27μs | 42μs | 15μs |
| update_1to2 | 2.78ms | 12.29ms | 4.62ms | 43.28ms | 5.17ms | 8.60ms | 3.02ms |
| update_1to4 | 1.47ms | 6.02ms | 2.35ms | 19.99ms | 2.77ms | 4.22ms | 1.53ms |
| update_1to1000 | 31μs | 173μs | 424μs | 121μs | 47μs | 144μs | 413μs |
| cellx1000 | 7.19ms | 78.63ms | 9.82ms | N/A | 10.04ms | 13.30ms | 5.68ms |
| cellx2500 | 19.61ms | 267.75ms | 28.67ms | N/A | 36.53ms | 30.28ms | 30.43ms |
| cellx5000 | 46.17ms | 597.53ms | 84.24ms | N/A | 77.91ms | 83.20ms | 64.60ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.55ms | 2.02s | 454.59ms | 2.19s | 510.07ms | 327.30ms | 237.10ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.23ms | 1.50s | 276.64ms | 1.44s (partial) | 282.87ms | 220.64ms | 200.56ms |
| 1000x12 - 4 sources - dynamic (large) | 352.67ms | 1.88s | 3.74s | 2.49s (partial) | 4.02s | 443.13ms | 357.08ms |
| 1000x5 - 25 sources (wide dense) | 485.91ms | 3.49s | 2.76s | 4.45s | 3.44s | 797.59ms | 511.71ms |
| 5x500 - 3 sources (deep) | 198.10ms | 1.13s | 232.87ms | 1.43s | 223.91ms | 231.40ms | 207.53ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 279.68ms | 1.71s | 464.31ms | 1.77s (partial) | 483.03ms | 333.10ms | 262.16ms |

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
