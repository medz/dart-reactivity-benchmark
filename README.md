# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.40s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.46s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.56s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.32s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.28s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 173.70ms | 161.06ms | 2.34s | 197.71ms | 1.40s | 205.24ms | 278.54ms | 2.17s | 195.66ms (fail) |
| broadPropagation | 368.88ms | 315.16ms | 4.51s | 456.40ms | 80.20ms (fail) | 459.40ms | 509.62ms | 5.44s | 6.09ms (fail) |
| deepPropagation | 126.22ms | 96.84ms | 1.57s | 174.79ms | 1.88s (fail) | 166.97ms | 171.37ms | 1.99s | 139.28ms (fail) |
| diamond | 238.05ms | 212.48ms | 2.47s | 278.27ms | 2.54s (fail) | 281.26ms | 349.93ms | 3.42s | 210.59ms (fail) |
| mux | 378.34ms | 339.44ms | 1.89s | 399.49ms | 580.33ms (fail) | 411.35ms | 442.98ms | 2.00s | 191.48ms (fail) |
| repeatedObservers | 47.16ms | 50.25ms | 230.89ms | 40.26ms | 366.93ms (fail) | 44.72ms | 81.87ms | 217.36ms | 52.75ms (fail) |
| triangle | 90.56ms | 79.35ms | 791.20ms | 98.57ms | 857.19ms (fail) | 101.66ms | 118.07ms | 1.11s | 78.72ms (fail) |
| unstable | 62.07ms | 69.60ms | 351.68ms | 70.14ms | 589.91ms (fail) | 79.79ms | 99.30ms | 356.44ms | 335.26ms (fail) |
| molBench | 494.03ms | 491.74ms | 573.68ms | 489.95ms | 12.62ms | 485.79ms | 492.89ms | 1.71s | 950μs |
| create_signals | 7.55ms | 28.53ms | 76.70ms | 5.29ms | 24.47ms | 26.33ms | 95.26ms | 75.46ms | 69.59ms |
| comp_0to1 | 21.64ms | 9.34ms | 26.39ms | 17.20ms | 13.89ms | 11.72ms | 35.75ms | 22.75ms | 61.61ms |
| comp_1to1 | 14.10ms | 19.38ms | 25.42ms | 12.86ms | 22.31ms | 28.71ms | 53.51ms | 46.74ms | 60.40ms |
| comp_2to1 | 14.09ms | 16.02ms | 12.53ms | 17.38ms | 24.21ms | 9.46ms | 28.84ms | 25.86ms | 39.52ms |
| comp_4to1 | 1.67ms | 4.03ms | 19.51ms | 11.59ms | 6.85ms | 2.04ms | 19.04ms | 26.66ms | 17.81ms |
| comp_1000to1 | 5μs | 4μs | 25μs | 6μs | 3μs | 5μs | 22μs | 2.76ms | 46μs |
| comp_1to2 | 13.96ms | 10.12ms | 39.17ms | 18.79ms | 11.38ms | 23.79ms | 37.87ms | 20.19ms | 50.61ms |
| comp_1to4 | 8.31ms | 22.50ms | 24.02ms | 26.54ms | 25.84ms | 9.98ms | 25.82ms | 27.66ms | 49.27ms |
| comp_1to8 | 5.99ms | 4.38ms | 23.13ms | 6.80ms | 5.76ms | 12.70ms | 28.24ms | 20.97ms | 47.88ms |
| comp_1to1000 | 3.17ms | 4.05ms | 16.21ms | 4.74ms | 5.19ms | 6.71ms | 17.17ms | 17.30ms | 44.02ms |
| update_1to1 | 4.52ms | 5.46ms | 26.13ms | 8.58ms | 101.75ms | 9.06ms | 16.08ms | 43.60ms | 5.65ms |
| update_2to1 | 2.37ms | 2.83ms | 12.40ms | 4.28ms | 42.44ms | 4.49ms | 7.89ms | 21.50ms | 2.88ms |
| update_4to1 | 1.24ms | 1.45ms | 6.58ms | 2.21ms | 20.80ms | 2.28ms | 4.02ms | 10.88ms | 1.41ms |
| update_1000to1 | 21μs | 23μs | 68μs | 22μs | 180μs | 22μs | 40μs | 118μs | 14μs |
| update_1to2 | 2.35ms | 2.73ms | 11.36ms | 4.64ms | 41.87ms | 4.47ms | 7.87ms | 21.14ms | 2.83ms |
| update_1to4 | 1.26ms | 1.48ms | 6.24ms | 2.21ms | 20.84ms | 2.25ms | 4.06ms | 10.85ms | 1.41ms |
| update_1to1000 | 45μs | 58μs | 173μs | 147μs | 107μs | 43μs | 170μs | 208μs | 438μs |
| cellx1000 | 7.13ms | 28.22ms | 83.33ms | 9.63ms | N/A | 9.81ms | 14.95ms | 167.22ms | 5.44ms |
| cellx2500 | 23.43ms | 131.92ms | 305.31ms | 28.32ms | N/A | 37.97ms | 50.65ms | 530.18ms | 30.97ms |
| cellx5000 | 55.90ms | 407.88ms | 620.20ms | 79.64ms | N/A | 86.50ms | 146.11ms | 1.21s | 69.71ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.94ms | 231.65ms | 2.09s | 437.60ms | 2.12s | 532.14ms | 363.30ms | 2.59s (partial) | 245.56ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 183.79ms | 184.26ms | 1.57s | 272.45ms | 1.41s (partial) | 297.10ms | 245.26ms | 2.36s (partial) | 198.98ms |
| 1000x12 - 4 sources - dynamic (large) | 305.93ms | 353.27ms | 2.01s | 3.71s | 2.48s (partial) | 4.02s | 473.72ms | 4.15s (partial) | 350.19ms |
| 1000x5 - 25 sources (wide dense) | 457.76ms | 634.01ms | 3.68s | 2.71s | 4.40s | 3.46s | 595.36ms | 5.14s (partial) | 483.84ms |
| 5x500 - 3 sources (deep) | 204.20ms | 197.88ms | 1.19s | 229.79ms | 1.41s | 228.75ms | 256.03ms | 2.00s (partial) | 206.09ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.55ms | 283.62ms | 1.71s | 452.31ms | 1.78s (partial) | 491.68ms | 384.70ms | 2.81s (partial) | 260.97ms |

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
