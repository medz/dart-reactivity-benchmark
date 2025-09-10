# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.21s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.50s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.27s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.48s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.26s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.55ms | 2.41s | 200.31ms | 1.39s | 215.11ms | 254.11ms | 161.98ms (fail) |
| broadPropagation | 316.21ms | 4.37s | 458.72ms | 80.36ms (fail) | 464.12ms | 454.02ms | 6.40ms (fail) |
| deepPropagation | 100.94ms | 1.55s | 177.95ms | 1.91s (fail) | 181.73ms | 145.78ms | 142.39ms (fail) |
| diamond | 228.35ms | 2.45s | 279.45ms | 2.59s (fail) | 290.81ms | 321.91ms | 202.80ms (fail) |
| mux | 345.86ms | 1.84s | 392.17ms | 588.13ms (fail) | 411.45ms | 408.11ms | 199.06ms (fail) |
| repeatedObservers | 50.60ms | 236.75ms | 40.15ms | 426.78ms (fail) | 47.06ms | 90.87ms | 52.69ms (fail) |
| triangle | 80.35ms | 783.39ms | 99.10ms | 859.69ms (fail) | 103.24ms | 99.89ms | 81.75ms (fail) |
| unstable | 140.20ms | 347.88ms | 73.92ms | 618.92ms (fail) | 77.06ms | 166.58ms | 342.14ms (fail) |
| molBench | 484.06ms | 585.54ms | 488.90ms | 11.27ms | 486.58ms | 501.47ms | 961μs |
| create_signals | 24.62ms | 63.95ms | 5.17ms | 23.66ms | 24.80ms | 77.99ms | 65.12ms |
| comp_0to1 | 14.04ms | 15.73ms | 17.41ms | 14.74ms | 10.96ms | 25.13ms | 55.47ms |
| comp_1to1 | 17.79ms | 46.79ms | 12.43ms | 23.61ms | 27.52ms | 41.35ms | 57.42ms |
| comp_2to1 | 10.63ms | 30.32ms | 17.64ms | 25.85ms | 18.66ms | 20.30ms | 37.81ms |
| comp_4to1 | 3.05ms | 27.68ms | 13.39ms | 5.66ms | 5.21ms | 12.34ms | 16.50ms |
| comp_1000to1 | 4μs | 15μs | 9μs | 3μs | 4μs | 15μs | 44μs |
| comp_1to2 | 10.87ms | 36.13ms | 21.54ms | 13.09ms | 14.88ms | 33.88ms | 48.14ms |
| comp_1to4 | 19.49ms | 21.26ms | 33.40ms | 24.41ms | 15.52ms | 30.57ms | 46.66ms |
| comp_1to8 | 9.22ms | 23.35ms | 8.48ms | 8.64ms | 17.62ms | 23.62ms | 45.62ms |
| comp_1to1000 | 12.31ms | 15.34ms | 7.09ms | 4.59ms | 4.56ms | 15.49ms | 41.55ms |
| update_1to1 | 7.71ms | 23.93ms | 8.39ms | 81.01ms | 11.42ms | 16.90ms | 6.01ms |
| update_2to1 | 2.89ms | 11.76ms | 4.41ms | 43.62ms | 5.12ms | 8.38ms | 3.08ms |
| update_4to1 | 1.42ms | 6.74ms | 2.07ms | 19.80ms | 2.82ms | 4.63ms | 1.53ms |
| update_1000to1 | 24μs | 70μs | 20μs | 178μs | 27μs | 42μs | 15μs |
| update_1to2 | 3.54ms | 11.97ms | 4.18ms | 42.96ms | 4.95ms | 9.43ms | 3.01ms |
| update_1to4 | 1.40ms | 5.99ms | 2.08ms | 20.37ms | 2.79ms | 4.22ms | 1.53ms |
| update_1to1000 | 133μs | 177μs | 1.04ms | 95μs | 44μs | 144μs | 426μs |
| cellx1000 | 7.53ms | 72.00ms | 9.63ms | N/A | 9.92ms | 9.95ms | 5.04ms |
| cellx2500 | 19.66ms | 248.32ms | 25.54ms | N/A | 32.33ms | 27.49ms | 23.15ms |
| cellx5000 | 48.72ms | 564.63ms | 64.40ms | N/A | 68.19ms | 64.99ms | 62.86ms |
| 10x5 - 2 sources - read 20.0% (simple) | 243.54ms | 2.02s | 529.81ms | 2.13s | 516.08ms | 329.64ms | 245.94ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.00ms | 1.51s | 291.92ms | 1.48s (partial) | 281.61ms | 219.75ms | 199.15ms |
| 1000x12 - 4 sources - dynamic (large) | 343.66ms | 1.84s | 3.77s | 2.52s (partial) | 3.78s | 436.37ms | 339.75ms |
| 1000x5 - 25 sources (wide dense) | 498.27ms | 3.47s | 2.73s | 4.22s | 3.44s | 794.32ms | 486.46ms |
| 5x500 - 3 sources (deep) | 199.68ms | 1.12s | 244.21ms | 1.34s | 222.23ms | 225.96ms | 203.15ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 287.88ms | 1.71s | 466.90ms | 1.74s (partial) | 476.67ms | 334.04ms | 253.54ms |

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
