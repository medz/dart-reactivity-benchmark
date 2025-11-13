# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.28s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.67s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.21s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.14s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.86s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.39s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.34s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 132.87ms | 2.38s | 202.47ms | 1.37s | 228.25ms | 240.95ms | 165.32ms |
| broadPropagation | 243.43ms | 4.52s | 449.53ms | 81.84ms (fail) | 457.12ms | 447.65ms | 398.19ms |
| deepPropagation | 78.86ms | 1.49s | 176.03ms | 1.85s (fail) | 179.73ms | 131.30ms | 155.13ms |
| diamond | 153.87ms | 2.38s | 286.61ms | 2.53s (fail) | 285.48ms | 345.89ms | 218.48ms |
| mux | 298.61ms | 1.86s | 376.37ms | 567.98ms (fail) | 389.74ms | 389.81ms | 366.07ms |
| repeatedObservers | 27.00ms | 227.64ms | 40.50ms | 406.33ms (fail) | 46.28ms | 88.20ms | 58.72ms |
| triangle | 64.40ms | 754.90ms | 100.73ms | 924.24ms (fail) | 101.39ms | 96.67ms | 84.69ms |
| unstable | 47.20ms | 344.42ms | 69.57ms | 662.27ms (fail) | 78.40ms | 102.54ms | 343.87ms |
| molBench | 484.41ms | 591.81ms | 483.08ms | 11.59ms | 495.17ms | 497.65ms | 494.07ms |
| create_signals | 8.89ms | 52.24ms | 4.74ms | 24.99ms | 27.08ms | 60.85ms | 60.62ms |
| comp_0to1 | 9.47ms | 15.76ms | 18.07ms | 15.41ms | 12.12ms | 44.47ms | 51.97ms |
| comp_1to1 | 23.92ms | 39.83ms | 13.35ms | 29.40ms | 28.89ms | 41.79ms | 60.51ms |
| comp_2to1 | 2.51ms | 36.22ms | 10.18ms | 31.77ms | 8.23ms | 14.45ms | 37.91ms |
| comp_4to1 | 2.54ms | 24.86ms | 11.12ms | 9.68ms | 2.90ms | 4.41ms | 17.06ms |
| comp_1000to1 | 3μs | 16μs | 4μs | 4μs | 5μs | 14μs | 39μs |
| comp_1to2 | 22.11ms | 37.20ms | 14.91ms | 13.69ms | 21.65ms | 32.31ms | 47.87ms |
| comp_1to4 | 15.15ms | 22.91ms | 12.64ms | 26.93ms | 9.92ms | 21.67ms | 43.38ms |
| comp_1to8 | 6.28ms | 24.13ms | 7.90ms | 7.00ms | 9.12ms | 20.31ms | 42.39ms |
| comp_1to1000 | 2.85ms | 15.91ms | 4.00ms | 5.35ms | 4.38ms | 14.15ms | 37.66ms |
| update_1to1 | 7.42ms | 27.61ms | 8.73ms | 78.89ms | 9.40ms | 14.19ms | 6.10ms |
| update_2to1 | 4.86ms | 13.12ms | 4.39ms | 39.97ms | 4.73ms | 6.95ms | 3.06ms |
| update_4to1 | 1.44ms | 7.40ms | 2.22ms | 18.94ms | 2.35ms | 3.58ms | 1.54ms |
| update_1000to1 | 22μs | 69μs | 22μs | 179μs | 23μs | 35μs | 15μs |
| update_1to2 | 3.62ms | 13.87ms | 4.35ms | 40.59ms | 4.66ms | 7.12ms | 3.18ms |
| update_1to4 | 2.31ms | 6.91ms | 2.24ms | 19.46ms | 2.53ms | 3.51ms | 1.52ms |
| update_1to1000 | 46μs | 179μs | 65μs | 112μs | 44μs | 149μs | 368μs |
| cellx1000 | 5.57ms | 90.61ms | 10.51ms | N/A | 10.40ms | 10.15ms | 11.01ms |
| cellx2500 | 16.07ms | 290.44ms | 48.84ms | N/A | 44.75ms | 34.23ms | 41.35ms |
| cellx5000 | 42.19ms | 598.10ms | 128.71ms | N/A | 94.60ms | 120.41ms | 124.58ms |
| 10x5 - 2 sources - read 20.0% (simple) | 180.79ms | 1.96s | 433.62ms | 2.11s | 500.20ms | 332.16ms | 254.75ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.30ms | 1.48s | 265.63ms | 1.44s (partial) | 276.34ms | 224.72ms | 197.61ms |
| 1000x12 - 4 sources - dynamic (large) | 291.15ms | 1.88s | 3.67s | 2.41s (partial) | 3.55s | 454.90ms | 377.16ms |
| 1000x5 - 25 sources (wide dense) | 543.51ms | 3.44s | 2.60s | 4.22s | 3.26s | 830.14ms | 491.73ms |
| 5x500 - 3 sources (deep) | 158.67ms | 1.14s | 226.50ms | 1.58s | 225.98ms | 229.69ms | 211.70ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 241.43ms | 1.63s | 444.69ms | 1.81s (partial) | 484.09ms | 341.36ms | 263.02ms |

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
