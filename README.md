# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals 2.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 1.90s |
| 🥈 | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.00s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.83s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 8.70s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.43s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.58s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.23s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.85s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | [alien_signals 2.0](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 76.57ms | 71.34ms | 2.31s | 194.96ms | 1.35s | 199.58ms | 229.20ms | 141.91ms (fail) |
| broadPropagation | 131.86ms | 116.13ms | 4.18s | 422.93ms | 81.61ms (fail) | 393.75ms | 431.65ms | 5.78ms (fail) |
| deepPropagation | 57.92ms | 46.97ms | 1.49s | 179.31ms | 2.27s (fail) | 173.93ms | 132.41ms | 159.15ms (fail) |
| diamond | 95.37ms | 97.92ms | 2.36s | 251.25ms | 3.03s (fail) | 254.32ms | 310.98ms | 181.55ms (fail) |
| mux | 161.89ms | 168.22ms | 1.84s | 349.01ms | 569.60ms (fail) | 357.59ms | 399.96ms | 175.12ms (fail) |
| repeatedObservers | 24.78ms | 15.93ms | 229.40ms | 33.84ms | 396.05ms (fail) | 38.76ms | 94.02ms | 46.89ms (fail) |
| triangle | 41.61ms | 42.69ms | 782.14ms | 99.72ms | 947.28ms (fail) | 92.79ms | 102.01ms | 77.00ms (fail) |
| unstable | 34.55ms | 30.38ms | 329.92ms | 58.38ms | 607.64ms (fail) | 64.22ms | 104.71ms | 327.12ms (fail) |
| molBench | 283.72ms | 288.98ms | 461.54ms | 365.39ms | 12.04ms | 368.04ms | 370.80ms | 948μs |
| create_signals | 14.38ms | 3.11ms | 74.02ms | 6.75ms | 24.74ms | 25.05ms | 58.20ms | 67.65ms |
| comp_0to1 | 2.80ms | 5.06ms | 25.18ms | 20.19ms | 16.82ms | 12.28ms | 45.08ms | 60.37ms |
| comp_1to1 | 6.51ms | 14.67ms | 43.19ms | 19.09ms | 26.41ms | 28.07ms | 42.59ms | 54.44ms |
| comp_2to1 | 1.22ms | 3.41ms | 34.16ms | 20.40ms | 28.45ms | 12.40ms | 20.70ms | 45.26ms |
| comp_4to1 | 5.26ms | 807μs | 20.31ms | 18.24ms | 6.67ms | 7.27ms | 16.07ms | 19.16ms |
| comp_1000to1 | 2μs | 1μs | 17μs | 5μs | 4μs | 7μs | 22μs | 41μs |
| comp_1to2 | 6.43ms | 7.53ms | 41.60ms | 25.91ms | 17.29ms | 24.66ms | 38.64ms | 50.32ms |
| comp_1to4 | 10.11ms | 7.38ms | 24.67ms | 29.29ms | 27.86ms | 17.82ms | 28.01ms | 50.19ms |
| comp_1to8 | 3.33ms | 2.55ms | 26.47ms | 7.59ms | 10.39ms | 8.89ms | 23.28ms | 46.41ms |
| comp_1to1000 | 1.77ms | 1.76ms | 17.53ms | 7.34ms | 6.93ms | 5.72ms | 15.54ms | 39.09ms |
| update_1to1 | 2.49ms | 1.94ms | 22.95ms | 9.28ms | 85.53ms | 10.93ms | 15.85ms | 4.94ms |
| update_2to1 | 1.26ms | 1.04ms | 11.77ms | 4.50ms | 43.49ms | 5.49ms | 7.84ms | 2.43ms |
| update_4to1 | 653μs | 530μs | 6.18ms | 2.42ms | 20.78ms | 2.74ms | 3.96ms | 1.22ms |
| update_1000to1 | 6μs | 6μs | 55μs | 25μs | 172μs | 28μs | 39μs | 12μs |
| update_1to2 | 1.24ms | 1.02ms | 11.69ms | 4.78ms | 42.77ms | 5.48ms | 7.81ms | 2.48ms |
| update_1to4 | 635μs | 448μs | 5.70ms | 2.16ms | 21.04ms | 3.14ms | 3.97ms | 1.23ms |
| update_1to1000 | 15μs | 15μs | 178μs | 636μs | 110μs | 100μs | 158μs | 380μs |
| cellx1000 | 3.73ms | 3.47ms | 106.41ms | 11.07ms | N/A | 11.17ms | 17.45ms | 10.93ms |
| cellx2500 | 11.34ms | 9.13ms | 320.68ms | 28.86ms | N/A | 35.01ms | 52.94ms | 45.85ms |
| cellx5000 | 35.14ms | 23.12ms | 637.19ms | 81.72ms | N/A | 83.93ms | 132.76ms | 111.84ms |
| 10x5 - 2 sources - read 20.0% (simple) | 143.12ms | 129.39ms | 2.14s | 393.35ms | 2.25s | 425.01ms | 315.81ms | 233.61ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 94.41ms | 92.34ms | 1.58s | 235.01ms | 1.44s (partial) | 236.38ms | 234.75ms | 174.54ms |
| 1000x12 - 4 sources - dynamic (large) | 186.91ms | 178.90ms | 1.84s | 2.99s | 2.85s (partial) | 3.25s | 384.37ms | 279.23ms |
| 1000x5 - 25 sources (wide dense) | 299.78ms | 290.28ms | 3.62s | 2.23s | 4.27s | 2.65s | 633.83ms | 382.68ms |
| 5x500 - 3 sources (deep) | 99.76ms | 89.88ms | 1.23s | 217.48ms | 1.44s | 211.17ms | 263.92ms | 206.92ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 156.48ms | 149.11ms | 1.77s | 373.66ms | 1.93s (partial) | 413.50ms | 288.75ms | 221.27ms |

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
