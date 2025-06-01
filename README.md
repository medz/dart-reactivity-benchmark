# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.48s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.46s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.38s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.26s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.91s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.76s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.51s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.71ms | 161.65ms | 2.33s | 201.39ms | 1.37s | 205.35ms | 282.02ms | 2.20s | 148.59ms (fail) |
| broadPropagation | 367.39ms | 320.75ms | 4.41s | 450.00ms | 81.02ms (fail) | 456.61ms | 512.63ms | 5.44s | 7.17ms (fail) |
| deepPropagation | 124.57ms | 98.31ms | 1.57s | 177.34ms | 1.88s (fail) | 175.12ms | 169.14ms | 1.99s | 145.76ms (fail) |
| diamond | 233.20ms | 212.87ms | 2.45s | 283.67ms | 2.54s (fail) | 281.43ms | 361.64ms | 3.43s | 187.96ms (fail) |
| mux | 383.50ms | 346.56ms | 1.90s | 403.86ms | 548.69ms (fail) | 411.18ms | 442.09ms | 2.02s | 193.62ms (fail) |
| repeatedObservers | 47.25ms | 50.11ms | 238.24ms | 40.08ms | 370.08ms (fail) | 44.55ms | 82.23ms | 228.80ms | 57.17ms (fail) |
| triangle | 88.39ms | 78.95ms | 786.37ms | 98.62ms | 889.47ms (fail) | 101.52ms | 120.07ms | 1.11s | 86.47ms (fail) |
| unstable | 62.20ms | 70.21ms | 352.95ms | 70.22ms | 596.37ms (fail) | 78.88ms | 98.47ms | 355.07ms | 340.78ms (fail) |
| molBench | 494.66ms | 491.75ms | 581.07ms | 489.65ms | 13.66ms | 485.98ms | 494.18ms | 1.71s | 982μs |
| create_signals | 7.73ms | 28.07ms | 71.82ms | 4.78ms | 24.05ms | 26.25ms | 101.05ms | 58.42ms | 60.26ms |
| comp_0to1 | 22.21ms | 9.82ms | 28.93ms | 17.67ms | 15.08ms | 12.10ms | 37.58ms | 22.32ms | 54.15ms |
| comp_1to1 | 20.47ms | 21.61ms | 38.74ms | 14.08ms | 25.74ms | 29.87ms | 54.56ms | 43.55ms | 56.11ms |
| comp_2to1 | 14.43ms | 16.02ms | 30.54ms | 17.68ms | 26.84ms | 8.56ms | 49.89ms | 41.60ms | 36.57ms |
| comp_4to1 | 1.81ms | 4.28ms | 14.46ms | 12.44ms | 2.00ms | 5.54ms | 4.94ms | 37.95ms | 16.45ms |
| comp_1000to1 | 4μs | 6μs | 22μs | 6μs | 5μs | 5μs | 17μs | 2.88ms | 44μs |
| comp_1to2 | 13.54ms | 15.48ms | 38.84ms | 36.09ms | 15.13ms | 23.35ms | 34.45ms | 30.73ms | 46.14ms |
| comp_1to4 | 8.88ms | 23.59ms | 18.50ms | 26.10ms | 34.56ms | 12.59ms | 23.07ms | 32.31ms | 45.21ms |
| comp_1to8 | 4.51ms | 7.02ms | 21.31ms | 6.86ms | 9.46ms | 8.14ms | 25.45ms | 25.11ms | 44.21ms |
| comp_1to1000 | 3.35ms | 4.36ms | 15.93ms | 4.93ms | 4.56ms | 4.38ms | 16.75ms | 17.70ms | 40.12ms |
| update_1to1 | 4.55ms | 5.46ms | 23.98ms | 8.58ms | 85.53ms | 8.86ms | 15.99ms | 43.63ms | 5.74ms |
| update_2to1 | 2.30ms | 2.77ms | 11.70ms | 4.26ms | 44.11ms | 4.48ms | 7.86ms | 21.40ms | 2.90ms |
| update_4to1 | 1.16ms | 1.35ms | 7.03ms | 2.22ms | 21.50ms | 2.25ms | 4.06ms | 10.81ms | 1.47ms |
| update_1000to1 | 11μs | 13μs | 70μs | 33μs | 229μs | 22μs | 39μs | 118μs | 15μs |
| update_1to2 | 2.30ms | 2.71ms | 11.01ms | 4.61ms | 43.63ms | 4.46ms | 8.03ms | 21.12ms | 2.88ms |
| update_1to4 | 1.17ms | 1.34ms | 6.57ms | 2.25ms | 21.18ms | 2.26ms | 4.02ms | 10.89ms | 1.48ms |
| update_1to1000 | 31μs | 56μs | 173μs | 147μs | 142μs | 44μs | 181μs | 209μs | 388μs |
| cellx1000 | 8.22ms | 32.68ms | 82.89ms | 10.64ms | N/A | 12.33ms | 13.61ms | 187.90ms | 5.32ms |
| cellx2500 | 29.63ms | 136.32ms | 280.07ms | 36.88ms | N/A | 43.03ms | 47.73ms | 486.44ms | 23.65ms |
| cellx5000 | 77.09ms | 442.30ms | 623.78ms | 104.23ms | N/A | 95.01ms | 135.78ms | 1.18s | 61.06ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.23ms | 232.12ms | 2.04s | 442.96ms | 2.21s | 516.18ms | 368.01ms | 2.60s (partial) | 272.32ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.47ms | 182.92ms | 1.53s | 273.50ms | 1.48s (partial) | 286.53ms | 244.81ms | 2.41s (partial) | 220.82ms |
| 1000x12 - 4 sources - dynamic (large) | 309.93ms | 369.63ms | 1.91s | 3.74s | 2.56s (partial) | 3.76s | 474.22ms | 4.01s (partial) | 333.18ms |
| 1000x5 - 25 sources (wide dense) | 469.41ms | 626.94ms | 3.54s | 2.70s | 4.36s | 3.43s | 596.69ms | 5.06s (partial) | 523.59ms |
| 5x500 - 3 sources (deep) | 203.35ms | 197.48ms | 1.20s | 232.54ms | 1.68s | 227.06ms | 249.11ms | 1.93s (partial) | 204.76ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.64ms | 285.09ms | 1.74s | 457.28ms | 1.81s (partial) | 491.27ms | 382.81ms | 2.76s (partial) | 265.11ms |

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
