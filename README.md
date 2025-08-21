# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.93s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.38s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.28s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.99s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.56s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.62s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.73ms | 2.42s | 200.88ms | 1.53s | 212.89ms | 254.72ms | 151.32ms (fail) |
| broadPropagation | 322.24ms | 4.42s | 457.03ms | 90.31ms (fail) | 471.98ms | 456.06ms | 6.97ms (fail) |
| deepPropagation | 100.04ms | 1.57s | 179.88ms | 2.00s (fail) | 178.12ms | 141.36ms | 145.21ms (fail) |
| diamond | 224.63ms | 2.46s | 277.77ms | 2.66s (fail) | 283.11ms | 309.13ms | 194.90ms (fail) |
| mux | 340.57ms | 1.87s | 387.34ms | 577.53ms (fail) | 411.78ms | 400.54ms | 195.75ms (fail) |
| repeatedObservers | 50.44ms | 237.07ms | 40.07ms | 396.97ms (fail) | 46.07ms | 90.38ms | 52.87ms (fail) |
| triangle | 90.04ms | 804.31ms | 99.83ms | 937.06ms (fail) | 104.18ms | 100.83ms | 79.70ms (fail) |
| unstable | 141.44ms | 350.86ms | 75.03ms | 644.30ms (fail) | 76.29ms | 166.97ms | 340.71ms (fail) |
| molBench | 488.34ms | 585.80ms | 487.45ms | 10.99ms | 487.89ms | 501.65ms | 1.14ms |
| create_signals | 29.72ms | 82.49ms | 5.26ms | 25.38ms | 26.73ms | 78.49ms | 76.54ms |
| comp_0to1 | 17.90ms | 15.89ms | 18.10ms | 14.38ms | 12.13ms | 26.37ms | 58.69ms |
| comp_1to1 | 17.56ms | 46.42ms | 12.70ms | 23.29ms | 28.43ms | 47.40ms | 58.16ms |
| comp_2to1 | 10.73ms | 38.65ms | 21.36ms | 24.73ms | 21.68ms | 22.49ms | 38.59ms |
| comp_4to1 | 5.09ms | 24.33ms | 8.35ms | 6.67ms | 6.85ms | 15.11ms | 16.98ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 4μs | 5μs | 28μs | 44μs |
| comp_1to2 | 14.37ms | 37.40ms | 15.35ms | 13.28ms | 10.48ms | 28.88ms | 50.48ms |
| comp_1to4 | 17.65ms | 19.86ms | 27.13ms | 26.58ms | 14.22ms | 25.63ms | 46.27ms |
| comp_1to8 | 10.07ms | 23.50ms | 11.97ms | 5.14ms | 10.37ms | 26.29ms | 45.84ms |
| comp_1to1000 | 4.80ms | 15.34ms | 6.71ms | 4.29ms | 4.24ms | 16.25ms | 41.43ms |
| update_1to1 | 5.52ms | 26.96ms | 8.31ms | 82.50ms | 11.53ms | 17.42ms | 6.01ms |
| update_2to1 | 2.78ms | 14.54ms | 4.36ms | 40.92ms | 5.46ms | 8.44ms | 3.10ms |
| update_4to1 | 1.41ms | 7.41ms | 2.13ms | 19.90ms | 2.84ms | 4.24ms | 1.52ms |
| update_1000to1 | 22μs | 67μs | 37μs | 194μs | 28μs | 42μs | 15μs |
| update_1to2 | 2.74ms | 13.45ms | 4.17ms | 41.83ms | 5.32ms | 8.59ms | 3.02ms |
| update_1to4 | 1.39ms | 7.23ms | 2.13ms | 20.17ms | 2.88ms | 4.22ms | 1.53ms |
| update_1to1000 | 43μs | 171μs | 853μs | 156μs | 47μs | 154μs | 408μs |
| cellx1000 | 7.66ms | 96.69ms | 10.29ms | N/A | 9.97ms | 12.33ms | 6.67ms |
| cellx2500 | 25.50ms | 296.16ms | 35.20ms | N/A | 31.82ms | 45.62ms | 34.68ms |
| cellx5000 | 68.53ms | 612.94ms | 91.73ms | N/A | 96.88ms | 117.58ms | 79.76ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.54ms | 2.05s | 455.63ms | 2.29s | 509.16ms | 325.34ms | 265.11ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.83ms | 1.51s | 280.92ms | 1.53s (partial) | 280.52ms | 221.94ms | 203.86ms |
| 1000x12 - 4 sources - dynamic (large) | 359.64ms | 1.92s | 3.74s | 2.58s (partial) | 3.76s | 447.64ms | 356.60ms |
| 1000x5 - 25 sources (wide dense) | 496.57ms | 3.52s | 2.72s | 4.48s | 3.45s | 802.12ms | 517.13ms |
| 5x500 - 3 sources (deep) | 199.48ms | 1.15s | 237.59ms | 1.65s | 224.82ms | 228.07ms | 212.07ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.02ms | 1.74s | 455.88ms | 1.89s (partial) | 482.60ms | 333.59ms | 266.73ms |

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
