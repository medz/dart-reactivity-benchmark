# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.94s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.10s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.77s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 8.65s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.07s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.36s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.83s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 133.60ms | 2.24s | 182.75ms | 1.36s | 195.33ms | 232.67ms | 156.65ms |
| broadPropagation | 220.29ms | 4.10s | 384.09ms | 85.76ms (fail) | 385.26ms | 422.52ms | 352.47ms |
| deepPropagation | 87.03ms | 1.45s | 174.29ms | 2.20s (fail) | 170.85ms | 132.54ms | 163.77ms |
| diamond | 149.45ms | 2.23s | 252.50ms | 2.90s (fail) | 257.00ms | 306.51ms | 205.83ms |
| mux | 287.16ms | 1.76s | 326.96ms | 552.69ms (fail) | 334.81ms | 371.69ms | 313.80ms |
| repeatedObservers | 22.72ms | 224.01ms | 35.10ms | 390.64ms (fail) | 38.92ms | 89.22ms | 50.94ms |
| triangle | 62.62ms | 744.52ms | 93.62ms | 920.56ms (fail) | 96.43ms | 100.47ms | 84.04ms |
| unstable | 42.99ms | 319.37ms | 57.63ms | 616.12ms (fail) | 64.72ms | 106.31ms | 328.38ms |
| molBench | 360.36ms | 480.79ms | 366.25ms | 11.31ms | 389.49ms | 369.83ms | 387.98ms |
| create_signals | 14.21ms | 71.25ms | 6.66ms | 30.05ms | 23.15ms | 57.58ms | 71.71ms |
| comp_0to1 | 17.24ms | 24.64ms | 19.97ms | 18.39ms | 12.49ms | 44.47ms | 58.80ms |
| comp_1to1 | 31.40ms | 30.89ms | 17.55ms | 35.11ms | 33.72ms | 37.98ms | 53.76ms |
| comp_2to1 | 10.44ms | 26.02ms | 21.85ms | 27.12ms | 8.41ms | 17.44ms | 35.41ms |
| comp_4to1 | 5.05ms | 27.56ms | 10.00ms | 2.75ms | 2.79ms | 15.02ms | 16.58ms |
| comp_1000to1 | 6μs | 18μs | 4μs | 6μs | 6μs | 15μs | 52μs |
| comp_1to2 | 20.59ms | 39.81ms | 23.20ms | 15.87ms | 17.18ms | 32.33ms | 45.21ms |
| comp_1to4 | 18.55ms | 25.76ms | 27.73ms | 25.64ms | 11.13ms | 32.67ms | 45.05ms |
| comp_1to8 | 5.84ms | 26.21ms | 7.11ms | 7.26ms | 8.51ms | 26.20ms | 43.27ms |
| comp_1to1000 | 5.11ms | 16.18ms | 6.90ms | 6.78ms | 5.63ms | 15.93ms | 38.51ms |
| update_1to1 | 3.33ms | 20.17ms | 8.59ms | 86.77ms | 8.88ms | 14.14ms | 4.68ms |
| update_2to1 | 2.86ms | 9.87ms | 4.42ms | 44.56ms | 4.33ms | 6.89ms | 2.34ms |
| update_4to1 | 1.41ms | 5.65ms | 1.99ms | 21.44ms | 2.12ms | 3.48ms | 1.14ms |
| update_1000to1 | 8μs | 49μs | 20μs | 175μs | 22μs | 37μs | 11μs |
| update_1to2 | 1.69ms | 10.58ms | 4.39ms | 44.89ms | 4.46ms | 6.91ms | 2.43ms |
| update_1to4 | 798μs | 4.88ms | 2.22ms | 21.23ms | 2.19ms | 3.50ms | 1.16ms |
| update_1to1000 | 45μs | 172μs | 59μs | 108μs | 58μs | 165μs | 387μs |
| cellx1000 | 8.85ms | 97.68ms | 10.97ms | N/A | 11.13ms | 16.78ms | 13.50ms |
| cellx2500 | 28.14ms | 287.77ms | 28.42ms | N/A | 34.10ms | 47.22ms | 39.05ms |
| cellx5000 | 62.35ms | 614.71ms | 84.41ms | N/A | 76.64ms | 118.47ms | 103.57ms |
| 10x5 - 2 sources - read 20.0% (simple) | 175.17ms | 2.01s | 382.19ms | 2.32s | 417.73ms | 317.58ms | 223.53ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 153.54ms | 1.49s | 234.23ms | 1.46s (partial) | 236.54ms | 232.58ms | 170.98ms |
| 1000x12 - 4 sources - dynamic (large) | 245.10ms | 1.70s | 2.98s | 2.90s (partial) | 3.08s | 382.60ms | 288.94ms |
| 1000x5 - 25 sources (wide dense) | 387.55ms | 3.39s | 2.28s | 4.33s | 2.54s | 638.48ms | 379.47ms |
| 5x500 - 3 sources (deep) | 174.11ms | 1.17s | 225.59ms | 1.44s | 210.88ms | 274.71ms | 206.32ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 202.46ms | 1.71s | 381.33ms | 1.94s (partial) | 381.03ms | 292.15ms | 215.10ms |

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
