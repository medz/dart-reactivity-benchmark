# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 1.86s |
| 🥈 | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 1.91s |
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
| Test Case | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 76.40ms | 70.23ms | 2.31s | 194.96ms | 1.35s | 199.58ms | 229.20ms | 141.91ms (fail) |
| broadPropagation | 131.44ms | 126.90ms | 4.18s | 422.93ms | 81.61ms (fail) | 393.75ms | 431.65ms | 5.78ms (fail) |
| deepPropagation | 55.67ms | 56.81ms | 1.49s | 179.31ms | 2.27s (fail) | 173.93ms | 132.41ms | 159.15ms (fail) |
| diamond | 96.83ms | 93.85ms | 2.36s | 251.25ms | 3.03s (fail) | 254.32ms | 310.98ms | 181.55ms (fail) |
| mux | 159.40ms | 160.92ms | 1.84s | 349.01ms | 569.60ms (fail) | 357.59ms | 399.96ms | 175.12ms (fail) |
| repeatedObservers | 24.52ms | 15.23ms | 229.40ms | 33.84ms | 396.05ms (fail) | 38.76ms | 94.02ms | 46.89ms (fail) |
| triangle | 40.86ms | 41.27ms | 782.14ms | 99.72ms | 947.28ms (fail) | 92.79ms | 102.01ms | 77.00ms (fail) |
| unstable | 34.63ms | 27.25ms | 329.92ms | 58.38ms | 607.64ms (fail) | 64.22ms | 104.71ms | 327.12ms (fail) |
| molBench | 271.96ms | 275.44ms | 461.54ms | 365.39ms | 12.04ms | 368.04ms | 370.80ms | 948μs |
| create_signals | 11.84ms | 3.15ms | 74.02ms | 6.75ms | 24.74ms | 25.05ms | 58.20ms | 67.65ms |
| comp_0to1 | 2.67ms | 4.86ms | 25.18ms | 20.19ms | 16.82ms | 12.28ms | 45.08ms | 60.37ms |
| comp_1to1 | 5.18ms | 7.62ms | 43.19ms | 19.09ms | 26.41ms | 28.07ms | 42.59ms | 54.44ms |
| comp_2to1 | 3.64ms | 3.33ms | 34.16ms | 20.40ms | 28.45ms | 12.40ms | 20.70ms | 45.26ms |
| comp_4to1 | 4.03ms | 748μs | 20.31ms | 18.24ms | 6.67ms | 7.27ms | 16.07ms | 19.16ms |
| comp_1000to1 | 1μs | 2μs | 17μs | 5μs | 4μs | 7μs | 22μs | 41μs |
| comp_1to2 | 7.12ms | 16.29ms | 41.60ms | 25.91ms | 17.29ms | 24.66ms | 38.64ms | 50.32ms |
| comp_1to4 | 8.66ms | 9.56ms | 24.67ms | 29.29ms | 27.86ms | 17.82ms | 28.01ms | 50.19ms |
| comp_1to8 | 2.86ms | 3.41ms | 26.47ms | 7.59ms | 10.39ms | 8.89ms | 23.28ms | 46.41ms |
| comp_1to1000 | 1.76ms | 2.00ms | 17.53ms | 7.34ms | 6.93ms | 5.72ms | 15.54ms | 39.09ms |
| update_1to1 | 2.30ms | 2.02ms | 22.95ms | 9.28ms | 85.53ms | 10.93ms | 15.85ms | 4.94ms |
| update_2to1 | 1.26ms | 1.02ms | 11.77ms | 4.50ms | 43.49ms | 5.49ms | 7.84ms | 2.43ms |
| update_4to1 | 663μs | 490μs | 6.18ms | 2.42ms | 20.78ms | 2.74ms | 3.96ms | 1.22ms |
| update_1000to1 | 6μs | 4μs | 55μs | 25μs | 172μs | 28μs | 39μs | 12μs |
| update_1to2 | 1.27ms | 968μs | 11.69ms | 4.78ms | 42.77ms | 5.48ms | 7.81ms | 2.48ms |
| update_1to4 | 651μs | 518μs | 5.70ms | 2.16ms | 21.04ms | 3.14ms | 3.97ms | 1.23ms |
| update_1to1000 | 18μs | 26μs | 178μs | 636μs | 110μs | 100μs | 158μs | 380μs |
| cellx1000 | 3.17ms | 3.33ms | 106.41ms | 11.07ms | N/A | 11.17ms | 17.45ms | 10.93ms |
| cellx2500 | 8.48ms | 10.42ms | 320.68ms | 28.86ms | N/A | 35.01ms | 52.94ms | 45.85ms |
| cellx5000 | 25.66ms | 21.58ms | 637.19ms | 81.72ms | N/A | 83.93ms | 132.76ms | 111.84ms |
| 10x5 - 2 sources - read 20.0% (simple) | 134.05ms | 130.53ms | 2.14s | 393.35ms | 2.25s | 425.01ms | 315.81ms | 233.61ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 88.53ms | 100.17ms | 1.58s | 235.01ms | 1.44s (partial) | 236.38ms | 234.75ms | 174.54ms |
| 1000x12 - 4 sources - dynamic (large) | 158.72ms | 174.46ms | 1.84s | 2.99s | 2.85s (partial) | 3.25s | 384.37ms | 279.23ms |
| 1000x5 - 25 sources (wide dense) | 266.30ms | 302.92ms | 3.62s | 2.23s | 4.27s | 2.65s | 633.83ms | 382.68ms |
| 5x500 - 3 sources (deep) | 89.48ms | 94.27ms | 1.23s | 217.48ms | 1.44s | 211.17ms | 263.92ms | 206.92ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 137.86ms | 151.25ms | 1.77s | 373.66ms | 1.93s (partial) | 413.50ms | 288.75ms | 221.27ms |

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
