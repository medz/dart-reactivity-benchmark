# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.50s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.42s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.66s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.37s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.04s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.26s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.79ms | 162.25ms | 2.31s | 199.84ms | 1.44s | 207.28ms | 282.21ms | 2.15s | 149.09ms (fail) |
| broadPropagation | 369.61ms | 323.51ms | 4.48s | 494.27ms | 83.03ms (fail) | 450.02ms | 507.55ms | 5.43s | 6.07ms (fail) |
| deepPropagation | 126.93ms | 98.93ms | 1.56s | 176.59ms | 1.98s (fail) | 171.85ms | 170.41ms | 1.97s | 142.41ms (fail) |
| diamond | 241.82ms | 215.24ms | 2.41s | 299.96ms | 2.70s (fail) | 280.17ms | 348.62ms | 3.38s | 185.22ms (fail) |
| mux | 386.68ms | 343.74ms | 1.83s | 401.56ms | 564.64ms (fail) | 406.92ms | 441.66ms | 2.02s | 191.34ms (fail) |
| repeatedObservers | 47.15ms | 50.16ms | 231.24ms | 41.51ms | 375.68ms (fail) | 44.88ms | 81.28ms | 215.48ms | 52.54ms (fail) |
| triangle | 88.43ms | 77.59ms | 771.34ms | 111.58ms | 957.88ms (fail) | 99.98ms | 117.66ms | 1.12s | 75.62ms (fail) |
| unstable | 62.06ms | 69.80ms | 345.25ms | 72.90ms | 608.30ms (fail) | 78.49ms | 95.92ms | 342.30ms | 338.19ms (fail) |
| molBench | 493.21ms | 491.01ms | 570.35ms | 483.45ms | 11.98ms | 485.61ms | 492.95ms | 1.70s | 914μs |
| create_signals | 7.55ms | 26.29ms | 92.59ms | 5.31ms | 24.57ms | 25.88ms | 98.65ms | 53.60ms | 60.14ms |
| comp_0to1 | 20.79ms | 9.70ms | 40.63ms | 17.27ms | 13.69ms | 11.88ms | 36.74ms | 22.92ms | 53.99ms |
| comp_1to1 | 17.67ms | 22.77ms | 18.59ms | 13.67ms | 27.20ms | 27.18ms | 49.48ms | 48.12ms | 55.44ms |
| comp_2to1 | 15.23ms | 15.70ms | 21.12ms | 16.88ms | 29.39ms | 9.54ms | 44.92ms | 27.34ms | 36.35ms |
| comp_4to1 | 4.96ms | 3.39ms | 19.28ms | 11.84ms | 12.05ms | 1.92ms | 19.58ms | 26.12ms | 16.78ms |
| comp_1000to1 | 3μs | 4μs | 16μs | 4μs | 5μs | 4μs | 18μs | 2.85ms | 41μs |
| comp_1to2 | 10.02ms | 13.35ms | 35.40ms | 30.25ms | 13.86ms | 23.51ms | 39.95ms | 34.79ms | 45.38ms |
| comp_1to4 | 8.14ms | 17.23ms | 24.10ms | 28.66ms | 27.52ms | 9.88ms | 23.21ms | 29.72ms | 44.09ms |
| comp_1to8 | 3.83ms | 6.79ms | 25.71ms | 8.76ms | 7.39ms | 13.37ms | 23.45ms | 23.71ms | 42.83ms |
| comp_1to1000 | 3.28ms | 4.74ms | 16.18ms | 6.02ms | 5.52ms | 6.33ms | 17.44ms | 18.37ms | 38.84ms |
| update_1to1 | 4.49ms | 5.41ms | 27.37ms | 8.62ms | 90.03ms | 8.98ms | 16.05ms | 43.52ms | 5.63ms |
| update_2to1 | 2.33ms | 2.82ms | 14.38ms | 4.21ms | 43.83ms | 4.54ms | 7.80ms | 21.58ms | 2.86ms |
| update_4to1 | 1.25ms | 1.41ms | 7.29ms | 2.21ms | 22.34ms | 2.22ms | 4.00ms | 10.89ms | 1.48ms |
| update_1000to1 | 11μs | 21μs | 63μs | 21μs | 219μs | 22μs | 39μs | 119μs | 14μs |
| update_1to2 | 2.32ms | 2.78ms | 12.67ms | 4.61ms | 44.27ms | 4.48ms | 8.03ms | 21.22ms | 2.88ms |
| update_1to4 | 1.16ms | 1.47ms | 6.83ms | 2.19ms | 21.76ms | 2.21ms | 4.03ms | 10.83ms | 1.49ms |
| update_1to1000 | 29μs | 57μs | 171μs | 196μs | 143μs | 42μs | 175μs | 220μs | 395μs |
| cellx1000 | 7.40ms | 36.30ms | 74.53ms | 9.73ms | N/A | 9.84ms | 13.89ms | 179.82ms | 5.80ms |
| cellx2500 | 22.94ms | 132.22ms | 274.88ms | 25.95ms | N/A | 34.27ms | 43.83ms | 537.83ms | 25.21ms |
| cellx5000 | 50.80ms | 458.22ms | 560.59ms | 68.91ms | N/A | 83.83ms | 142.09ms | 1.28s | 64.06ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.85ms | 244.86ms | 2.00s | 439.90ms | 2.31s | 511.31ms | 357.53ms | 2.57s (partial) | 237.75ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.68ms | 183.48ms | 1.53s | 266.59ms | 1.50s (partial) | 280.93ms | 242.77ms | 2.30s (partial) | 196.87ms |
| 1000x12 - 4 sources - dynamic (large) | 303.02ms | 363.07ms | 1.86s | 3.75s | 2.68s (partial) | 3.74s | 467.68ms | 3.95s (partial) | 346.36ms |
| 1000x5 - 25 sources (wide dense) | 454.72ms | 625.98ms | 3.63s | 2.71s | 4.27s | 3.44s | 585.73ms | 5.05s (partial) | 478.30ms |
| 5x500 - 3 sources (deep) | 206.32ms | 197.15ms | 1.15s | 231.04ms | 1.38s | 226.40ms | 253.63ms | 1.95s (partial) | 203.78ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.28ms | 297.31ms | 1.69s | 457.10ms | 1.79s (partial) | 485.26ms | 381.43ms | 2.72s (partial) | 264.39ms |

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
