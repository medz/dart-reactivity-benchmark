# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.83s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.22s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.10s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.08s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.69s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.39s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.03s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 180.59ms | 156.56ms | 2.36s | 206.04ms | 1.47s | 211.43ms | 270.94ms | 2.22s | 148.91ms (fail) |
| broadPropagation | 377.17ms | 326.14ms | 4.25s | 469.56ms | 82.81ms (fail) | 460.26ms | 496.24ms | 5.53s | 5.78ms (fail) |
| deepPropagation | 128.87ms | 95.75ms | 1.53s | 180.87ms | 1.91s (fail) | 178.46ms | 169.49ms | 2.01s | 140.19ms (fail) |
| diamond | 238.76ms | 208.56ms | 2.44s | 284.80ms | 2.62s (fail) | 288.89ms | 357.53ms | 3.48s | 179.87ms (fail) |
| mux | 380.34ms | 336.92ms | 1.86s | 385.22ms | 568.14ms (fail) | 405.35ms | 444.34ms | 2.17s | 193.15ms (fail) |
| repeatedObservers | 47.92ms | 50.69ms | 231.22ms | 38.30ms | 385.76ms (fail) | 45.97ms | 78.35ms | 222.64ms | 52.80ms (fail) |
| triangle | 91.38ms | 74.25ms | 774.93ms | 101.19ms | 918.25ms (fail) | 101.47ms | 116.89ms | 1.13s | 77.07ms (fail) |
| unstable | 62.86ms | 70.03ms | 353.40ms | 71.81ms | 618.27ms (fail) | 73.33ms | 95.93ms | 352.43ms | 341.12ms (fail) |
| molBench | 483.97ms | 481.58ms | 580.13ms | 489.37ms | 11.84ms | 487.62ms | 492.83ms | 1.71s | 1.22ms |
| create_signals | 7.41ms | 26.61ms | 85.69ms | 5.57ms | 28.94ms | 26.05ms | 74.67ms | 81.84ms | 62.65ms |
| comp_0to1 | 22.21ms | 9.22ms | 28.13ms | 17.47ms | 15.07ms | 12.08ms | 26.52ms | 33.88ms | 56.67ms |
| comp_1to1 | 13.65ms | 23.97ms | 42.82ms | 11.57ms | 26.35ms | 37.78ms | 42.75ms | 48.91ms | 58.19ms |
| comp_2to1 | 14.36ms | 15.50ms | 35.94ms | 9.90ms | 25.78ms | 21.68ms | 25.40ms | 26.96ms | 42.39ms |
| comp_4to1 | 1.63ms | 3.62ms | 17.74ms | 8.34ms | 3.42ms | 5.15ms | 15.55ms | 32.58ms | 18.47ms |
| comp_1000to1 | 3μs | 5μs | 31μs | 4μs | 6μs | 8μs | 14μs | 2.79ms | 40μs |
| comp_1to2 | 13.78ms | 25.41ms | 34.07ms | 17.14ms | 15.27ms | 22.73ms | 34.34ms | 32.75ms | 44.07ms |
| comp_1to4 | 9.48ms | 15.74ms | 17.43ms | 30.92ms | 38.33ms | 7.61ms | 15.14ms | 30.54ms | 42.73ms |
| comp_1to8 | 3.88ms | 4.83ms | 20.77ms | 9.11ms | 8.12ms | 6.49ms | 21.41ms | 24.70ms | 42.29ms |
| comp_1to1000 | 3.18ms | 3.50ms | 15.02ms | 6.29ms | 4.40ms | 4.47ms | 14.38ms | 19.52ms | 38.02ms |
| update_1to1 | 4.93ms | 5.63ms | 22.07ms | 8.27ms | 83.83ms | 9.30ms | 16.15ms | 42.38ms | 5.73ms |
| update_2to1 | 3.79ms | 2.75ms | 10.73ms | 4.09ms | 42.75ms | 5.83ms | 7.93ms | 20.96ms | 2.90ms |
| update_4to1 | 1.26ms | 1.44ms | 6.05ms | 2.07ms | 20.07ms | 2.33ms | 4.04ms | 10.61ms | 1.45ms |
| update_1000to1 | 12μs | 14μs | 68μs | 22μs | 215μs | 23μs | 40μs | 118μs | 15μs |
| update_1to2 | 2.81ms | 2.80ms | 10.47ms | 4.10ms | 42.01ms | 4.92ms | 8.13ms | 20.87ms | 2.96ms |
| update_1to4 | 1.23ms | 1.43ms | 5.21ms | 2.07ms | 20.77ms | 2.34ms | 4.04ms | 10.63ms | 1.45ms |
| update_1to1000 | 38μs | 46μs | 165μs | 238μs | 148μs | 44μs | 150μs | 206μs | 375μs |
| cellx1000 | 7.45ms | 29.69ms | 93.31ms | 10.33ms | N/A | 9.88ms | 12.91ms | 181.35ms | 5.20ms |
| cellx2500 | 23.62ms | 126.67ms | 287.52ms | 33.24ms | N/A | 36.35ms | 44.92ms | 546.46ms | 27.98ms |
| cellx5000 | 48.48ms | 394.36ms | 605.98ms | 92.97ms | N/A | 76.68ms | 139.53ms | 1.32s | 75.70ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.09ms | 227.90ms | 2.05s | 440.30ms | 2.35s | 500.13ms | 344.07ms | 2.60s (partial) | 238.61ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.31ms | 183.31ms | 1.57s | 275.75ms | 1.59s (partial) | 281.95ms | 251.25ms | 2.35s (partial) | 203.00ms |
| 1000x12 - 4 sources - dynamic (large) | 311.47ms | 350.58ms | 1.88s | 3.57s | 2.72s (partial) | 3.74s | 476.19ms | 4.05s (partial) | 340.17ms |
| 1000x5 - 25 sources (wide dense) | 462.56ms | 495.49ms | 3.54s | 2.63s | 4.48s | 3.31s | 614.91ms | 5.03s (partial) | 500.56ms |
| 5x500 - 3 sources (deep) | 205.47ms | 195.33ms | 1.21s | 236.29ms | 1.39s | 230.40ms | 250.05ms | 1.94s (partial) | 204.83ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.45ms | 277.34ms | 1.73s | 453.22ms | 1.91s (partial) | 479.02ms | 388.28ms | 2.76s (partial) | 258.45ms |

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
