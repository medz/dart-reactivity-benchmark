# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.19s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.40s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.70s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.27s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 170.18ms | 2.34s | 200.19ms | 1.40s | 211.98ms | 256.38ms | 154.29ms (fail) |
| broadPropagation | 317.07ms | 4.40s | 467.25ms | 82.62ms (fail) | 462.98ms | 456.40ms | 6.98ms (fail) |
| deepPropagation | 98.30ms | 1.57s | 180.85ms | 1.92s (fail) | 177.64ms | 136.30ms | 146.72ms (fail) |
| diamond | 217.52ms | 2.38s | 281.78ms | 2.52s (fail) | 286.92ms | 320.09ms | 191.81ms (fail) |
| mux | 341.08ms | 1.86s | 394.80ms | 589.75ms (fail) | 411.50ms | 400.73ms | 198.87ms (fail) |
| repeatedObservers | 50.55ms | 232.16ms | 41.35ms | 424.24ms (fail) | 46.12ms | 92.99ms | 52.50ms (fail) |
| triangle | 81.06ms | 773.66ms | 114.89ms | 1.00s (fail) | 108.37ms | 98.03ms | 77.31ms (fail) |
| unstable | 151.94ms | 344.77ms | 74.65ms | 648.78ms (fail) | 77.09ms | 168.09ms | 374.81ms (fail) |
| molBench | 487.40ms | 535.29ms | 488.83ms | 12.01ms | 485.66ms | 502.03ms | 960μs |
| create_signals | 27.50ms | 67.95ms | 5.51ms | 26.96ms | 26.80ms | 82.72ms | 61.60ms |
| comp_0to1 | 9.27ms | 27.95ms | 17.52ms | 15.96ms | 11.94ms | 24.93ms | 55.85ms |
| comp_1to1 | 20.81ms | 30.86ms | 13.51ms | 22.45ms | 27.84ms | 41.77ms | 57.69ms |
| comp_2to1 | 15.55ms | 25.59ms | 17.38ms | 24.59ms | 17.60ms | 8.87ms | 38.47ms |
| comp_4to1 | 4.07ms | 25.30ms | 10.65ms | 3.23ms | 2.02ms | 15.17ms | 16.93ms |
| comp_1000to1 | 4μs | 25μs | 4μs | 6μs | 4μs | 15μs | 44μs |
| comp_1to2 | 12.55ms | 34.72ms | 26.43ms | 15.90ms | 20.24ms | 33.68ms | 48.40ms |
| comp_1to4 | 18.20ms | 16.95ms | 24.95ms | 25.24ms | 10.91ms | 14.79ms | 46.68ms |
| comp_1to8 | 9.91ms | 20.16ms | 7.07ms | 4.95ms | 9.13ms | 18.81ms | 45.69ms |
| comp_1to1000 | 4.39ms | 15.14ms | 6.20ms | 4.02ms | 4.40ms | 14.70ms | 41.62ms |
| update_1to1 | 5.57ms | 25.46ms | 8.35ms | 80.00ms | 10.17ms | 16.86ms | 6.01ms |
| update_2to1 | 2.78ms | 14.56ms | 4.41ms | 41.09ms | 4.57ms | 8.50ms | 3.08ms |
| update_4to1 | 1.41ms | 7.17ms | 2.13ms | 20.03ms | 2.51ms | 4.22ms | 1.55ms |
| update_1000to1 | 15μs | 70μs | 21μs | 171μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.73ms | 13.20ms | 4.17ms | 40.27ms | 4.55ms | 8.49ms | 3.01ms |
| update_1to4 | 1.39ms | 6.85ms | 2.11ms | 19.40ms | 2.56ms | 4.21ms | 1.55ms |
| update_1to1000 | 40μs | 170μs | 159μs | 120μs | 42μs | 144μs | 416μs |
| cellx1000 | 6.96ms | 70.30ms | 9.78ms | N/A | 9.73ms | 10.30ms | 5.55ms |
| cellx2500 | 18.78ms | 257.58ms | 26.18ms | N/A | 32.26ms | 30.43ms | 22.55ms |
| cellx5000 | 46.65ms | 554.02ms | 69.79ms | N/A | 67.08ms | 80.20ms | 69.05ms |
| 10x5 - 2 sources - read 20.0% (simple) | 240.52ms | 2.06s | 449.08ms | 2.16s | 514.74ms | 333.48ms | 241.43ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.00ms | 1.56s | 270.93ms | 1.45s (partial) | 280.91ms | 219.43ms | 196.14ms |
| 1000x12 - 4 sources - dynamic (large) | 343.28ms | 1.97s | 3.72s | 2.47s (partial) | 3.81s | 440.74ms | 345.73ms |
| 1000x5 - 25 sources (wide dense) | 497.56ms | 3.56s | 2.76s | 4.17s | 3.44s | 793.54ms | 511.95ms |
| 5x500 - 3 sources (deep) | 202.97ms | 1.13s | 231.86ms | 1.35s | 224.12ms | 223.68ms | 206.86ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 294.50ms | 1.77s | 463.69ms | 1.73s (partial) | 483.63ms | 334.23ms | 263.17ms |

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
