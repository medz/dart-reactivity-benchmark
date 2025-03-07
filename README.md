# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.41s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.04s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.35s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.36s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.47s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 184.48ms | 2.30s | 207.30ms | 1.25s | 1.38s | 214.35ms | 274.15ms | 148.85ms (fail) |
| broadPropagation | 350.79ms | 4.26s | 452.62ms | 4.99s | 82.09ms (fail) | 454.89ms | 513.25ms | 5.74ms (fail) |
| deepPropagation | 119.73ms | 1.53s | 177.98ms | 4.00s | 1.94s (fail) | 181.16ms | 175.55ms | 141.06ms (fail) |
| diamond | 234.33ms | 2.38s | 284.93ms | 14.03s (fail) | 2.68s (fail) | 288.03ms | 348.47ms | 186.83ms (fail) |
| mux | 376.00ms | 1.82s | 387.33ms | 1.02s | 562.19ms (fail) | 410.44ms | 448.62ms | 190.01ms (fail) |
| repeatedObservers | 44.92ms | 230.59ms | 38.68ms | 9.74s | 383.79ms (fail) | 47.21ms | 78.11ms | 52.79ms (fail) |
| triangle | 85.84ms | 769.03ms | 98.65ms | 4.52s | 930.97ms (fail) | 106.25ms | 118.29ms | 79.33ms (fail) |
| unstable | 61.36ms | 339.53ms | 70.97ms | 7.64s | 621.99ms (fail) | 73.81ms | 93.71ms | 338.31ms (fail) |
| molBench | 491.00ms | 581.60ms | 491.30ms | 5.90s | 12.22ms | 487.08ms | 493.26ms | 1.15ms |
| create_signals | 27.23ms | 86.31ms | 4.65ms | 13.34ms | 23.74ms | 29.94ms | 98.51ms | 63.06ms |
| comp_0to1 | 7.28ms | 46.35ms | 17.72ms | 13.68ms | 13.60ms | 11.71ms | 35.72ms | 55.57ms |
| comp_1to1 | 4.28ms | 24.02ms | 11.83ms | 99.56ms | 22.61ms | 36.38ms | 46.67ms | 54.56ms |
| comp_2to1 | 2.21ms | 8.89ms | 22.71ms | 72.37ms | 23.93ms | 9.25ms | 45.74ms | 35.35ms |
| comp_4to1 | 10.73ms | 29.10ms | 7.48ms | 85.23ms | 6.90ms | 2.00ms | 17.87ms | 16.37ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 59.32ms | 3μs | 4μs | 15μs | 41μs |
| comp_1to2 | 10.76ms | 39.68ms | 16.66ms | 66.89ms | 13.98ms | 19.21ms | 37.99ms | 44.09ms |
| comp_1to4 | 8.39ms | 25.62ms | 25.79ms | 99.18ms | 24.09ms | 11.01ms | 20.99ms | 43.29ms |
| comp_1to8 | 5.14ms | 24.97ms | 7.21ms | 116.37ms | 5.44ms | 7.66ms | 23.83ms | 43.65ms |
| comp_1to1000 | 3.48ms | 15.14ms | 5.41ms | 47.90ms | 4.47ms | 6.29ms | 14.61ms | 38.18ms |
| update_1to1 | 9.93ms | 25.05ms | 8.15ms | N/A | 85.53ms | 9.31ms | 16.63ms | 5.72ms |
| update_2to1 | 4.94ms | 12.36ms | 4.06ms | N/A | 43.82ms | 4.59ms | 8.58ms | 2.90ms |
| update_4to1 | 2.80ms | 6.48ms | 2.03ms | N/A | 20.41ms | 2.31ms | 4.11ms | 1.49ms |
| update_1000to1 | 10μs | 68μs | 20μs | N/A | 175μs | 23μs | 41μs | 15μs |
| update_1to2 | 5.60ms | 12.28ms | 4.11ms | N/A | 43.36ms | 5.02ms | 8.45ms | 2.97ms |
| update_1to4 | 2.46ms | 6.27ms | 2.02ms | N/A | 20.70ms | 2.32ms | 4.10ms | 1.49ms |
| update_1to1000 | 33μs | 157μs | 184μs | N/A | 97μs | 43μs | 152μs | 378μs |
| cellx1000 | 7.37ms | 79.49ms | 10.42ms | N/A | N/A | 9.57ms | 12.03ms | 5.08ms |
| cellx2500 | 19.94ms | 262.93ms | 31.14ms | N/A | N/A | 33.33ms | 38.12ms | 24.59ms |
| cellx5000 | 42.85ms | 587.57ms | 81.66ms | N/A | N/A | 66.03ms | 115.64ms | 59.76ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.61ms | 2.02s | 459.79ms | N/A | 2.24s | 524.23ms | 359.62ms | 236.31ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.38ms | 1.53s | 276.31ms | N/A | 1.48s (partial) | 277.76ms | 244.00ms | 202.05ms |
| 1000x12 - 4 sources - dynamic (large) | 283.04ms | 1.85s | 3.55s | N/A | 2.53s (partial) | 3.91s | 470.21ms | 338.71ms |
| 1000x5 - 25 sources (wide dense) | 411.65ms | 3.60s | 2.60s | N/A | 4.14s | 3.40s | 595.10ms | 498.44ms |
| 5x500 - 3 sources (deep) | 189.25ms | 1.15s | 231.85ms | N/A | 1.37s | 227.97ms | 262.45ms | 206.75ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.54ms | 1.72s | 454.03ms | N/A | 1.76s (partial) | 486.22ms | 380.76ms | 258.85ms |

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
