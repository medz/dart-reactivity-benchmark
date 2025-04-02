# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.23s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.97s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.89s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.37s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.70s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.83ms | 2.33s | 202.41ms | 1.25s | 1.42s | 215.75ms | 272.59ms | 153.36ms (fail) |
| broadPropagation | 358.82ms | 4.26s | 473.23ms | 4.99s | 84.96ms (fail) | 468.08ms | 510.20ms | 6.16ms (fail) |
| deepPropagation | 124.14ms | 1.52s | 179.97ms | 4.00s | 1.95s (fail) | 179.99ms | 168.87ms | 142.64ms (fail) |
| diamond | 244.43ms | 2.43s | 278.18ms | 14.03s (fail) | 2.63s (fail) | 288.44ms | 359.35ms | 181.62ms (fail) |
| mux | 374.40ms | 1.90s | 388.49ms | 1.02s | 560.38ms (fail) | 409.60ms | 436.11ms | 198.16ms (fail) |
| repeatedObservers | 44.90ms | 233.23ms | 38.80ms | 9.74s | 398.17ms (fail) | 46.70ms | 78.63ms | 52.77ms (fail) |
| triangle | 86.33ms | 774.74ms | 97.89ms | 4.52s | 936.65ms (fail) | 105.32ms | 115.44ms | 78.80ms (fail) |
| unstable | 60.29ms | 344.29ms | 70.70ms | 7.64s | 614.11ms (fail) | 73.40ms | 95.92ms | 335.31ms (fail) |
| molBench | 490.96ms | 580.03ms | 491.14ms | 5.90s | 11.77ms | 486.51ms | 492.49ms | 974μs |
| create_signals | 26.56ms | 69.12ms | 4.59ms | 13.34ms | 23.05ms | 25.14ms | 72.13ms | 58.87ms |
| comp_0to1 | 7.88ms | 23.90ms | 19.65ms | 13.68ms | 13.51ms | 11.83ms | 27.49ms | 51.66ms |
| comp_1to1 | 4.12ms | 17.18ms | 14.32ms | 99.56ms | 24.98ms | 17.93ms | 26.80ms | 53.13ms |
| comp_2to1 | 2.26ms | 13.23ms | 16.02ms | 72.37ms | 23.54ms | 10.47ms | 27.14ms | 35.31ms |
| comp_4to1 | 8.62ms | 13.63ms | 8.48ms | 85.23ms | 9.14ms | 8.80ms | 10.96ms | 16.15ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 59.32ms | 4μs | 5μs | 15μs | 41μs |
| comp_1to2 | 10.75ms | 42.38ms | 25.37ms | 66.89ms | 16.28ms | 19.67ms | 35.77ms | 44.40ms |
| comp_1to4 | 15.54ms | 22.46ms | 22.98ms | 99.18ms | 29.80ms | 12.57ms | 21.44ms | 43.98ms |
| comp_1to8 | 4.04ms | 23.24ms | 13.02ms | 116.37ms | 4.99ms | 6.86ms | 22.68ms | 42.80ms |
| comp_1to1000 | 3.12ms | 15.14ms | 5.46ms | 47.90ms | 4.04ms | 4.52ms | 16.63ms | 38.63ms |
| update_1to1 | 11.28ms | 21.93ms | 8.18ms | N/A | 84.51ms | 9.20ms | 17.31ms | 5.73ms |
| update_2to1 | 5.18ms | 10.74ms | 4.08ms | N/A | 42.38ms | 4.55ms | 7.92ms | 7.50ms |
| update_4to1 | 2.81ms | 5.78ms | 2.07ms | N/A | 20.42ms | 2.31ms | 4.09ms | 1.49ms |
| update_1000to1 | 10μs | 59μs | 20μs | N/A | 176μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.64ms | 10.54ms | 4.06ms | N/A | 42.59ms | 4.96ms | 8.95ms | 2.97ms |
| update_1to4 | 1.79ms | 5.25ms | 2.06ms | N/A | 21.17ms | 2.30ms | 4.50ms | 1.51ms |
| update_1to1000 | 38μs | 168μs | 50μs | N/A | 133μs | 43μs | 150μs | 378μs |
| cellx1000 | 7.48ms | 69.47ms | 9.51ms | N/A | N/A | 9.46ms | 11.38ms | 5.13ms |
| cellx2500 | 19.61ms | 233.47ms | 25.26ms | N/A | N/A | 30.67ms | 32.67ms | 26.42ms |
| cellx5000 | 41.89ms | 538.16ms | 63.42ms | N/A | N/A | 56.49ms | 66.51ms | 51.11ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.62ms | 2.07s | 442.58ms | N/A | 2.27s | 506.81ms | 349.98ms | 244.68ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.38ms | 1.59s | 273.80ms | N/A | 1.53s (partial) | 279.18ms | 247.60ms | 204.76ms |
| 1000x12 - 4 sources - dynamic (large) | 283.38ms | 2.04s | 3.52s | N/A | 2.53s (partial) | 3.74s | 464.15ms | 327.72ms |
| 1000x5 - 25 sources (wide dense) | 405.81ms | 3.72s | 2.59s | N/A | 4.26s | 3.41s | 591.58ms | 500.57ms |
| 5x500 - 3 sources (deep) | 188.11ms | 1.19s | 228.51ms | N/A | 1.38s | 226.23ms | 251.77ms | 200.48ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.30ms | 1.77s | 449.29ms | N/A | 1.77s (partial) | 478.09ms | 377.58ms | 256.71ms |

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
