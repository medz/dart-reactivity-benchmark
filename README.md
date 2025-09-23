# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.92s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.41s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.63s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.75s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.58s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.62s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.28ms | 2.34s | 200.51ms | 1.40s | 225.63ms | 253.62ms | 161.30ms (fail) |
| broadPropagation | 323.39ms | 4.40s | 457.14ms | 81.62ms (fail) | 461.18ms | 464.49ms | 6.36ms (fail) |
| deepPropagation | 98.85ms | 1.54s | 178.68ms | 1.92s (fail) | 173.80ms | 141.26ms | 142.34ms (fail) |
| diamond | 216.54ms | 2.39s | 278.50ms | 2.59s (fail) | 282.89ms | 336.55ms | 204.68ms (fail) |
| mux | 338.00ms | 1.86s | 394.13ms | 555.90ms (fail) | 410.41ms | 426.17ms | 199.96ms (fail) |
| repeatedObservers | 50.42ms | 231.84ms | 40.01ms | 394.09ms (fail) | 46.16ms | 92.19ms | 53.70ms (fail) |
| triangle | 78.34ms | 765.79ms | 99.62ms | 934.26ms (fail) | 100.05ms | 98.19ms | 81.78ms (fail) |
| unstable | 139.74ms | 343.24ms | 74.01ms | 648.41ms (fail) | 75.58ms | 168.11ms | 340.65ms (fail) |
| molBench | 485.93ms | 582.89ms | 488.88ms | 12.06ms | 485.68ms | 501.97ms | 966μs |
| create_signals | 28.39ms | 76.08ms | 4.69ms | 25.06ms | 27.37ms | 81.20ms | 62.20ms |
| comp_0to1 | 11.31ms | 26.43ms | 18.36ms | 14.30ms | 12.15ms | 27.20ms | 57.84ms |
| comp_1to1 | 17.43ms | 28.99ms | 12.75ms | 24.10ms | 29.94ms | 43.08ms | 59.49ms |
| comp_2to1 | 10.92ms | 24.68ms | 18.94ms | 33.31ms | 15.12ms | 11.02ms | 39.83ms |
| comp_4to1 | 6.37ms | 17.36ms | 7.57ms | 9.99ms | 2.09ms | 13.05ms | 17.86ms |
| comp_1000to1 | 4μs | 21μs | 4μs | 4μs | 5μs | 15μs | 44μs |
| comp_1to2 | 19.10ms | 39.04ms | 15.61ms | 11.79ms | 19.04ms | 36.20ms | 49.34ms |
| comp_1to4 | 12.50ms | 27.11ms | 20.58ms | 21.72ms | 7.54ms | 22.69ms | 47.41ms |
| comp_1to8 | 6.70ms | 25.52ms | 5.55ms | 5.69ms | 6.75ms | 24.05ms | 46.82ms |
| comp_1to1000 | 3.63ms | 15.46ms | 5.16ms | 4.74ms | 4.44ms | 15.81ms | 42.28ms |
| update_1to1 | 5.45ms | 26.98ms | 8.24ms | 86.89ms | 10.15ms | 18.57ms | 6.02ms |
| update_2to1 | 2.83ms | 11.08ms | 4.46ms | 44.01ms | 4.52ms | 9.32ms | 3.08ms |
| update_4to1 | 1.44ms | 7.51ms | 2.17ms | 21.33ms | 2.55ms | 4.63ms | 1.60ms |
| update_1000to1 | 24μs | 83μs | 38μs | 184μs | 25μs | 46μs | 16μs |
| update_1to2 | 3.00ms | 13.43ms | 4.08ms | 44.47ms | 4.54ms | 9.39ms | 3.03ms |
| update_1to4 | 1.44ms | 6.14ms | 2.13ms | 21.44ms | 2.61ms | 4.63ms | 1.53ms |
| update_1to1000 | 53μs | 192μs | 69μs | 149μs | 50μs | 153μs | 415μs |
| cellx1000 | 10.36ms | 88.77ms | 11.21ms | N/A | 10.78ms | 12.37ms | 8.08ms |
| cellx2500 | 27.23ms | 295.94ms | 37.59ms | N/A | 42.46ms | 44.15ms | 36.94ms |
| cellx5000 | 77.84ms | 643.70ms | 131.85ms | N/A | 102.89ms | 131.68ms | 87.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.89ms | 2.03s | 521.80ms | 2.17s | 506.13ms | 328.57ms | 256.43ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.43ms | 1.52s | 293.16ms | 1.49s (partial) | 285.70ms | 221.75ms | 199.02ms |
| 1000x12 - 4 sources - dynamic (large) | 363.34ms | 1.93s | 3.81s | 2.60s (partial) | 3.77s | 450.67ms | 364.88ms |
| 1000x5 - 25 sources (wide dense) | 499.72ms | 3.53s | 2.76s | 4.21s | 3.34s | 834.23ms | 519.96ms |
| 5x500 - 3 sources (deep) | 203.80ms | 1.17s | 251.14ms | 1.46s | 225.59ms | 233.88ms | 214.96ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 288.05ms | 1.74s | 471.99ms | 1.80s (partial) | 483.44ms | 345.63ms | 264.56ms |

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
