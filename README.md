# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.94s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.26s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.23s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.61s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.07s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 161.61ms | 2.38s | 200.78ms | 1.48s | 211.93ms | 253.90ms | 164.54ms (fail) |
| broadPropagation | 320.03ms | 4.37s | 459.10ms | 83.85ms (fail) | 465.57ms | 457.31ms | 6.36ms (fail) |
| deepPropagation | 99.09ms | 1.57s | 180.29ms | 2.03s (fail) | 176.74ms | 141.43ms | 144.26ms (fail) |
| diamond | 219.47ms | 2.44s | 279.45ms | 2.72s (fail) | 287.15ms | 315.51ms | 189.44ms (fail) |
| mux | 338.77ms | 1.85s | 396.18ms | 575.44ms (fail) | 416.51ms | 398.69ms | 193.12ms (fail) |
| repeatedObservers | 50.23ms | 236.05ms | 40.28ms | 391.18ms (fail) | 46.02ms | 91.21ms | 53.72ms (fail) |
| triangle | 77.76ms | 778.85ms | 99.91ms | 924.97ms (fail) | 102.06ms | 99.09ms | 79.70ms (fail) |
| unstable | 139.87ms | 350.99ms | 74.14ms | 631.27ms (fail) | 75.48ms | 167.09ms | 344.05ms (fail) |
| molBench | 488.37ms | 585.19ms | 484.99ms | 11.22ms | 485.72ms | 500.24ms | 1.17ms |
| create_signals | 27.99ms | 73.69ms | 4.73ms | 24.37ms | 26.07ms | 79.39ms | 66.02ms |
| comp_0to1 | 10.59ms | 29.13ms | 17.93ms | 15.34ms | 11.68ms | 26.09ms | 56.67ms |
| comp_1to1 | 17.15ms | 45.73ms | 14.55ms | 27.21ms | 28.20ms | 40.08ms | 65.03ms |
| comp_2to1 | 19.00ms | 21.77ms | 14.00ms | 26.37ms | 14.62ms | 31.74ms | 44.02ms |
| comp_4to1 | 3.94ms | 13.52ms | 14.29ms | 5.41ms | 1.95ms | 12.54ms | 18.64ms |
| comp_1000to1 | 4μs | 16μs | 4μs | 3μs | 5μs | 19μs | 47μs |
| comp_1to2 | 13.28ms | 35.07ms | 26.18ms | 12.55ms | 13.84ms | 41.64ms | 49.41ms |
| comp_1to4 | 19.41ms | 17.68ms | 23.17ms | 27.30ms | 9.48ms | 35.10ms | 50.30ms |
| comp_1to8 | 7.62ms | 20.47ms | 9.09ms | 8.74ms | 7.88ms | 23.21ms | 47.71ms |
| comp_1to1000 | 4.47ms | 15.38ms | 9.46ms | 4.90ms | 4.44ms | 14.78ms | 41.55ms |
| update_1to1 | 5.80ms | 24.45ms | 10.13ms | 81.46ms | 10.26ms | 17.01ms | 6.01ms |
| update_2to1 | 2.89ms | 11.30ms | 7.40ms | 41.13ms | 4.50ms | 8.45ms | 3.07ms |
| update_4to1 | 1.48ms | 7.87ms | 2.13ms | 19.86ms | 2.63ms | 4.28ms | 1.51ms |
| update_1000to1 | 13μs | 68μs | 37μs | 197μs | 25μs | 53μs | 15μs |
| update_1to2 | 2.89ms | 14.46ms | 7.30ms | 42.80ms | 4.50ms | 8.43ms | 3.01ms |
| update_1to4 | 1.52ms | 5.57ms | 2.11ms | 20.04ms | 2.54ms | 4.26ms | 1.50ms |
| update_1to1000 | 45μs | 174μs | 2.83ms | 115μs | 45μs | 392μs | 432μs |
| cellx1000 | 7.60ms | 83.58ms | 10.11ms | N/A | 10.07ms | 12.91ms | 5.77ms |
| cellx2500 | 21.04ms | 264.22ms | 28.61ms | N/A | 38.36ms | 37.76ms | 31.96ms |
| cellx5000 | 55.80ms | 606.74ms | 77.98ms | N/A | 73.63ms | 93.87ms | 80.85ms |
| 10x5 - 2 sources - read 20.0% (simple) | 243.75ms | 2.00s | 449.81ms | 2.35s | 506.57ms | 327.50ms | 240.40ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 204.89ms | 1.53s | 273.75ms | 1.52s (partial) | 280.16ms | 218.90ms | 199.02ms |
| 1000x12 - 4 sources - dynamic (large) | 363.55ms | 1.84s | 3.75s | 2.57s (partial) | 3.77s | 437.99ms | 352.47ms |
| 1000x5 - 25 sources (wide dense) | 516.50ms | 3.48s | 2.73s | 4.18s | 3.43s | 795.01ms | 518.78ms |
| 5x500 - 3 sources (deep) | 201.89ms | 1.17s | 237.43ms | 1.44s | 223.87ms | 226.10ms | 213.49ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 287.55ms | 1.73s | 464.21ms | 1.79s (partial) | 489.14ms | 333.22ms | 262.51ms |

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
