# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.32s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.93s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.44s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.49s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.97s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 189.17ms | 2.34s | 206.02ms | 1.25s | 1.44s | 209.62ms | 277.10ms | 148.85ms (fail) |
| broadPropagation | 354.85ms | 4.35s | 459.31ms | 4.99s | 83.20ms (fail) | 452.52ms | 504.23ms | 6.08ms (fail) |
| deepPropagation | 124.73ms | 1.54s | 179.73ms | 4.00s | 1.99s (fail) | 171.43ms | 180.52ms | 141.34ms (fail) |
| diamond | 234.69ms | 2.41s | 283.17ms | 14.03s (fail) | 2.68s (fail) | 288.23ms | 353.76ms | 183.52ms (fail) |
| mux | 373.33ms | 1.81s | 384.62ms | 1.02s | 570.10ms (fail) | 411.42ms | 450.46ms | 190.36ms (fail) |
| repeatedObservers | 44.72ms | 237.38ms | 38.47ms | 9.74s | 384.82ms (fail) | 45.88ms | 78.69ms | 52.33ms (fail) |
| triangle | 89.60ms | 780.55ms | 99.31ms | 4.52s | 909.33ms (fail) | 104.40ms | 119.48ms | 76.47ms (fail) |
| unstable | 59.97ms | 353.90ms | 69.70ms | 7.64s | 617.31ms (fail) | 75.09ms | 94.73ms | 338.09ms (fail) |
| molBench | 491.45ms | 580.87ms | 492.39ms | 5.90s | 12.06ms | 486.90ms | 493.22ms | 933μs |
| create_signals | 26.18ms | 69.71ms | 4.52ms | 13.34ms | 23.65ms | 24.63ms | 90.14ms | 70.84ms |
| comp_0to1 | 11.23ms | 24.00ms | 17.25ms | 13.68ms | 13.88ms | 11.04ms | 40.27ms | 53.02ms |
| comp_1to1 | 7.59ms | 17.11ms | 11.51ms | 99.56ms | 23.74ms | 27.25ms | 35.93ms | 54.15ms |
| comp_2to1 | 15.44ms | 14.27ms | 9.32ms | 72.37ms | 23.99ms | 15.96ms | 12.01ms | 38.42ms |
| comp_4to1 | 1.60ms | 18.33ms | 8.04ms | 85.23ms | 4.18ms | 1.86ms | 9.10ms | 16.26ms |
| comp_1000to1 | 5μs | 34μs | 4μs | 59.32ms | 3μs | 5μs | 19μs | 41μs |
| comp_1to2 | 9.16ms | 36.00ms | 16.36ms | 66.89ms | 14.16ms | 20.03ms | 46.60ms | 45.05ms |
| comp_1to4 | 8.05ms | 22.57ms | 26.07ms | 99.18ms | 25.61ms | 14.62ms | 22.34ms | 43.76ms |
| comp_1to8 | 7.85ms | 24.74ms | 7.09ms | 116.37ms | 5.15ms | 6.92ms | 26.24ms | 44.01ms |
| comp_1to1000 | 3.58ms | 15.12ms | 7.57ms | 47.90ms | 4.10ms | 4.44ms | 15.52ms | 39.09ms |
| update_1to1 | 10.62ms | 22.83ms | 8.19ms | N/A | 85.79ms | 9.19ms | 16.20ms | 5.72ms |
| update_2to1 | 2.31ms | 12.47ms | 4.06ms | N/A | 43.33ms | 4.57ms | 8.57ms | 2.91ms |
| update_4to1 | 2.67ms | 5.85ms | 2.15ms | N/A | 21.05ms | 2.30ms | 4.08ms | 1.51ms |
| update_1000to1 | 17μs | 59μs | 28μs | N/A | 195μs | 23μs | 40μs | 15μs |
| update_1to2 | 4.40ms | 11.53ms | 4.06ms | N/A | 45.37ms | 4.92ms | 7.88ms | 2.98ms |
| update_1to4 | 1.30ms | 5.72ms | 2.08ms | N/A | 20.73ms | 2.28ms | 4.04ms | 1.52ms |
| update_1to1000 | 60μs | 168μs | 178μs | N/A | 145μs | 43μs | 150μs | 386μs |
| cellx1000 | 7.18ms | 73.57ms | 9.63ms | N/A | N/A | 9.57ms | 11.37ms | 5.27ms |
| cellx2500 | 19.23ms | 243.01ms | 26.49ms | N/A | N/A | 32.65ms | 30.98ms | 29.59ms |
| cellx5000 | 41.75ms | 563.60ms | 67.80ms | N/A | N/A | 65.90ms | 87.59ms | 55.90ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.07ms | 2.04s | 435.97ms | N/A | 2.36s | 505.72ms | 347.58ms | 252.01ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.66ms | 1.55s | 270.98ms | N/A | 1.53s (partial) | 276.69ms | 242.71ms | 204.16ms |
| 1000x12 - 4 sources - dynamic (large) | 283.39ms | 1.88s | 3.51s | N/A | 2.57s (partial) | 3.91s | 464.72ms | 339.45ms |
| 1000x5 - 25 sources (wide dense) | 400.51ms | 3.55s | 2.58s | N/A | 4.26s | 3.53s | 603.01ms | 510.76ms |
| 5x500 - 3 sources (deep) | 189.17ms | 1.16s | 234.30ms | N/A | 1.42s | 226.54ms | 257.26ms | 203.47ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 255.68ms | 1.72s | 447.91ms | N/A | 1.80s (partial) | 480.37ms | 381.18ms | 259.05ms |

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
