# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.83s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.43s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.42s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.23s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.36s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.78s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.37s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.86s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.72s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.49ms | 161.08ms | 2.43s | 199.75ms | 1.34s | 207.04ms | 279.08ms | 2.24s | 159.31ms (fail) |
| broadPropagation | 374.05ms | 317.63ms | 4.43s | 450.31ms | 79.05ms (fail) | 451.09ms | 510.52ms | 5.76s | 6.09ms (fail) |
| deepPropagation | 129.47ms | 97.79ms | 1.56s | 174.18ms | 1.83s (fail) | 170.71ms | 168.93ms | 2.11s | 145.82ms (fail) |
| diamond | 236.86ms | 213.37ms | 2.55s | 289.15ms | 2.46s (fail) | 288.08ms | 350.66ms | 3.62s | 180.68ms (fail) |
| mux | 377.58ms | 343.68ms | 1.84s | 400.98ms | 551.63ms (fail) | 449.52ms | 442.04ms | 2.08s | 196.49ms (fail) |
| repeatedObservers | 47.14ms | 50.17ms | 250.88ms | 40.43ms | 389.50ms (fail) | 44.68ms | 81.55ms | 236.59ms | 52.33ms (fail) |
| triangle | 88.01ms | 76.56ms | 780.99ms | 101.48ms | 942.65ms (fail) | 99.86ms | 118.21ms | 1.18s | 77.61ms (fail) |
| unstable | 62.14ms | 69.64ms | 365.25ms | 70.03ms | 615.36ms (fail) | 79.58ms | 96.80ms | 362.97ms | 338.14ms (fail) |
| molBench | 494.31ms | 492.09ms | 574.77ms | 483.98ms | 11.07ms | 486.60ms | 493.77ms | 1.73s | 933μs |
| create_signals | 7.71ms | 29.95ms | 68.31ms | 5.36ms | 22.67ms | 24.87ms | 56.28ms | 72.96ms | 59.46ms |
| comp_0to1 | 24.88ms | 12.09ms | 28.32ms | 17.21ms | 13.09ms | 11.47ms | 28.05ms | 22.76ms | 57.66ms |
| comp_1to1 | 22.44ms | 17.29ms | 48.33ms | 14.21ms | 20.89ms | 20.79ms | 56.47ms | 45.26ms | 55.93ms |
| comp_2to1 | 19.46ms | 10.59ms | 23.17ms | 18.30ms | 28.16ms | 8.02ms | 22.90ms | 25.52ms | 36.70ms |
| comp_4to1 | 1.73ms | 5.28ms | 14.36ms | 14.50ms | 6.95ms | 2.70ms | 14.62ms | 32.63ms | 16.33ms |
| comp_1000to1 | 3μs | 4μs | 16μs | 4μs | 3μs | 7μs | 22μs | 2.62ms | 43μs |
| comp_1to2 | 9.76ms | 14.64ms | 34.38ms | 20.64ms | 10.67ms | 19.86ms | 33.26ms | 20.04ms | 46.28ms |
| comp_1to4 | 5.84ms | 16.85ms | 23.84ms | 26.90ms | 18.30ms | 6.87ms | 27.87ms | 23.38ms | 44.66ms |
| comp_1to8 | 8.36ms | 7.08ms | 23.94ms | 6.68ms | 5.03ms | 6.21ms | 27.83ms | 18.98ms | 43.24ms |
| comp_1to1000 | 3.31ms | 4.55ms | 16.30ms | 7.41ms | 4.24ms | 4.10ms | 17.44ms | 17.30ms | 39.39ms |
| update_1to1 | 4.57ms | 5.44ms | 25.30ms | 8.64ms | 86.59ms | 8.88ms | 16.80ms | 43.91ms | 5.62ms |
| update_2to1 | 2.36ms | 5.18ms | 10.90ms | 4.28ms | 41.28ms | 4.48ms | 8.36ms | 21.68ms | 2.86ms |
| update_4to1 | 1.21ms | 2.60ms | 5.87ms | 2.15ms | 20.24ms | 2.20ms | 4.21ms | 11.21ms | 1.49ms |
| update_1000to1 | 19μs | 26μs | 69μs | 21μs | 171μs | 22μs | 41μs | 119μs | 14μs |
| update_1to2 | 7.19ms | 5.09ms | 11.44ms | 4.65ms | 41.89ms | 4.47ms | 8.27ms | 21.63ms | 2.88ms |
| update_1to4 | 1.22ms | 1.66ms | 6.77ms | 2.16ms | 20.58ms | 2.21ms | 4.20ms | 11.05ms | 1.49ms |
| update_1to1000 | 47μs | 54μs | 172μs | 849μs | 92μs | 42μs | 172μs | 212μs | 388μs |
| cellx1000 | 7.51ms | 30.80ms | 70.17ms | 9.68ms | N/A | 9.54ms | 12.80ms | 166.98ms | 6.06ms |
| cellx2500 | 24.13ms | 132.81ms | 242.99ms | 25.98ms | N/A | 31.93ms | 44.65ms | 467.22ms | 25.16ms |
| cellx5000 | 55.64ms | 415.04ms | 542.78ms | 69.77ms | N/A | 62.55ms | 121.50ms | 1.11s | 52.21ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.68ms | 232.77ms | 2.04s | 437.00ms | 2.12s | 509.35ms | 403.13ms | 2.71s (partial) | 241.41ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.05ms | 186.57ms | 1.51s | 269.62ms | 1.44s (partial) | 290.18ms | 262.99ms | 2.45s (partial) | 197.01ms |
| 1000x12 - 4 sources - dynamic (large) | 303.64ms | 360.53ms | 1.84s | 3.67s | 2.62s (partial) | 3.76s | 464.08ms | 4.14s (partial) | 334.47ms |
| 1000x5 - 25 sources (wide dense) | 455.86ms | 630.56ms | 3.57s | 2.71s | 4.00s | 3.57s | 583.10ms | 5.11s (partial) | 479.05ms |
| 5x500 - 3 sources (deep) | 200.81ms | 197.16ms | 1.17s | 228.60ms | 1.32s | 225.32ms | 276.53ms | 2.05s (partial) | 202.54ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.01ms | 287.98ms | 1.65s | 453.05ms | 1.79s (partial) | 495.81ms | 381.87ms | 2.82s (partial) | 258.52ms |

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
