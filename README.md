# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.72s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.04s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.23s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.62s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.80s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 190.09ms | 2.29s | 206.24ms | 1.25s | 1.42s | 208.06ms | 277.09ms | 156.87ms (fail) |
| broadPropagation | 360.81ms | 4.28s | 465.68ms | 4.99s | 82.57ms (fail) | 454.31ms | 506.14ms | 6.15ms (fail) |
| deepPropagation | 126.03ms | 1.51s | 179.86ms | 4.00s | 1.93s (fail) | 179.16ms | 165.96ms | 142.42ms (fail) |
| diamond | 234.89ms | 2.39s | 285.80ms | 14.03s (fail) | 2.71s (fail) | 290.32ms | 363.22ms | 184.46ms (fail) |
| mux | 375.71ms | 1.83s | 385.63ms | 1.02s | 576.88ms (fail) | 406.01ms | 443.05ms | 194.57ms (fail) |
| repeatedObservers | 44.77ms | 226.07ms | 38.12ms | 9.74s | 390.40ms (fail) | 48.70ms | 78.71ms | 53.92ms (fail) |
| triangle | 84.11ms | 771.87ms | 100.13ms | 4.52s | 985.85ms (fail) | 103.16ms | 118.70ms | 77.59ms (fail) |
| unstable | 60.18ms | 345.86ms | 72.73ms | 7.64s | 620.99ms (fail) | 73.92ms | 93.57ms | 336.14ms (fail) |
| molBench | 491.68ms | 577.57ms | 490.60ms | 5.90s | 11.88ms | 489.92ms | 493.28ms | 1.08ms |
| create_signals | 27.85ms | 76.09ms | 4.59ms | 13.34ms | 23.19ms | 25.37ms | 73.15ms | 71.83ms |
| comp_0to1 | 7.01ms | 20.89ms | 17.55ms | 13.68ms | 13.63ms | 12.76ms | 27.85ms | 53.71ms |
| comp_1to1 | 4.13ms | 37.31ms | 11.37ms | 99.56ms | 23.15ms | 29.61ms | 46.75ms | 58.61ms |
| comp_2to1 | 2.26ms | 35.12ms | 21.66ms | 72.37ms | 24.01ms | 16.41ms | 42.20ms | 39.99ms |
| comp_4to1 | 8.64ms | 16.69ms | 8.84ms | 85.23ms | 5.50ms | 4.24ms | 4.70ms | 17.37ms |
| comp_1000to1 | 4μs | 20μs | 6μs | 59.32ms | 3μs | 5μs | 19μs | 41μs |
| comp_1to2 | 15.89ms | 34.55ms | 17.42ms | 66.89ms | 11.82ms | 20.48ms | 24.43ms | 45.25ms |
| comp_1to4 | 5.46ms | 22.26ms | 26.31ms | 99.18ms | 25.32ms | 18.91ms | 26.19ms | 43.60ms |
| comp_1to8 | 4.46ms | 23.12ms | 5.86ms | 116.37ms | 4.79ms | 9.68ms | 24.54ms | 42.30ms |
| comp_1to1000 | 3.67ms | 14.78ms | 6.28ms | 47.90ms | 4.47ms | 4.50ms | 14.89ms | 37.77ms |
| update_1to1 | 11.32ms | 24.53ms | 8.19ms | N/A | 91.57ms | 9.26ms | 16.18ms | 5.73ms |
| update_2to1 | 5.35ms | 11.73ms | 4.09ms | N/A | 42.26ms | 4.57ms | 7.94ms | 2.87ms |
| update_4to1 | 2.75ms | 6.38ms | 2.12ms | N/A | 20.52ms | 2.49ms | 4.13ms | 1.44ms |
| update_1000to1 | 18μs | 57μs | 20μs | N/A | 198μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.61ms | 12.22ms | 4.07ms | N/A | 42.24ms | 4.90ms | 8.17ms | 2.94ms |
| update_1to4 | 2.44ms | 6.09ms | 2.09ms | N/A | 20.75ms | 2.25ms | 4.02ms | 1.44ms |
| update_1to1000 | 51μs | 162μs | 896μs | N/A | 145μs | 44μs | 151μs | 367μs |
| cellx1000 | 9.23ms | 71.90ms | 10.35ms | N/A | N/A | 9.84ms | 12.05ms | 5.27ms |
| cellx2500 | 21.30ms | 279.40ms | 27.50ms | N/A | N/A | 32.29ms | 33.58ms | 28.64ms |
| cellx5000 | 48.76ms | 584.34ms | 80.42ms | N/A | N/A | 69.55ms | 85.79ms | 73.81ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.11ms | 2.03s | 448.66ms | N/A | 2.24s | 519.31ms | 356.27ms | 245.99ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.72ms | 1.60s | 276.17ms | N/A | 1.51s (partial) | 285.35ms | 247.90ms | 211.98ms |
| 1000x12 - 4 sources - dynamic (large) | 282.23ms | 1.94s | 3.54s | N/A | 2.55s (partial) | 3.76s | 468.31ms | 357.19ms |
| 1000x5 - 25 sources (wide dense) | 417.48ms | 3.61s | 2.60s | N/A | 4.22s | 3.43s | 596.50ms | 519.26ms |
| 5x500 - 3 sources (deep) | 193.09ms | 1.18s | 232.06ms | N/A | 1.41s | 230.34ms | 258.64ms | 205.80ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.74ms | 1.76s | 451.22ms | N/A | 1.78s (partial) | 473.12ms | 388.93ms | 262.87ms |

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
