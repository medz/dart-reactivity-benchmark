# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.25s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.26s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.52s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.24s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.60ms | 2.37s | 204.48ms | 1.25s | 1.37s | 214.35ms | 269.51ms | 156.09ms (fail) |
| broadPropagation | 351.94ms | 4.24s | 460.91ms | 4.99s | 81.37ms (fail) | 455.57ms | 504.02ms | 6.11ms (fail) |
| deepPropagation | 122.14ms | 1.53s | 183.42ms | 4.00s | 1.92s (fail) | 175.75ms | 170.68ms | 140.90ms (fail) |
| diamond | 238.62ms | 2.45s | 281.55ms | 14.03s (fail) | 2.68s (fail) | 289.69ms | 365.27ms | 186.02ms (fail) |
| mux | 369.35ms | 1.84s | 388.20ms | 1.02s | 569.58ms (fail) | 408.92ms | 435.51ms | 187.91ms (fail) |
| repeatedObservers | 44.88ms | 230.13ms | 39.60ms | 9.74s | 383.57ms (fail) | 46.68ms | 78.17ms | 52.26ms (fail) |
| triangle | 87.77ms | 781.21ms | 99.03ms | 4.52s | 966.77ms (fail) | 102.42ms | 116.60ms | 76.77ms (fail) |
| unstable | 60.92ms | 348.04ms | 70.47ms | 7.64s | 614.33ms (fail) | 74.84ms | 93.56ms | 342.61ms (fail) |
| molBench | 492.44ms | 579.76ms | 490.54ms | 5.90s | 11.42ms | 488.30ms | 493.59ms | 1.14ms |
| create_signals | 25.34ms | 71.37ms | 4.91ms | 13.34ms | 22.85ms | 24.42ms | 71.13ms | 58.29ms |
| comp_0to1 | 7.89ms | 23.64ms | 17.84ms | 13.68ms | 13.24ms | 11.41ms | 25.54ms | 51.84ms |
| comp_1to1 | 4.09ms | 29.65ms | 14.44ms | 99.56ms | 22.34ms | 27.08ms | 47.02ms | 52.65ms |
| comp_2to1 | 2.19ms | 8.52ms | 21.29ms | 72.37ms | 23.21ms | 16.77ms | 35.38ms | 35.47ms |
| comp_4to1 | 10.70ms | 25.05ms | 13.55ms | 85.23ms | 6.47ms | 9.16ms | 18.27ms | 16.03ms |
| comp_1000to1 | 3μs | 15μs | 8μs | 59.32ms | 3μs | 5μs | 16μs | 42μs |
| comp_1to2 | 11.58ms | 30.08ms | 21.73ms | 66.89ms | 12.96ms | 20.30ms | 36.73ms | 43.97ms |
| comp_1to4 | 16.77ms | 29.26ms | 38.40ms | 99.18ms | 23.29ms | 12.86ms | 20.06ms | 43.54ms |
| comp_1to8 | 3.99ms | 23.47ms | 8.03ms | 116.37ms | 4.93ms | 6.71ms | 22.61ms | 43.75ms |
| comp_1to1000 | 3.29ms | 15.01ms | 6.81ms | 47.90ms | 4.13ms | 5.36ms | 15.19ms | 37.75ms |
| update_1to1 | 11.34ms | 22.08ms | 8.19ms | N/A | 84.09ms | 9.24ms | 16.02ms | 5.73ms |
| update_2to1 | 5.08ms | 10.61ms | 4.05ms | N/A | 43.14ms | 4.54ms | 7.93ms | 2.90ms |
| update_4to1 | 2.79ms | 6.95ms | 2.23ms | N/A | 20.31ms | 2.29ms | 4.04ms | 1.47ms |
| update_1000to1 | 27μs | 59μs | 20μs | N/A | 174μs | 22μs | 41μs | 15μs |
| update_1to2 | 5.64ms | 10.63ms | 4.14ms | N/A | 41.76ms | 4.96ms | 8.08ms | 2.94ms |
| update_1to4 | 2.50ms | 5.24ms | 2.04ms | N/A | 20.99ms | 2.29ms | 4.05ms | 1.48ms |
| update_1to1000 | 42μs | 178μs | 686μs | N/A | 145μs | 43μs | 150μs | 371μs |
| cellx1000 | 7.16ms | 66.68ms | 9.66ms | N/A | N/A | 9.61ms | 11.07ms | 5.00ms |
| cellx2500 | 18.85ms | 227.12ms | 25.25ms | N/A | N/A | 31.58ms | 30.84ms | 22.45ms |
| cellx5000 | 42.13ms | 524.25ms | 64.49ms | N/A | N/A | 60.43ms | 64.88ms | 74.91ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.93ms | 2.04s | 439.74ms | N/A | 2.20s | 495.38ms | 350.74ms | 239.38ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.14ms | 1.54s | 275.26ms | N/A | 1.47s (partial) | 289.00ms | 245.42ms | 201.78ms |
| 1000x12 - 4 sources - dynamic (large) | 277.53ms | 1.87s | 3.52s | N/A | 2.43s (partial) | 3.82s | 463.23ms | 333.41ms |
| 1000x5 - 25 sources (wide dense) | 411.50ms | 3.66s | 2.62s | N/A | 4.14s | 3.43s | 587.46ms | 502.27ms |
| 5x500 - 3 sources (deep) | 188.49ms | 1.15s | 230.75ms | N/A | 1.35s | 224.60ms | 256.36ms | 207.31ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.03ms | 1.76s | 451.23ms | N/A | 1.72s (partial) | 487.72ms | 378.62ms | 255.42ms |

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
