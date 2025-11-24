# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.32s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.61s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.05s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.06s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.47s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.52s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.45s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 131.51ms | 2.41s | 201.04ms | 1.41s | 209.56ms | 247.44ms | 169.23ms |
| broadPropagation | 243.62ms | 4.39s | 451.97ms | 84.68ms (fail) | 460.79ms | 449.01ms | 394.76ms |
| deepPropagation | 83.45ms | 1.51s | 176.92ms | 1.88s (fail) | 179.90ms | 132.60ms | 155.69ms |
| diamond | 163.99ms | 2.41s | 282.16ms | 2.65s (fail) | 289.04ms | 310.83ms | 220.48ms |
| mux | 299.94ms | 1.86s | 380.54ms | 540.62ms (fail) | 389.20ms | 380.24ms | 366.39ms |
| repeatedObservers | 27.08ms | 230.62ms | 40.97ms | 403.58ms (fail) | 46.15ms | 88.05ms | 59.24ms |
| triangle | 82.75ms | 748.09ms | 100.55ms | 884.42ms (fail) | 102.79ms | 98.41ms | 85.62ms |
| unstable | 47.97ms | 339.22ms | 69.87ms | 653.09ms (fail) | 78.24ms | 103.03ms | 342.04ms |
| molBench | 486.11ms | 592.62ms | 483.67ms | 11.38ms | 495.07ms | 374.56ms | 492.42ms |
| create_signals | 10.45ms | 84.38ms | 5.30ms | 25.24ms | 27.03ms | 53.44ms | 63.75ms |
| comp_0to1 | 11.14ms | 15.92ms | 18.44ms | 14.68ms | 12.01ms | 23.45ms | 60.38ms |
| comp_1to1 | 18.50ms | 45.90ms | 14.62ms | 25.00ms | 28.78ms | 25.57ms | 55.82ms |
| comp_2to1 | 8.47ms | 23.92ms | 22.86ms | 25.07ms | 9.52ms | 38.91ms | 39.66ms |
| comp_4to1 | 5.23ms | 28.86ms | 12.30ms | 6.37ms | 2.22ms | 22.79ms | 16.32ms |
| comp_1000to1 | 5μs | 26μs | 4μs | 3μs | 7μs | 25μs | 40μs |
| comp_1to2 | 22.80ms | 35.45ms | 18.26ms | 11.92ms | 13.85ms | 32.14ms | 43.90ms |
| comp_1to4 | 17.71ms | 24.15ms | 35.94ms | 24.40ms | 12.25ms | 32.78ms | 44.15ms |
| comp_1to8 | 7.08ms | 24.98ms | 8.81ms | 5.08ms | 6.72ms | 27.11ms | 41.45ms |
| comp_1to1000 | 7.13ms | 16.06ms | 5.27ms | 4.61ms | 4.54ms | 14.78ms | 37.35ms |
| update_1to1 | 6.53ms | 27.45ms | 8.80ms | 79.70ms | 9.34ms | 14.06ms | 6.11ms |
| update_2to1 | 4.95ms | 13.71ms | 4.36ms | 41.38ms | 4.70ms | 6.94ms | 3.06ms |
| update_4to1 | 2.08ms | 7.45ms | 2.21ms | 19.30ms | 2.33ms | 3.58ms | 1.58ms |
| update_1000to1 | 16μs | 70μs | 32μs | 178μs | 23μs | 34μs | 15μs |
| update_1to2 | 4.81ms | 13.85ms | 4.35ms | 41.52ms | 4.62ms | 6.97ms | 3.08ms |
| update_1to4 | 2.24ms | 6.93ms | 2.23ms | 19.64ms | 2.55ms | 3.48ms | 1.53ms |
| update_1to1000 | 46μs | 161μs | 205μs | 121μs | 44μs | 278μs | 371μs |
| cellx1000 | 5.74ms | 81.55ms | 10.20ms | N/A | 10.87ms | 10.10ms | 9.79ms |
| cellx2500 | 16.80ms | 301.35ms | 29.14ms | N/A | 37.44ms | 31.57ms | 33.79ms |
| cellx5000 | 38.73ms | 650.75ms | 82.56ms | N/A | 79.83ms | 98.31ms | 115.85ms |
| 10x5 - 2 sources - read 20.0% (simple) | 182.78ms | 1.95s | 441.15ms | 2.16s | 515.98ms | 320.00ms | 240.45ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.60ms | 1.47s | 271.02ms | 1.47s (partial) | 278.11ms | 227.84ms | 196.33ms |
| 1000x12 - 4 sources - dynamic (large) | 282.78ms | 1.92s | 3.68s | 2.51s (partial) | 3.97s | 461.00ms | 363.21ms |
| 1000x5 - 25 sources (wide dense) | 539.67ms | 3.45s | 2.52s | 4.24s | 3.48s | 834.33ms | 477.83ms |
| 5x500 - 3 sources (deep) | 157.48ms | 1.13s | 229.07ms | 1.43s | 225.87ms | 234.50ms | 208.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 245.00ms | 1.70s | 453.17ms | 1.78s (partial) | 480.50ms | 342.52ms | 259.57ms |

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
