# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.76s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.26s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.01s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.54s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.91s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.68s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 196.03ms | 2.39s | 205.68ms | 1.25s | 1.44s | 211.31ms | 272.57ms | 154.48ms (fail) |
| broadPropagation | 363.10ms | 4.28s | 469.30ms | 4.99s | 81.20ms (fail) | 456.66ms | 519.87ms | 5.97ms (fail) |
| deepPropagation | 123.69ms | 1.53s | 181.05ms | 4.00s | 1.97s (fail) | 180.67ms | 171.45ms | 141.68ms (fail) |
| diamond | 235.81ms | 2.42s | 295.61ms | 14.03s (fail) | 2.72s (fail) | 293.18ms | 356.94ms | 193.59ms (fail) |
| mux | 375.87ms | 1.86s | 385.98ms | 1.02s | 567.05ms (fail) | 405.81ms | 436.98ms | 193.39ms (fail) |
| repeatedObservers | 44.93ms | 228.41ms | 38.88ms | 9.74s | 382.64ms (fail) | 46.57ms | 78.33ms | 52.65ms (fail) |
| triangle | 86.17ms | 791.04ms | 99.60ms | 4.52s | 936.29ms (fail) | 102.34ms | 117.00ms | 78.60ms (fail) |
| unstable | 62.82ms | 352.70ms | 70.56ms | 7.64s | 611.60ms (fail) | 74.59ms | 94.31ms | 390.44ms (fail) |
| molBench | 492.51ms | 584.98ms | 492.19ms | 5.90s | 12.76ms | 488.08ms | 492.17ms | 1.20ms |
| create_signals | 26.56ms | 51.78ms | 4.62ms | 13.34ms | 23.49ms | 25.50ms | 76.69ms | 69.15ms |
| comp_0to1 | 8.86ms | 14.90ms | 17.39ms | 13.68ms | 13.96ms | 12.17ms | 28.84ms | 57.24ms |
| comp_1to1 | 9.46ms | 38.56ms | 15.65ms | 99.56ms | 22.88ms | 26.68ms | 30.47ms | 60.90ms |
| comp_2to1 | 2.35ms | 33.41ms | 20.20ms | 72.37ms | 23.66ms | 9.19ms | 31.74ms | 44.52ms |
| comp_4to1 | 10.66ms | 25.05ms | 15.24ms | 85.23ms | 6.67ms | 1.89ms | 4.52ms | 16.28ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 59.32ms | 5μs | 5μs | 59μs | 42μs |
| comp_1to2 | 12.59ms | 42.58ms | 15.31ms | 66.89ms | 15.91ms | 20.37ms | 37.74ms | 44.91ms |
| comp_1to4 | 6.86ms | 19.07ms | 20.89ms | 99.18ms | 33.34ms | 12.14ms | 27.55ms | 43.88ms |
| comp_1to8 | 6.14ms | 24.39ms | 8.28ms | 116.37ms | 4.90ms | 8.89ms | 19.40ms | 43.16ms |
| comp_1to1000 | 3.60ms | 15.13ms | 7.53ms | 47.90ms | 3.97ms | 4.56ms | 15.13ms | 38.50ms |
| update_1to1 | 11.26ms | 21.81ms | 8.21ms | N/A | 85.40ms | 9.28ms | 16.17ms | 5.74ms |
| update_2to1 | 4.96ms | 11.62ms | 4.16ms | N/A | 42.48ms | 4.57ms | 7.94ms | 3.42ms |
| update_4to1 | 2.72ms | 6.27ms | 2.07ms | N/A | 20.66ms | 2.31ms | 4.05ms | 1.44ms |
| update_1000to1 | 16μs | 62μs | 20μs | N/A | 243μs | 23μs | 44μs | 15μs |
| update_1to2 | 5.61ms | 12.16ms | 4.06ms | N/A | 43.81ms | 4.89ms | 8.08ms | 2.94ms |
| update_1to4 | 2.65ms | 5.21ms | 2.05ms | N/A | 21.69ms | 2.31ms | 4.05ms | 1.44ms |
| update_1to1000 | 48μs | 169μs | 1.57ms | N/A | 152μs | 52μs | 154μs | 391μs |
| cellx1000 | 7.57ms | 76.39ms | 9.76ms | N/A | N/A | 9.67ms | 11.14ms | 5.16ms |
| cellx2500 | 20.29ms | 277.11ms | 24.99ms | N/A | N/A | 31.56ms | 30.31ms | 25.36ms |
| cellx5000 | 44.80ms | 559.30ms | 66.03ms | N/A | N/A | 66.47ms | 70.59ms | 68.72ms |
| 10x5 - 2 sources - read 20.0% (simple) | 245.42ms | 2.02s | 449.48ms | N/A | 2.27s | 509.47ms | 359.22ms | 244.21ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 184.21ms | 1.57s | 272.41ms | N/A | 1.48s (partial) | 284.50ms | 248.57ms | 199.08ms |
| 1000x12 - 4 sources - dynamic (large) | 286.63ms | 1.99s | 3.52s | N/A | 2.51s (partial) | 4.05s | 459.71ms | 342.60ms |
| 1000x5 - 25 sources (wide dense) | 419.90ms | 3.72s | 2.62s | N/A | 4.16s | 3.45s | 594.89ms | 496.71ms |
| 5x500 - 3 sources (deep) | 191.70ms | 1.16s | 229.34ms | N/A | 1.42s | 230.44ms | 251.88ms | 204.56ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.06ms | 1.77s | 443.39ms | N/A | 1.77s (partial) | 494.90ms | 378.05ms | 259.80ms |

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
