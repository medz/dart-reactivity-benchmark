# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.92s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.25s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.62s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.43s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.14s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 159.56ms | 2.39s | 199.89ms | 1.39s | 210.91ms | 258.37ms | 149.02ms (fail) |
| broadPropagation | 318.05ms | 4.50s | 457.40ms | 82.77ms (fail) | 456.60ms | 452.12ms | 6.52ms (fail) |
| deepPropagation | 99.27ms | 1.55s | 180.83ms | 1.91s (fail) | 176.10ms | 148.23ms | 147.38ms (fail) |
| diamond | 223.87ms | 2.43s | 283.66ms | 2.54s (fail) | 290.79ms | 311.65ms | 191.18ms (fail) |
| mux | 343.82ms | 1.86s | 391.67ms | 586.85ms (fail) | 417.68ms | 399.78ms | 195.13ms (fail) |
| repeatedObservers | 50.36ms | 233.53ms | 40.34ms | 383.61ms (fail) | 47.53ms | 91.23ms | 48.35ms (fail) |
| triangle | 78.76ms | 773.28ms | 99.78ms | 989.46ms (fail) | 100.14ms | 99.44ms | 76.79ms (fail) |
| unstable | 140.19ms | 352.23ms | 73.44ms | 651.21ms (fail) | 76.61ms | 169.73ms | 335.08ms (fail) |
| molBench | 487.29ms | 584.07ms | 488.49ms | 11.37ms | 485.27ms | 501.52ms | 1.15ms |
| create_signals | 23.98ms | 82.20ms | 5.37ms | 23.61ms | 25.51ms | 59.17ms | 67.35ms |
| comp_0to1 | 12.74ms | 45.87ms | 17.59ms | 13.66ms | 11.34ms | 25.41ms | 59.43ms |
| comp_1to1 | 19.12ms | 17.63ms | 15.00ms | 22.99ms | 27.48ms | 52.90ms | 58.37ms |
| comp_2to1 | 13.03ms | 26.67ms | 17.23ms | 33.44ms | 14.32ms | 22.01ms | 37.82ms |
| comp_4to1 | 1.94ms | 16.61ms | 13.98ms | 7.08ms | 3.19ms | 4.32ms | 16.85ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 4μs | 5μs | 15μs | 45μs |
| comp_1to2 | 14.38ms | 42.09ms | 30.85ms | 11.05ms | 13.97ms | 30.78ms | 48.11ms |
| comp_1to4 | 16.46ms | 29.78ms | 23.98ms | 19.35ms | 13.93ms | 21.30ms | 46.60ms |
| comp_1to8 | 10.08ms | 22.81ms | 12.04ms | 5.30ms | 8.71ms | 22.30ms | 45.72ms |
| comp_1to1000 | 5.89ms | 15.30ms | 8.88ms | 4.07ms | 4.42ms | 15.21ms | 42.03ms |
| update_1to1 | 5.53ms | 27.66ms | 8.33ms | 85.31ms | 10.14ms | 16.75ms | 6.02ms |
| update_2to1 | 2.77ms | 14.34ms | 4.49ms | 44.11ms | 4.65ms | 8.43ms | 3.09ms |
| update_4to1 | 1.41ms | 6.75ms | 2.09ms | 19.40ms | 2.59ms | 4.20ms | 1.52ms |
| update_1000to1 | 19μs | 57μs | 21μs | 172μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.73ms | 14.47ms | 4.06ms | 43.47ms | 4.66ms | 8.51ms | 3.01ms |
| update_1to4 | 1.36ms | 6.81ms | 2.06ms | 20.04ms | 2.58ms | 4.19ms | 1.53ms |
| update_1to1000 | 32μs | 181μs | 220μs | 104μs | 43μs | 156μs | 411μs |
| cellx1000 | 8.83ms | 75.97ms | 9.64ms | N/A | 9.91ms | 10.23ms | 5.16ms |
| cellx2500 | 25.72ms | 220.47ms | 26.95ms | N/A | 33.44ms | 34.92ms | 24.21ms |
| cellx5000 | 91.83ms | 561.79ms | 72.93ms | N/A | 79.29ms | 95.20ms | 51.86ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.69ms | 2.00s | 442.35ms | 2.15s | 506.21ms | 336.31ms | 240.21ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.82ms | 1.48s | 273.62ms | 1.47s (partial) | 280.83ms | 223.88ms | 189.38ms |
| 1000x12 - 4 sources - dynamic (large) | 356.39ms | 1.75s | 3.67s | 2.45s (partial) | 4.01s | 445.48ms | 334.19ms |
| 1000x5 - 25 sources (wide dense) | 495.75ms | 3.49s | 2.76s | 4.03s | 3.57s | 808.54ms | 493.79ms |
| 5x500 - 3 sources (deep) | 199.28ms | 1.13s | 228.87ms | 1.34s | 224.41ms | 230.32ms | 202.94ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.98ms | 1.68s | 461.61ms | 1.81s (partial) | 486.96ms | 338.06ms | 254.35ms |

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
