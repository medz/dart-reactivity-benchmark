# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.12s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.48s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 2.98s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 5.43s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 7.18s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 14.82s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 1.88s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 12.29s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 20.32s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 83.17ms | 92.44ms | 1.21s | 106.57ms | 897.05ms | 100.50ms | 148.86ms | 1.10s | 94.28ms (fail) |
| broadPropagation | 174.82ms | 163.25ms | 2.15s | 227.00ms | 36.06ms (fail) | 225.51ms | 244.71ms | 2.64s | 3.08ms (fail) |
| deepPropagation | 54.01ms | 52.81ms | 781.60ms | 103.17ms | 1.07s (fail) | 101.29ms | 89.21ms | 1.00s | 97.03ms (fail) |
| diamond | 120.41ms | 119.17ms | 1.22s | 153.54ms | 1.10s (fail) | 155.70ms | 182.78ms | 1.72s | 93.46ms (fail) |
| mux | 182.04ms | 176.62ms | 953.12ms | 201.86ms | 298.23ms (fail) | 204.62ms | 238.72ms | 1.03s | 101.83ms (fail) |
| repeatedObservers | 24.38ms | 25.09ms | 114.07ms | 21.91ms | 156.49ms (fail) | 25.16ms | 45.46ms | 107.39ms | 25.69ms (fail) |
| triangle | 49.43ms | 50.54ms | 405.69ms | 59.53ms | 399.96ms (fail) | 57.77ms | 66.38ms | 556.60ms | 45.43ms (fail) |
| unstable | 37.79ms | 39.63ms | 176.68ms | 37.55ms | 279.52ms (fail) | 43.56ms | 53.66ms | 167.53ms | 193.39ms (fail) |
| molBench | 285.04ms | 294.56ms | 344.62ms | 297.80ms | 5.46ms | 294.52ms | 299.41ms | 1.02s | 433μs |
| create_signals | 3.29ms | 13.07ms | 13.81ms | 5.56ms | 14.31ms | 12.96ms | 28.91ms | 24.64ms | 29.59ms |
| comp_0to1 | 11.76ms | 5.58ms | 7.61ms | 8.91ms | 8.03ms | 4.77ms | 11.81ms | 17.24ms | 25.45ms |
| comp_1to1 | 7.36ms | 13.26ms | 24.75ms | 3.32ms | 10.69ms | 7.10ms | 21.47ms | 15.45ms | 27.00ms |
| comp_2to1 | 6.72ms | 9.04ms | 9.11ms | 5.93ms | 14.13ms | 3.45ms | 5.44ms | 16.98ms | 17.66ms |
| comp_4to1 | 757μs | 2.14ms | 11.56ms | 8.65ms | 4.20ms | 3.81ms | 4.11ms | 9.55ms | 9.04ms |
| comp_1000to1 | 1μs | 2μs | 8μs | 2μs | 1μs | 1μs | 8μs | 2.22ms | 21μs |
| comp_1to2 | 4.95ms | 5.00ms | 18.08ms | 7.24ms | 6.62ms | 9.16ms | 15.73ms | 15.77ms | 23.35ms |
| comp_1to4 | 2.31ms | 7.66ms | 9.04ms | 7.37ms | 11.09ms | 5.35ms | 8.94ms | 15.25ms | 22.53ms |
| comp_1to8 | 3.40ms | 2.39ms | 11.37ms | 2.39ms | 2.11ms | 6.68ms | 11.61ms | 12.51ms | 22.43ms |
| comp_1to1000 | 1.77ms | 2.02ms | 7.68ms | 1.77ms | 2.06ms | 2.31ms | 7.33ms | 9.39ms | 20.24ms |
| update_1to1 | 2.38ms | 2.78ms | 10.30ms | 4.14ms | 41.94ms | 4.27ms | 7.08ms | 19.43ms | 2.76ms |
| update_2to1 | 1.12ms | 1.43ms | 5.16ms | 1.99ms | 22.06ms | 2.14ms | 3.61ms | 9.54ms | 1.53ms |
| update_4to1 | 575μs | 692μs | 2.66ms | 1.00ms | 11.06ms | 1.10ms | 1.74ms | 4.89ms | 692μs |
| update_1000to1 | 5μs | 6μs | 39μs | 9μs | 109μs | 10μs | 17μs | 54μs | 7μs |
| update_1to2 | 1.13ms | 1.35ms | 5.16ms | 2.13ms | 21.43ms | 2.13ms | 3.52ms | 9.55ms | 1.38ms |
| update_1to4 | 589μs | 695μs | 2.68ms | 990μs | 10.66ms | 1.09ms | 1.74ms | 4.88ms | 772μs |
| update_1to1000 | 16μs | 18μs | 89μs | 21μs | 66μs | 28μs | 74μs | 104μs | 220μs |
| cellx1000 | 3.44ms | 15.54ms | 38.98ms | 4.93ms | N/A | 4.73ms | 5.83ms | 79.71ms | 2.91ms |
| cellx2500 | 10.99ms | 66.34ms | 125.58ms | 14.92ms | N/A | 15.40ms | 17.43ms | 228.69ms | 15.44ms |
| cellx5000 | 21.13ms | 219.70ms | 267.60ms | 48.47ms | N/A | 37.80ms | 47.88ms | 528.31ms | 30.09ms |
| 10x5 - 2 sources - read 20.0% (simple) | 157.66ms | 158.66ms | 1.10s | 242.59ms | 1.29s | 255.67ms | 227.26ms | 1.43s (partial) | 151.75ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 105.76ms | 109.77ms | 962.17ms | 126.83ms | 927.55ms (partial) | 128.19ms | 140.50ms | 1.27s (partial) | 108.30ms |
| 1000x12 - 4 sources - dynamic (large) | 194.80ms | 204.81ms | 989.81ms | 1.94s | 1.34s (partial) | 2.72s | 278.63ms | 2.08s (partial) | 195.57ms |
| 1000x5 - 25 sources (wide dense) | 285.46ms | 344.38ms | 2.21s | 1.44s | 2.51s | 2.36s | 374.79ms | 2.68s (partial) | 258.18ms |
| 5x500 - 3 sources (deep) | 113.85ms | 106.56ms | 619.71ms | 116.20ms | 738.80ms | 111.64ms | 142.74ms | 1.02s (partial) | 113.17ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 164.63ms | 170.19ms | 1.00s | 224.84ms | 1.08s (partial) | 272.33ms | 240.42ms | 1.45s (partial) | 148.83ms |

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
