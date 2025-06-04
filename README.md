# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 🥈 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 5.67s |
| 🥉 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 6.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.42s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 14.53s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 39.69s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 5.06s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.97s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 59.97s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 248.55ms | 241.91ms | 3.13s | 259.31ms | 1.92s | 209.11ms | 279.37ms | 2.21s | 214.77ms (fail) |
| broadPropagation | 497.37ms | 455.77ms | 5.57s | 521.75ms | 96.64ms (fail) | 455.25ms | 511.01ms | 5.56s | 11.16ms (fail) |
| deepPropagation | 158.04ms | 155.27ms | 2.03s | 229.28ms | 2.45s (fail) | 173.75ms | 171.54ms | 3.00s | 238.52ms (fail) |
| diamond | 411.24ms | 343.44ms | 3.03s | 362.61ms | 3.32s (fail) | 286.19ms | 354.29ms | 5.28s | 257.68ms (fail) |
| mux | 592.34ms | 516.59ms | 2.45s | 526.11ms | 833.06ms (fail) | 419.76ms | 449.75ms | 3.08s | 278.75ms (fail) |
| repeatedObservers | 94.60ms | 103.31ms | 372.71ms | 67.53ms | 616.28ms (fail) | 44.42ms | 81.85ms | 384.02ms | 78.36ms (fail) |
| triangle | 130.85ms | 132.68ms | 1.17s | 141.87ms | 1.27s (fail) | 104.87ms | 118.32ms | 1.64s | 107.15ms (fail) |
| unstable | 125.03ms | 113.17ms | 491.60ms | 100.15ms | 619.54ms (fail) | 79.22ms | 98.22ms | 491.11ms | 560.98ms (fail) |
| molBench | 593.47ms | 519.91ms | 610.01ms | 548.45ms | 11.08ms | 489.19ms | 501.61ms | 2.02s | 3.22ms |
| create_signals | 13.51ms | 48.50ms | 101.30ms | 26.86ms | 25.59ms | 34.19ms | 91.72ms | 120.82ms | 87.31ms |
| comp_0to1 | 39.36ms | 14.50ms | 23.42ms | 35.44ms | 14.75ms | 15.02ms | 30.96ms | 60.20ms | 78.02ms |
| comp_1to1 | 37.03ms | 29.03ms | 70.65ms | 11.04ms | 24.85ms | 22.48ms | 45.63ms | 62.71ms | 83.35ms |
| comp_2to1 | 19.05ms | 24.37ms | 38.40ms | 16.38ms | 27.52ms | 11.51ms | 35.70ms | 63.65ms | 49.30ms |
| comp_4to1 | 7.39ms | 6.25ms | 41.57ms | 23.28ms | 2.90ms | 2.40ms | 12.51ms | 53.56ms | 23.98ms |
| comp_1000to1 | 6μs | 7μs | 26μs | 10μs | 5μs | 5μs | 35μs | 6.10ms | 74μs |
| comp_1to2 | 18.19ms | 15.81ms | 63.20ms | 23.18ms | 16.99ms | 24.73ms | 39.22ms | 56.61ms | 72.39ms |
| comp_1to4 | 11.17ms | 25.61ms | 28.90ms | 33.57ms | 27.21ms | 11.08ms | 18.10ms | 47.08ms | 70.59ms |
| comp_1to8 | 9.74ms | 7.47ms | 35.81ms | 10.69ms | 5.35ms | 10.71ms | 23.13ms | 39.73ms | 68.02ms |
| comp_1to1000 | 8.60ms | 6.86ms | 23.16ms | 6.66ms | 4.95ms | 7.85ms | 17.05ms | 27.55ms | 61.87ms |
| update_1to1 | 7.30ms | 9.04ms | 31.04ms | 11.57ms | 83.19ms | 8.99ms | 16.55ms | 66.14ms | 9.81ms |
| update_2to1 | 3.64ms | 4.88ms | 16.15ms | 5.55ms | 43.23ms | 4.48ms | 7.87ms | 35.02ms | 4.95ms |
| update_4to1 | 1.97ms | 2.54ms | 8.67ms | 2.81ms | 20.18ms | 2.34ms | 4.01ms | 18.22ms | 2.64ms |
| update_1000to1 | 18μs | 21μs | 79μs | 27μs | 166μs | 22μs | 40μs | 197μs | 24μs |
| update_1to2 | 3.45ms | 4.36ms | 16.06ms | 5.75ms | 42.04ms | 4.48ms | 8.04ms | 35.67ms | 5.48ms |
| update_1to4 | 1.75ms | 2.29ms | 8.08ms | 2.83ms | 21.34ms | 2.30ms | 4.06ms | 18.09ms | 2.85ms |
| update_1to1000 | 50μs | 60μs | 253μs | 67μs | 100μs | 47μs | 171μs | 367μs | 613μs |
| cellx1000 | 9.72ms | 40.40ms | 130.43ms | 17.35ms | N/A | 10.12ms | 12.21ms | 238.97ms | 7.02ms |
| cellx2500 | 27.76ms | 192.71ms | 466.49ms | 50.85ms | N/A | 44.61ms | 38.24ms | 722.91ms | 40.34ms |
| cellx5000 | 58.95ms | 634.27ms | 999.75ms | 190.98ms | N/A | 88.05ms | 89.42ms | 1.74s | 92.07ms |
| 10x5 - 2 sources - read 20.0% (simple) | 343.96ms | 356.21ms | 3.59s | 588.01ms | 2.18s | 519.22ms | 360.39ms | 4.45s (partial) | 355.59ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 288.41ms | 287.22ms | 2.63s | 364.11ms | 1.44s (partial) | 290.07ms | 246.68ms | 4.31s (partial) | 263.38ms |
| 1000x12 - 4 sources - dynamic (large) | 463.16ms | 446.94ms | 2.84s | 4.36s | 2.47s (partial) | 3.88s | 459.23ms | 6.89s (partial) | 465.49ms |
| 1000x5 - 25 sources (wide dense) | 722.77ms | 876.21ms | 5.41s | 4.96s | 4.25s | 3.45s | 585.63ms | 9.22s (partial) | 744.37ms |
| 5x500 - 3 sources (deep) | 302.98ms | 312.98ms | 1.86s | 350.99ms | 1.39s | 227.52ms | 263.09ms | 3.45s (partial) | 311.83ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 416.11ms | 391.41ms | 2.40s | 668.72ms | 1.75s (partial) | 485.36ms | 383.37ms | 4.56s (partial) | 403.39ms |

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
