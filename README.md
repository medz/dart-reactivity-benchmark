# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.71s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.26s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.97s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.33s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.59s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.99ms | 2.30s | 205.46ms | 1.25s | 1.41s | 207.32ms | 273.83ms | 151.40ms (fail) |
| broadPropagation | 356.53ms | 4.25s | 472.21ms | 4.99s | 83.56ms (fail) | 459.85ms | 509.20ms | 5.81ms (fail) |
| deepPropagation | 126.77ms | 1.52s | 176.67ms | 4.00s | 1.93s (fail) | 169.70ms | 171.24ms | 150.43ms (fail) |
| diamond | 234.15ms | 2.40s | 286.74ms | 14.03s (fail) | 2.66s (fail) | 290.25ms | 358.03ms | 185.95ms (fail) |
| mux | 373.73ms | 1.82s | 391.78ms | 1.02s | 583.88ms (fail) | 413.66ms | 436.17ms | 189.40ms (fail) |
| repeatedObservers | 44.69ms | 224.84ms | 39.00ms | 9.74s | 396.12ms (fail) | 45.98ms | 80.45ms | 53.64ms (fail) |
| triangle | 86.33ms | 766.19ms | 100.97ms | 4.52s | 935.17ms (fail) | 103.39ms | 115.55ms | 77.66ms (fail) |
| unstable | 61.49ms | 344.22ms | 70.81ms | 7.64s | 617.44ms (fail) | 74.63ms | 96.47ms | 349.42ms (fail) |
| molBench | 489.82ms | 582.16ms | 492.21ms | 5.90s | 12.08ms | 488.60ms | 482.75ms | 1.30ms |
| create_signals | 26.81ms | 50.28ms | 4.57ms | 13.34ms | 23.23ms | 25.43ms | 55.26ms | 68.72ms |
| comp_0to1 | 8.06ms | 15.36ms | 17.74ms | 13.68ms | 13.44ms | 12.82ms | 27.97ms | 55.06ms |
| comp_1to1 | 4.51ms | 53.41ms | 11.33ms | 99.56ms | 21.12ms | 28.07ms | 40.51ms | 55.22ms |
| comp_2to1 | 2.33ms | 36.02ms | 25.14ms | 72.37ms | 23.32ms | 21.75ms | 24.18ms | 42.69ms |
| comp_4to1 | 7.90ms | 30.84ms | 14.16ms | 85.23ms | 6.60ms | 6.42ms | 16.53ms | 16.17ms |
| comp_1000to1 | 4μs | 28μs | 4μs | 59.32ms | 3μs | 9μs | 15μs | 40μs |
| comp_1to2 | 10.48ms | 36.10ms | 15.16ms | 66.89ms | 11.99ms | 17.06ms | 31.25ms | 43.89ms |
| comp_1to4 | 11.76ms | 22.50ms | 24.01ms | 99.18ms | 30.28ms | 16.01ms | 15.19ms | 42.73ms |
| comp_1to8 | 4.92ms | 22.64ms | 9.09ms | 116.37ms | 6.66ms | 6.98ms | 20.31ms | 43.51ms |
| comp_1to1000 | 3.58ms | 14.73ms | 7.69ms | 47.90ms | 4.11ms | 5.07ms | 18.63ms | 36.89ms |
| update_1to1 | 11.36ms | 23.74ms | 8.22ms | N/A | 84.70ms | 9.21ms | 16.23ms | 5.74ms |
| update_2to1 | 5.10ms | 12.01ms | 4.06ms | N/A | 43.20ms | 4.58ms | 11.25ms | 2.89ms |
| update_4to1 | 2.77ms | 6.56ms | 2.16ms | N/A | 21.15ms | 2.32ms | 4.03ms | 1.48ms |
| update_1000to1 | 22μs | 66μs | 20μs | N/A | 234μs | 24μs | 40μs | 25μs |
| update_1to2 | 5.72ms | 12.37ms | 4.06ms | N/A | 42.64ms | 4.92ms | 8.21ms | 2.93ms |
| update_1to4 | 2.52ms | 6.53ms | 2.09ms | N/A | 20.99ms | 2.33ms | 4.04ms | 1.47ms |
| update_1to1000 | 49μs | 168μs | 859μs | N/A | 145μs | 43μs | 149μs | 378μs |
| cellx1000 | 7.30ms | 77.97ms | 10.09ms | N/A | N/A | 9.45ms | 13.04ms | 5.20ms |
| cellx2500 | 21.36ms | 269.32ms | 34.54ms | N/A | N/A | 32.24ms | 37.46ms | 28.51ms |
| cellx5000 | 55.29ms | 591.48ms | 85.02ms | N/A | N/A | 64.90ms | 93.27ms | 72.99ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.63ms | 2.00s | 440.83ms | N/A | 2.27s | 502.15ms | 357.74ms | 248.05ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.10ms | 1.54s | 277.93ms | N/A | 1.50s (partial) | 277.28ms | 243.22ms | 203.43ms |
| 1000x12 - 4 sources - dynamic (large) | 282.38ms | 1.83s | 3.47s | N/A | 2.55s (partial) | 3.74s | 471.08ms | 343.08ms |
| 1000x5 - 25 sources (wide dense) | 412.62ms | 3.54s | 2.59s | N/A | 4.18s | 3.45s | 592.04ms | 510.98ms |
| 5x500 - 3 sources (deep) | 189.37ms | 1.17s | 228.96ms | N/A | 1.36s | 228.31ms | 255.43ms | 203.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.84ms | 1.75s | 445.77ms | N/A | 1.75s (partial) | 483.66ms | 382.09ms | 254.38ms |

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
