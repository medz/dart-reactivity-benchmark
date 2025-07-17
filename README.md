# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.46s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.25s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.34s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.73s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 156.28ms | 2.30s | 201.49ms | 1.40s | 205.01ms | 289.79ms | 150.24ms (fail) |
| broadPropagation | 320.29ms | 4.35s | 450.80ms | 84.61ms (fail) | 450.42ms | 537.78ms | 6.21ms (fail) |
| deepPropagation | 96.62ms | 1.54s | 176.83ms | 2.04s (fail) | 168.84ms | 171.69ms | 143.07ms (fail) |
| diamond | 216.69ms | 2.42s | 278.35ms | 2.82s (fail) | 277.34ms | 355.71ms | 187.94ms (fail) |
| mux | 351.95ms | 1.84s | 404.34ms | 554.43ms (fail) | 407.73ms | 449.09ms | 209.23ms (fail) |
| repeatedObservers | 50.99ms | 232.75ms | 39.80ms | 377.93ms (fail) | 44.77ms | 88.89ms | 52.67ms (fail) |
| triangle | 80.08ms | 763.47ms | 99.04ms | 960.63ms (fail) | 100.21ms | 114.82ms | 76.74ms (fail) |
| unstable | 71.06ms | 343.64ms | 70.21ms | 617.40ms (fail) | 78.78ms | 102.62ms | 338.21ms (fail) |
| molBench | 482.97ms | 568.45ms | 487.26ms | 11.14ms | 485.05ms | 488.72ms | 868μs |
| create_signals | 28.09ms | 59.46ms | 4.77ms | 25.50ms | 26.07ms | 70.20ms | 61.57ms |
| comp_0to1 | 10.37ms | 19.98ms | 18.18ms | 13.83ms | 11.53ms | 52.08ms | 52.24ms |
| comp_1to1 | 25.39ms | 31.89ms | 14.85ms | 23.02ms | 28.04ms | 24.15ms | 59.14ms |
| comp_2to1 | 15.91ms | 9.33ms | 21.69ms | 24.24ms | 10.88ms | 17.22ms | 41.60ms |
| comp_4to1 | 4.16ms | 26.39ms | 10.99ms | 4.32ms | 2.81ms | 18.79ms | 16.24ms |
| comp_1000to1 | 6μs | 16μs | 6μs | 3μs | 5μs | 16μs | 41μs |
| comp_1to2 | 14.71ms | 41.95ms | 18.09ms | 12.81ms | 14.07ms | 20.16ms | 44.47ms |
| comp_1to4 | 19.44ms | 31.34ms | 24.12ms | 24.19ms | 18.26ms | 20.69ms | 43.26ms |
| comp_1to8 | 6.71ms | 22.74ms | 8.15ms | 5.08ms | 5.66ms | 20.26ms | 42.24ms |
| comp_1to1000 | 4.54ms | 16.14ms | 5.16ms | 4.45ms | 5.44ms | 15.50ms | 38.03ms |
| update_1to1 | 5.84ms | 25.31ms | 8.79ms | 88.47ms | 8.95ms | 15.37ms | 5.72ms |
| update_2to1 | 2.83ms | 13.30ms | 4.32ms | 42.66ms | 4.52ms | 8.40ms | 2.88ms |
| update_4to1 | 1.43ms | 6.22ms | 2.22ms | 20.62ms | 2.28ms | 3.85ms | 1.46ms |
| update_1000to1 | 14μs | 56μs | 21μs | 169μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.86ms | 13.15ms | 4.67ms | 45.16ms | 4.81ms | 7.67ms | 2.86ms |
| update_1to4 | 1.48ms | 6.25ms | 2.18ms | 20.55ms | 2.27ms | 3.84ms | 1.48ms |
| update_1to1000 | 40μs | 174μs | 163μs | 114μs | 78μs | 169μs | 375μs |
| cellx1000 | 7.11ms | 78.48ms | 9.75ms | N/A | 9.89ms | 11.56ms | 5.20ms |
| cellx2500 | 19.00ms | 242.56ms | 27.55ms | N/A | 27.07ms | 32.70ms | 21.94ms |
| cellx5000 | 47.18ms | 590.61ms | 71.14ms | N/A | 69.28ms | 80.25ms | 57.18ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.24ms | 2.02s | 437.25ms | 2.20s | 509.09ms | 359.00ms | 241.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.94ms | 1.54s | 266.59ms | 1.49s (partial) | 280.21ms | 245.63ms | 199.45ms |
| 1000x12 - 4 sources - dynamic (large) | 344.42ms | 1.77s | 3.70s | 2.52s (partial) | 3.83s | 460.68ms | 338.79ms |
| 1000x5 - 25 sources (wide dense) | 494.95ms | 3.65s | 2.70s | 4.21s | 3.55s | 723.72ms | 503.00ms |
| 5x500 - 3 sources (deep) | 198.92ms | 1.15s | 226.92ms | 1.35s | 225.72ms | 267.49ms | 205.48ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 299.66ms | 1.69s | 451.47ms | 1.75s (partial) | 476.88ms | 378.05ms | 258.61ms |

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
