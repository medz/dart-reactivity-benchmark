# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.50s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.21s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.83s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.98s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.64s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.46s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 188.52ms | 2.39s | 211.11ms | 1.25s | 1.48s | 211.05ms | 273.39ms | 155.03ms (fail) |
| broadPropagation | 373.67ms | 4.50s | 486.59ms | 4.99s | 83.02ms (fail) | 479.98ms | 517.46ms | 6.09ms (fail) |
| deepPropagation | 130.91ms | 1.59s | 179.67ms | 4.00s | 1.89s (fail) | 181.72ms | 174.55ms | 141.75ms (fail) |
| diamond | 238.06ms | 2.52s | 284.69ms | 14.03s (fail) | 2.75s (fail) | 292.31ms | 351.39ms | 188.93ms (fail) |
| mux | 387.27ms | 1.91s | 384.26ms | 1.02s | 568.12ms (fail) | 410.80ms | 450.10ms | 192.66ms (fail) |
| repeatedObservers | 45.00ms | 249.23ms | 38.83ms | 9.74s | 389.50ms (fail) | 47.13ms | 77.86ms | 53.22ms (fail) |
| triangle | 87.33ms | 814.05ms | 101.02ms | 4.52s | 1.02s (fail) | 105.49ms | 119.18ms | 78.38ms (fail) |
| unstable | 61.57ms | 368.46ms | 70.37ms | 7.64s | 642.18ms (fail) | 75.17ms | 95.16ms | 344.37ms (fail) |
| molBench | 494.13ms | 590.76ms | 489.74ms | 5.90s | 12.71ms | 489.37ms | 497.47ms | 1.08ms |
| create_signals | 28.60ms | 86.07ms | 4.70ms | 13.34ms | 24.33ms | 30.62ms | 88.10ms | 83.69ms |
| comp_0to1 | 8.03ms | 30.77ms | 18.19ms | 13.68ms | 14.70ms | 12.47ms | 42.89ms | 64.28ms |
| comp_1to1 | 4.17ms | 60.81ms | 17.30ms | 99.56ms | 24.85ms | 29.43ms | 45.74ms | 56.69ms |
| comp_2to1 | 2.28ms | 23.99ms | 9.61ms | 72.37ms | 32.22ms | 18.04ms | 25.99ms | 39.35ms |
| comp_4to1 | 7.55ms | 23.55ms | 13.19ms | 85.23ms | 11.45ms | 9.33ms | 5.93ms | 17.31ms |
| comp_1000to1 | 4μs | 15μs | 6μs | 59.32ms | 5μs | 5μs | 14μs | 42μs |
| comp_1to2 | 9.74ms | 35.28ms | 15.35ms | 66.89ms | 13.30ms | 22.90ms | 27.70ms | 46.80ms |
| comp_1to4 | 11.82ms | 19.88ms | 31.36ms | 99.18ms | 27.52ms | 13.34ms | 21.75ms | 44.66ms |
| comp_1to8 | 4.88ms | 23.99ms | 9.22ms | 116.37ms | 7.09ms | 7.25ms | 23.38ms | 44.41ms |
| comp_1to1000 | 4.11ms | 19.36ms | 11.97ms | 47.90ms | 6.05ms | 4.65ms | 15.66ms | 39.24ms |
| update_1to1 | 11.23ms | 24.80ms | 8.28ms | N/A | 86.73ms | 9.24ms | 16.68ms | 5.75ms |
| update_2to1 | 4.90ms | 12.43ms | 4.17ms | N/A | 42.33ms | 4.61ms | 8.13ms | 2.91ms |
| update_4to1 | 2.74ms | 6.43ms | 2.12ms | N/A | 20.58ms | 2.33ms | 4.12ms | 1.47ms |
| update_1000to1 | 11μs | 66μs | 20μs | N/A | 213μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.67ms | 12.23ms | 4.11ms | N/A | 43.26ms | 4.96ms | 8.20ms | 2.96ms |
| update_1to4 | 2.43ms | 6.66ms | 2.08ms | N/A | 23.86ms | 2.31ms | 4.10ms | 1.47ms |
| update_1to1000 | 49μs | 175μs | 71μs | N/A | 131μs | 66μs | 156μs | 416μs |
| cellx1000 | 7.63ms | 82.17ms | 12.27ms | N/A | N/A | 10.46ms | 12.29ms | 6.92ms |
| cellx2500 | 21.88ms | 283.82ms | 29.27ms | N/A | N/A | 40.06ms | 39.18ms | 29.00ms |
| cellx5000 | 48.27ms | 640.34ms | 76.87ms | N/A | N/A | 74.95ms | 107.97ms | 83.03ms |
| 10x5 - 2 sources - read 20.0% (simple) | 239.63ms | 2.15s | 475.44ms | N/A | 2.33s | 508.25ms | 363.80ms | 266.81ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.18ms | 1.66s | 283.17ms | N/A | 1.55s (partial) | 288.09ms | 254.93ms | 209.35ms |
| 1000x12 - 4 sources - dynamic (large) | 287.96ms | 2.03s | 3.59s | N/A | 2.64s (partial) | 3.95s | 510.68ms | 388.60ms |
| 1000x5 - 25 sources (wide dense) | 439.08ms | 3.72s | 2.64s | N/A | 4.29s | 3.75s | 627.54ms | 546.57ms |
| 5x500 - 3 sources (deep) | 196.22ms | 1.24s | 242.48ms | N/A | 1.46s | 236.10ms | 277.54ms | 210.97ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 282.73ms | 1.85s | 465.20ms | N/A | 1.98s (partial) | 509.84ms | 409.58ms | 281.06ms |

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
