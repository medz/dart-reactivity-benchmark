# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.38s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.42s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.39s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.31s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.81s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.89s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.04s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 173.54ms | 164.25ms | 2.34s | 202.65ms | 1.44s | 208.05ms | 275.46ms | 2.16s | 147.58ms (fail) |
| broadPropagation | 376.10ms | 318.04ms | 4.53s | 509.77ms | 84.11ms (fail) | 451.04ms | 508.61ms | 5.37s | 6.04ms (fail) |
| deepPropagation | 131.19ms | 97.72ms | 1.58s | 177.40ms | 1.98s (fail) | 166.24ms | 165.67ms | 1.98s | 140.13ms (fail) |
| diamond | 240.15ms | 214.75ms | 2.43s | 296.85ms | 2.75s (fail) | 278.45ms | 352.57ms | 3.40s | 198.79ms (fail) |
| mux | 381.74ms | 343.92ms | 1.87s | 401.16ms | 617.00ms (fail) | 412.92ms | 434.83ms | 1.98s | 195.49ms (fail) |
| repeatedObservers | 47.29ms | 50.22ms | 231.16ms | 42.00ms | 524.92ms (fail) | 45.04ms | 81.58ms | 221.09ms | 54.71ms (fail) |
| triangle | 88.26ms | 78.06ms | 769.75ms | 103.24ms | 995.37ms (fail) | 102.85ms | 117.16ms | 1.14s | 83.18ms (fail) |
| unstable | 61.15ms | 70.13ms | 352.91ms | 73.43ms | 802.81ms (fail) | 79.48ms | 98.92ms | 353.17ms | 338.77ms (fail) |
| molBench | 494.48ms | 489.60ms | 574.67ms | 491.01ms | 11.44ms | 485.51ms | 493.65ms | 1.70s | 971μs |
| create_signals | 7.87ms | 26.82ms | 73.41ms | 5.28ms | 23.80ms | 25.44ms | 104.85ms | 53.90ms | 66.78ms |
| comp_0to1 | 21.79ms | 11.01ms | 25.84ms | 16.92ms | 13.28ms | 10.59ms | 35.59ms | 22.23ms | 61.68ms |
| comp_1to1 | 17.43ms | 20.86ms | 25.06ms | 14.52ms | 22.65ms | 17.90ms | 49.19ms | 32.74ms | 59.18ms |
| comp_2to1 | 15.71ms | 18.78ms | 11.90ms | 16.86ms | 23.36ms | 8.99ms | 43.42ms | 39.24ms | 39.48ms |
| comp_4to1 | 1.69ms | 6.32ms | 15.32ms | 14.72ms | 7.17ms | 8.77ms | 15.74ms | 31.43ms | 17.48ms |
| comp_1000to1 | 4μs | 4μs | 20μs | 4μs | 4μs | 5μs | 17μs | 3.18ms | 44μs |
| comp_1to2 | 11.44ms | 11.70ms | 27.18ms | 17.77ms | 11.80ms | 17.60ms | 30.89ms | 26.78ms | 49.30ms |
| comp_1to4 | 8.62ms | 17.26ms | 36.14ms | 33.25ms | 22.04ms | 9.35ms | 23.17ms | 28.42ms | 47.10ms |
| comp_1to8 | 4.03ms | 7.10ms | 25.17ms | 6.77ms | 5.00ms | 5.92ms | 23.95ms | 29.70ms | 46.47ms |
| comp_1to1000 | 3.41ms | 4.34ms | 16.24ms | 4.62ms | 4.13ms | 4.32ms | 16.92ms | 17.79ms | 42.36ms |
| update_1to1 | 4.51ms | 5.45ms | 25.02ms | 8.67ms | 86.98ms | 9.20ms | 15.93ms | 43.00ms | 5.65ms |
| update_2to1 | 2.31ms | 2.79ms | 12.45ms | 4.24ms | 45.13ms | 4.50ms | 7.83ms | 21.48ms | 2.85ms |
| update_4to1 | 1.16ms | 1.43ms | 6.97ms | 2.16ms | 21.87ms | 2.29ms | 3.97ms | 10.85ms | 1.47ms |
| update_1000to1 | 11μs | 24μs | 71μs | 21μs | 187μs | 34μs | 39μs | 118μs | 14μs |
| update_1to2 | 2.30ms | 2.76ms | 11.77ms | 4.64ms | 46.00ms | 4.50ms | 8.03ms | 20.96ms | 2.86ms |
| update_1to4 | 1.20ms | 1.45ms | 5.65ms | 2.15ms | 21.17ms | 2.29ms | 4.03ms | 10.80ms | 1.47ms |
| update_1to1000 | 42μs | 56μs | 173μs | 169μs | 94μs | 41μs | 170μs | 224μs | 424μs |
| cellx1000 | 7.65ms | 27.92ms | 74.08ms | 9.64ms | N/A | 9.35ms | 13.28ms | 155.56ms | 6.54ms |
| cellx2500 | 25.39ms | 133.12ms | 271.56ms | 25.62ms | N/A | 30.57ms | 48.61ms | 464.66ms | 35.73ms |
| cellx5000 | 58.24ms | 404.93ms | 620.55ms | 78.15ms | N/A | 59.38ms | 146.74ms | 1.09s | 83.49ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.17ms | 233.25ms | 2.07s | 437.59ms | 2.43s | 529.51ms | 350.94ms | 2.57s (partial) | 246.05ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.18ms | 185.18ms | 1.54s | 275.97ms | 1.66s (partial) | 284.30ms | 243.13ms | 2.33s (partial) | 197.76ms |
| 1000x12 - 4 sources - dynamic (large) | 304.88ms | 349.08ms | 1.88s | 3.71s | 2.70s (partial) | 3.76s | 471.54ms | 4.01s (partial) | 365.19ms |
| 1000x5 - 25 sources (wide dense) | 461.28ms | 608.43ms | 3.53s | 2.71s | 5.04s | 3.57s | 597.04ms | 5.08s (partial) | 500.23ms |
| 5x500 - 3 sources (deep) | 202.81ms | 196.50ms | 1.16s | 232.21ms | 1.58s | 222.22ms | 258.22ms | 1.94s (partial) | 206.65ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.63ms | 280.61ms | 1.66s | 455.89ms | 1.91s (partial) | 476.14ms | 383.02ms | 2.72s (partial) | 259.47ms |

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
