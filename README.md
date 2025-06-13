# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.44s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.33s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.82s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.94s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.23s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 173.65ms | 160.70ms | 2.32s | 200.03ms | 1.34s | 209.52ms | 278.04ms | 2.13s | 161.97ms (fail) |
| broadPropagation | 372.00ms | 315.36ms | 4.39s | 447.41ms | 79.83ms (fail) | 458.26ms | 515.02ms | 5.38s | 5.88ms (fail) |
| deepPropagation | 123.49ms | 97.91ms | 1.54s | 176.59ms | 1.90s (fail) | 172.73ms | 168.25ms | 1.99s | 141.85ms (fail) |
| diamond | 235.28ms | 211.23ms | 2.43s | 282.06ms | 2.54s (fail) | 279.27ms | 351.64ms | 3.42s | 183.71ms (fail) |
| mux | 383.66ms | 352.05ms | 1.86s | 406.01ms | 550.13ms (fail) | 410.18ms | 448.93ms | 1.97s | 192.71ms (fail) |
| repeatedObservers | 47.24ms | 50.32ms | 235.86ms | 40.13ms | 374.63ms (fail) | 44.78ms | 81.85ms | 229.07ms | 53.38ms (fail) |
| triangle | 87.41ms | 79.27ms | 752.35ms | 99.21ms | 919.73ms (fail) | 102.36ms | 118.66ms | 1.10s | 76.37ms (fail) |
| unstable | 60.48ms | 69.66ms | 354.96ms | 70.61ms | 616.72ms (fail) | 79.25ms | 97.83ms | 342.08ms | 336.40ms (fail) |
| molBench | 492.96ms | 485.76ms | 570.86ms | 489.53ms | 11.51ms | 486.25ms | 494.95ms | 1.71s | 951μs |
| create_signals | 7.91ms | 25.01ms | 70.87ms | 5.36ms | 27.91ms | 26.91ms | 56.40ms | 72.74ms | 69.37ms |
| comp_0to1 | 21.40ms | 13.09ms | 34.29ms | 17.57ms | 13.62ms | 11.96ms | 28.19ms | 22.39ms | 57.29ms |
| comp_1to1 | 19.37ms | 18.98ms | 43.01ms | 13.49ms | 21.50ms | 28.68ms | 35.94ms | 48.88ms | 61.48ms |
| comp_2to1 | 20.49ms | 15.86ms | 24.94ms | 10.72ms | 35.39ms | 11.88ms | 38.77ms | 26.47ms | 36.78ms |
| comp_4to1 | 1.68ms | 3.30ms | 25.02ms | 8.58ms | 10.01ms | 1.80ms | 15.80ms | 23.53ms | 16.78ms |
| comp_1000to1 | 4μs | 4μs | 17μs | 4μs | 4μs | 5μs | 18μs | 2.81ms | 41μs |
| comp_1to2 | 9.97ms | 15.17ms | 37.00ms | 15.06ms | 10.94ms | 15.99ms | 34.09ms | 20.87ms | 52.55ms |
| comp_1to4 | 4.57ms | 14.37ms | 18.21ms | 28.23ms | 21.22ms | 9.46ms | 17.51ms | 28.14ms | 47.52ms |
| comp_1to8 | 6.87ms | 5.89ms | 21.87ms | 8.03ms | 5.38ms | 9.08ms | 22.96ms | 21.14ms | 43.39ms |
| comp_1to1000 | 3.67ms | 10.41ms | 15.82ms | 5.08ms | 4.57ms | 7.13ms | 16.78ms | 17.39ms | 38.63ms |
| update_1to1 | 4.53ms | 5.60ms | 23.78ms | 8.69ms | 84.64ms | 9.11ms | 15.93ms | 43.41ms | 11.52ms |
| update_2to1 | 2.35ms | 2.85ms | 11.66ms | 4.25ms | 42.10ms | 4.63ms | 7.88ms | 21.61ms | 6.11ms |
| update_4to1 | 1.20ms | 1.56ms | 6.27ms | 2.16ms | 21.01ms | 2.53ms | 4.04ms | 10.96ms | 3.28ms |
| update_1000to1 | 17μs | 26μs | 70μs | 21μs | 178μs | 22μs | 41μs | 117μs | 14μs |
| update_1to2 | 2.37ms | 2.80ms | 10.85ms | 4.59ms | 42.27ms | 4.49ms | 8.01ms | 21.21ms | 6.46ms |
| update_1to4 | 1.24ms | 1.43ms | 7.16ms | 2.15ms | 20.60ms | 2.28ms | 4.01ms | 10.86ms | 3.23ms |
| update_1to1000 | 48μs | 51μs | 174μs | 167μs | 96μs | 43μs | 169μs | 222μs | 405μs |
| cellx1000 | 7.52ms | 31.18ms | 85.87ms | 9.88ms | N/A | 9.96ms | 15.16ms | 164.42ms | 5.42ms |
| cellx2500 | 27.29ms | 136.57ms | 282.46ms | 31.70ms | N/A | 36.01ms | 49.41ms | 514.97ms | 29.73ms |
| cellx5000 | 64.26ms | 428.15ms | 619.16ms | 103.66ms | N/A | 78.39ms | 113.83ms | 1.21s | 83.76ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.79ms | 236.28ms | 2.01s | 438.78ms | 2.13s | 526.30ms | 366.64ms | 2.59s (partial) | 237.29ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.06ms | 183.76ms | 1.58s | 269.21ms | 1.43s (partial) | 279.75ms | 246.75ms | 2.30s (partial) | 198.29ms |
| 1000x12 - 4 sources - dynamic (large) | 308.08ms | 365.85ms | 1.98s | 3.71s | 2.48s (partial) | 3.74s | 472.10ms | 4.02s (partial) | 346.97ms |
| 1000x5 - 25 sources (wide dense) | 458.75ms | 624.10ms | 3.55s | 2.74s | 4.07s | 3.42s | 593.85ms | 5.06s (partial) | 500.93ms |
| 5x500 - 3 sources (deep) | 201.67ms | 193.45ms | 1.18s | 227.13ms | 1.39s | 223.47ms | 253.22ms | 1.98s (partial) | 206.57ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.60ms | 281.18ms | 1.73s | 460.71ms | 1.75s (partial) | 479.49ms | 385.02ms | 2.73s (partial) | 259.88ms |

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
