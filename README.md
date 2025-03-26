# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.32s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.96s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.24s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.65s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 184.88ms | 2.33s | 205.10ms | 1.25s | 1.41s | 208.22ms | 273.45ms | 163.68ms (fail) |
| broadPropagation | 353.00ms | 4.25s | 455.54ms | 4.99s | 82.54ms (fail) | 466.53ms | 501.44ms | 6.13ms (fail) |
| deepPropagation | 120.35ms | 1.52s | 182.72ms | 4.00s | 1.93s (fail) | 177.29ms | 175.01ms | 142.07ms (fail) |
| diamond | 235.61ms | 2.40s | 277.43ms | 14.03s (fail) | 2.71s (fail) | 286.72ms | 350.52ms | 196.92ms (fail) |
| mux | 374.71ms | 1.86s | 386.16ms | 1.02s | 567.48ms (fail) | 413.00ms | 436.85ms | 193.57ms (fail) |
| repeatedObservers | 45.63ms | 223.91ms | 38.30ms | 9.74s | 386.22ms (fail) | 46.87ms | 80.15ms | 52.06ms (fail) |
| triangle | 85.88ms | 778.83ms | 98.26ms | 4.52s | 928.26ms (fail) | 102.27ms | 118.53ms | 80.68ms (fail) |
| unstable | 60.98ms | 346.64ms | 71.82ms | 7.64s | 606.81ms (fail) | 73.81ms | 93.88ms | 335.81ms (fail) |
| molBench | 491.85ms | 578.34ms | 490.45ms | 5.90s | 12.18ms | 489.11ms | 493.92ms | 1.01ms |
| create_signals | 25.91ms | 51.26ms | 4.52ms | 13.34ms | 23.17ms | 24.39ms | 93.78ms | 58.04ms |
| comp_0to1 | 11.16ms | 18.74ms | 17.55ms | 13.68ms | 13.58ms | 11.44ms | 37.35ms | 57.58ms |
| comp_1to1 | 10.92ms | 27.45ms | 12.50ms | 99.56ms | 22.84ms | 26.46ms | 48.55ms | 53.81ms |
| comp_2to1 | 6.51ms | 8.75ms | 18.35ms | 72.37ms | 27.78ms | 9.26ms | 47.75ms | 36.70ms |
| comp_4to1 | 14.35ms | 24.60ms | 12.90ms | 85.23ms | 10.43ms | 2.00ms | 17.66ms | 16.40ms |
| comp_1000to1 | 5μs | 15μs | 5μs | 59.32ms | 5μs | 5μs | 15μs | 43μs |
| comp_1to2 | 16.44ms | 30.22ms | 19.61ms | 66.89ms | 11.44ms | 20.32ms | 30.09ms | 45.11ms |
| comp_1to4 | 10.64ms | 23.73ms | 30.37ms | 99.18ms | 24.05ms | 12.62ms | 21.19ms | 44.06ms |
| comp_1to8 | 9.10ms | 22.34ms | 5.54ms | 116.37ms | 5.01ms | 8.89ms | 23.50ms | 43.30ms |
| comp_1to1000 | 3.16ms | 14.73ms | 6.20ms | 47.90ms | 4.45ms | 4.47ms | 15.26ms | 38.70ms |
| update_1to1 | 11.31ms | 22.94ms | 8.18ms | N/A | 87.50ms | 9.27ms | 16.16ms | 5.73ms |
| update_2to1 | 5.00ms | 11.31ms | 4.06ms | N/A | 44.35ms | 5.42ms | 7.96ms | 2.88ms |
| update_4to1 | 2.80ms | 6.14ms | 2.08ms | N/A | 21.55ms | 2.31ms | 4.06ms | 1.44ms |
| update_1000to1 | 10μs | 65μs | 20μs | N/A | 183μs | 23μs | 40μs | 15μs |
| update_1to2 | 3.96ms | 11.14ms | 4.20ms | N/A | 44.97ms | 4.92ms | 8.06ms | 2.94ms |
| update_1to4 | 2.44ms | 6.61ms | 2.02ms | N/A | 21.74ms | 2.31ms | 4.06ms | 1.43ms |
| update_1to1000 | 48μs | 169μs | 852μs | N/A | 97μs | 44μs | 153μs | 382μs |
| cellx1000 | 7.15ms | 72.30ms | 9.45ms | N/A | N/A | 9.53ms | 11.92ms | 5.19ms |
| cellx2500 | 19.47ms | 237.22ms | 25.31ms | N/A | N/A | 31.16ms | 31.04ms | 25.93ms |
| cellx5000 | 41.25ms | 544.86ms | 67.02ms | N/A | N/A | 63.69ms | 67.64ms | 77.97ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.62ms | 2.03s | 439.39ms | N/A | 2.30s | 503.26ms | 351.74ms | 244.60ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.64ms | 1.53s | 282.02ms | N/A | 1.51s (partial) | 277.37ms | 248.98ms | 200.88ms |
| 1000x12 - 4 sources - dynamic (large) | 282.71ms | 1.93s | 3.49s | N/A | 2.53s (partial) | 3.76s | 462.72ms | 352.79ms |
| 1000x5 - 25 sources (wide dense) | 402.63ms | 3.49s | 2.60s | N/A | 4.20s | 3.57s | 601.45ms | 485.88ms |
| 5x500 - 3 sources (deep) | 191.28ms | 1.15s | 236.52ms | N/A | 1.34s | 228.69ms | 252.24ms | 203.36ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.08ms | 1.68s | 452.94ms | N/A | 1.76s (partial) | 475.00ms | 391.86ms | 254.27ms |

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
