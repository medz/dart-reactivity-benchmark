# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.39s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.35s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.05s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.21s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.98s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.45s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 183.04ms | 157.83ms | 2.31s | 205.10ms | 1.45s | 208.54ms | 271.75ms | 2.16s | 159.54ms (fail) |
| broadPropagation | 377.18ms | 328.43ms | 4.25s | 463.25ms | 84.45ms (fail) | 455.67ms | 511.22ms | 5.42s | 6.60ms (fail) |
| deepPropagation | 127.25ms | 96.89ms | 1.52s | 180.43ms | 1.99s (fail) | 175.22ms | 168.58ms | 2.02s | 144.35ms (fail) |
| diamond | 235.82ms | 202.63ms | 2.39s | 282.08ms | 2.63s (fail) | 295.25ms | 348.35ms | 3.48s | 185.31ms (fail) |
| mux | 378.92ms | 340.13ms | 1.83s | 383.24ms | 577.58ms (fail) | 414.84ms | 445.58ms | 2.06s | 194.62ms (fail) |
| repeatedObservers | 48.03ms | 50.85ms | 223.77ms | 38.46ms | 406.56ms (fail) | 46.73ms | 78.13ms | 217.14ms | 53.30ms (fail) |
| triangle | 85.92ms | 73.80ms | 768.03ms | 111.67ms | 951.75ms (fail) | 105.07ms | 116.68ms | 1.12s | 77.42ms (fail) |
| unstable | 62.37ms | 68.36ms | 344.22ms | 71.94ms | 617.53ms (fail) | 75.23ms | 93.35ms | 347.69ms | 337.25ms (fail) |
| molBench | 484.68ms | 482.17ms | 581.07ms | 491.22ms | 11.98ms | 489.50ms | 493.94ms | 1.71s | 1.04ms |
| create_signals | 6.93ms | 27.30ms | 74.86ms | 5.29ms | 24.45ms | 25.49ms | 95.84ms | 50.81ms | 69.13ms |
| comp_0to1 | 21.56ms | 10.82ms | 21.44ms | 17.61ms | 13.81ms | 12.13ms | 38.59ms | 22.44ms | 63.97ms |
| comp_1to1 | 23.71ms | 28.43ms | 37.34ms | 11.67ms | 22.68ms | 24.33ms | 46.12ms | 43.60ms | 60.33ms |
| comp_2to1 | 15.61ms | 17.73ms | 23.42ms | 17.20ms | 23.54ms | 14.07ms | 37.56ms | 38.16ms | 38.75ms |
| comp_4to1 | 2.61ms | 7.00ms | 17.14ms | 16.03ms | 6.60ms | 8.91ms | 4.91ms | 17.81ms | 18.38ms |
| comp_1000to1 | 4μs | 4μs | 33μs | 9μs | 4μs | 5μs | 16μs | 2.71ms | 47μs |
| comp_1to2 | 12.50ms | 11.60ms | 32.54ms | 20.99ms | 13.69ms | 22.93ms | 32.29ms | 31.52ms | 50.44ms |
| comp_1to4 | 5.90ms | 18.49ms | 33.34ms | 29.59ms | 24.09ms | 17.92ms | 21.62ms | 28.96ms | 52.95ms |
| comp_1to8 | 8.65ms | 6.62ms | 23.56ms | 5.27ms | 4.72ms | 6.99ms | 26.03ms | 23.49ms | 50.02ms |
| comp_1to1000 | 3.59ms | 8.98ms | 15.32ms | 6.54ms | 4.20ms | 4.47ms | 16.76ms | 18.99ms | 43.78ms |
| update_1to1 | 4.88ms | 5.73ms | 23.88ms | 8.28ms | 86.67ms | 9.19ms | 16.12ms | 42.68ms | 5.73ms |
| update_2to1 | 3.32ms | 2.88ms | 11.09ms | 4.07ms | 44.06ms | 4.58ms | 7.96ms | 21.19ms | 2.90ms |
| update_4to1 | 1.21ms | 1.64ms | 5.51ms | 2.13ms | 21.09ms | 2.32ms | 4.04ms | 10.71ms | 1.46ms |
| update_1000to1 | 12μs | 14μs | 65μs | 20μs | 187μs | 23μs | 41μs | 129μs | 15μs |
| update_1to2 | 3.34ms | 4.96ms | 11.30ms | 4.13ms | 43.77ms | 4.95ms | 8.24ms | 21.01ms | 2.95ms |
| update_1to4 | 1.19ms | 1.53ms | 5.26ms | 2.09ms | 21.22ms | 2.31ms | 4.03ms | 10.75ms | 1.47ms |
| update_1to1000 | 32μs | 36μs | 176μs | 997μs | 96μs | 44μs | 166μs | 201μs | 451μs |
| cellx1000 | 8.17ms | 29.10ms | 82.30ms | 9.87ms | N/A | 10.99ms | 11.56ms | 162.36ms | 6.09ms |
| cellx2500 | 24.48ms | 126.14ms | 240.68ms | 30.14ms | N/A | 35.98ms | 37.30ms | 478.77ms | 29.13ms |
| cellx5000 | 49.11ms | 399.18ms | 608.65ms | 87.57ms | N/A | 80.12ms | 100.88ms | 1.11s | 93.75ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.29ms | 232.57ms | 2.01s | 453.63ms | 2.27s | 504.17ms | 357.23ms | 2.61s (partial) | 238.61ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.08ms | 183.36ms | 1.52s | 287.29ms | 1.49s (partial) | 276.44ms | 244.39ms | 2.38s (partial) | 203.00ms |
| 1000x12 - 4 sources - dynamic (large) | 305.22ms | 363.82ms | 1.88s | 3.53s | 2.66s (partial) | 3.74s | 473.61ms | 4.00s (partial) | 356.36ms |
| 1000x5 - 25 sources (wide dense) | 455.49ms | 629.91ms | 3.56s | 2.58s | 4.28s | 3.43s | 597.81ms | 5.02s (partial) | 499.30ms |
| 5x500 - 3 sources (deep) | 203.29ms | 195.63ms | 1.16s | 233.57ms | 1.44s | 228.06ms | 262.01ms | 1.97s (partial) | 207.58ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.58ms | 279.37ms | 1.78s | 460.08ms | 1.76s (partial) | 479.63ms | 376.54ms | 2.80s (partial) | 261.78ms |

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
