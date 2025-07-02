# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [alien_signals v0.4.2-pre.1](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.03s |
| 🥉 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.50s |
| 4 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.59s |
| 5 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 6 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.13s |
| 7 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.38s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.43s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals v0.4.2-pre.1](https://github.com/medz/alien-signals-dart) | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 195.55ms | 175.70ms | 160.68ms | 2.39s | 200.34ms | 1.38s | 205.40ms | 294.82ms | 181.74ms (fail) |
| broadPropagation | 390.95ms | 376.30ms | 317.55ms | 4.46s | 447.42ms | 81.67ms (fail) | 451.61ms | 517.36ms | 5.77ms (fail) |
| deepPropagation | 96.07ms | 135.52ms | 97.60ms | 1.57s | 177.15ms | 1.93s (fail) | 167.94ms | 176.83ms | 141.95ms (fail) |
| diamond | 218.58ms | 239.04ms | 214.90ms | 2.49s | 279.50ms | 2.60s (fail) | 279.06ms | 354.27ms | 188.00ms (fail) |
| mux | 411.81ms | 375.56ms | 343.55ms | 1.88s | 403.91ms | 572.23ms (fail) | 410.22ms | 446.48ms | 195.46ms (fail) |
| repeatedObservers | 47.96ms | 47.40ms | 50.18ms | 237.64ms | 39.94ms | 386.88ms (fail) | 44.71ms | 87.81ms | 52.71ms (fail) |
| triangle | 78.33ms | 87.32ms | 78.71ms | 786.53ms | 97.67ms | 870.61ms (fail) | 100.62ms | 115.47ms | 76.11ms (fail) |
| unstable | 65.21ms | 67.59ms | 70.01ms | 357.86ms | 70.15ms | 611.49ms (fail) | 79.43ms | 102.69ms | 338.20ms (fail) |
| molBench | 488.67ms | 494.60ms | 492.06ms | 580.06ms | 489.05ms | 11.77ms | 485.83ms | 499.23ms | 1.03ms |
| create_signals | 27.76ms | 8.01ms | 27.34ms | 94.41ms | 5.30ms | 24.57ms | 26.74ms | 53.30ms | 60.68ms |
| comp_0to1 | 9.62ms | 22.55ms | 9.88ms | 38.39ms | 22.77ms | 15.55ms | 11.50ms | 32.29ms | 53.96ms |
| comp_1to1 | 33.26ms | 15.57ms | 24.17ms | 32.81ms | 15.21ms | 26.42ms | 28.08ms | 43.67ms | 55.66ms |
| comp_2to1 | 15.77ms | 15.18ms | 20.73ms | 26.66ms | 18.13ms | 27.12ms | 10.66ms | 25.49ms | 37.30ms |
| comp_4to1 | 4.21ms | 1.88ms | 4.37ms | 20.32ms | 14.40ms | 2.12ms | 2.06ms | 26.75ms | 16.70ms |
| comp_1000to1 | 4μs | 4μs | 4μs | 22μs | 4μs | 3μs | 8μs | 24μs | 42μs |
| comp_1to2 | 14.51ms | 10.75ms | 13.58ms | 40.12ms | 14.53ms | 15.60ms | 23.21ms | 33.77ms | 44.98ms |
| comp_1to4 | 18.42ms | 5.58ms | 20.82ms | 25.61ms | 22.52ms | 28.49ms | 7.64ms | 29.46ms | 43.66ms |
| comp_1to8 | 7.23ms | 8.33ms | 5.75ms | 23.35ms | 15.32ms | 7.62ms | 6.59ms | 23.35ms | 42.65ms |
| comp_1to1000 | 4.26ms | 3.56ms | 3.95ms | 16.29ms | 5.78ms | 4.55ms | 4.25ms | 16.05ms | 38.23ms |
| update_1to1 | 4.78ms | 4.51ms | 5.47ms | 25.68ms | 8.64ms | 85.36ms | 8.92ms | 15.64ms | 5.96ms |
| update_2to1 | 2.43ms | 2.36ms | 2.75ms | 13.15ms | 4.26ms | 43.56ms | 4.47ms | 7.68ms | 2.98ms |
| update_4to1 | 1.20ms | 1.21ms | 1.45ms | 7.14ms | 2.18ms | 20.74ms | 2.22ms | 3.85ms | 1.53ms |
| update_1000to1 | 12μs | 20μs | 24μs | 69μs | 21μs | 196μs | 22μs | 37μs | 15μs |
| update_1to2 | 3.31ms | 2.37ms | 2.71ms | 11.35ms | 4.63ms | 43.18ms | 4.47ms | 7.68ms | 3.02ms |
| update_1to4 | 1.19ms | 1.24ms | 2.12ms | 6.08ms | 2.19ms | 20.95ms | 2.25ms | 3.84ms | 1.57ms |
| update_1to1000 | 31μs | 48μs | 33μs | 174μs | 2.20ms | 102μs | 45μs | 168μs | 374μs |
| cellx1000 | 10.43ms | 7.61ms | 30.83ms | 95.39ms | 11.46ms | N/A | 10.39ms | 12.69ms | 6.64ms |
| cellx2500 | 34.40ms | 24.94ms | 141.38ms | 313.51ms | 43.11ms | N/A | 37.63ms | 41.99ms | 31.71ms |
| cellx5000 | 90.18ms | 56.15ms | 445.15ms | 675.58ms | 116.30ms | N/A | 89.16ms | 116.03ms | 82.49ms |
| 10x5 - 2 sources - read 20.0% (simple) | 288.41ms | 237.90ms | 232.21ms | 2.02s | 439.58ms | 2.14s | 517.10ms | 354.22ms | 236.49ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.21ms | 182.27ms | 183.47ms | 1.62s | 269.33ms | 1.48s (partial) | 278.87ms | 245.31ms | 200.78ms |
| 1000x12 - 4 sources - dynamic (large) | 326.68ms | 308.33ms | 370.06ms | 1.98s | 3.64s | 2.48s (partial) | 3.68s | 479.69ms | 358.59ms |
| 1000x5 - 25 sources (wide dense) | 484.02ms | 462.43ms | 637.68ms | 3.54s | 2.72s | 4.33s | 3.44s | 749.04ms | 506.30ms |
| 5x500 - 3 sources (deep) | 208.54ms | 208.19ms | 199.74ms | 1.24s | 231.32ms | 1.41s | 231.34ms | 275.99ms | 204.76ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.05ms | 267.55ms | 286.91ms | 1.77s | 448.69ms | 1.77s (partial) | 478.76ms | 394.00ms | 263.58ms |

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
