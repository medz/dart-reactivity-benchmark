# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.20s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.51s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.23s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.36s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.00ms | 2.33s | 201.67ms | 1.42s | 211.91ms | 277.04ms | 150.46ms (fail) |
| broadPropagation | 315.70ms | 4.36s | 456.18ms | 80.49ms (fail) | 456.55ms | 457.42ms | 6.49ms (fail) |
| deepPropagation | 97.50ms | 1.55s | 179.21ms | 1.92s (fail) | 170.84ms | 140.99ms | 143.43ms (fail) |
| diamond | 224.90ms | 2.39s | 280.15ms | 2.56s (fail) | 282.18ms | 323.92ms | 184.94ms (fail) |
| mux | 347.29ms | 1.84s | 399.09ms | 553.88ms (fail) | 417.07ms | 396.41ms | 189.99ms (fail) |
| repeatedObservers | 50.44ms | 229.57ms | 40.06ms | 392.69ms (fail) | 46.04ms | 90.46ms | 52.84ms (fail) |
| triangle | 76.51ms | 775.86ms | 100.81ms | 934.26ms (fail) | 103.36ms | 96.61ms | 79.77ms (fail) |
| unstable | 139.29ms | 345.36ms | 73.61ms | 618.84ms (fail) | 75.69ms | 168.41ms | 341.32ms (fail) |
| molBench | 487.62ms | 584.32ms | 487.51ms | 11.20ms | 485.96ms | 501.44ms | 1.19ms |
| create_signals | 27.42ms | 67.80ms | 5.09ms | 23.48ms | 24.85ms | 75.75ms | 66.56ms |
| comp_0to1 | 9.23ms | 28.14ms | 17.46ms | 13.18ms | 11.25ms | 26.00ms | 64.24ms |
| comp_1to1 | 20.73ms | 17.45ms | 12.61ms | 26.07ms | 27.51ms | 34.76ms | 58.27ms |
| comp_2to1 | 15.72ms | 20.12ms | 20.78ms | 24.78ms | 17.59ms | 30.40ms | 37.57ms |
| comp_4to1 | 3.26ms | 15.33ms | 19.97ms | 7.48ms | 2.92ms | 12.32ms | 17.84ms |
| comp_1000to1 | 6μs | 22μs | 4μs | 5μs | 5μs | 15μs | 45μs |
| comp_1to2 | 15.77ms | 39.15ms | 30.96ms | 15.46ms | 21.93ms | 35.74ms | 51.03ms |
| comp_1to4 | 20.48ms | 27.23ms | 24.35ms | 31.15ms | 16.60ms | 21.29ms | 52.78ms |
| comp_1to8 | 5.99ms | 21.60ms | 5.42ms | 4.96ms | 6.55ms | 21.79ms | 46.83ms |
| comp_1to1000 | 3.13ms | 15.70ms | 6.32ms | 3.94ms | 4.40ms | 15.43ms | 41.79ms |
| update_1to1 | 5.51ms | 25.84ms | 9.34ms | 84.20ms | 10.87ms | 17.03ms | 6.04ms |
| update_2to1 | 2.75ms | 13.22ms | 5.16ms | 42.10ms | 5.10ms | 8.63ms | 3.08ms |
| update_4to1 | 1.37ms | 7.03ms | 2.27ms | 20.51ms | 2.72ms | 4.24ms | 1.50ms |
| update_1000to1 | 13μs | 72μs | 23μs | 179μs | 26μs | 41μs | 15μs |
| update_1to2 | 3.44ms | 12.54ms | 4.63ms | 42.20ms | 5.10ms | 8.56ms | 3.01ms |
| update_1to4 | 1.36ms | 6.42ms | 2.33ms | 20.95ms | 2.87ms | 4.29ms | 1.50ms |
| update_1to1000 | 31μs | 171μs | 797μs | 113μs | 46μs | 145μs | 414μs |
| cellx1000 | 7.18ms | 71.11ms | 9.53ms | N/A | 9.60ms | 10.13ms | 5.12ms |
| cellx2500 | 27.41ms | 258.84ms | 26.48ms | N/A | 31.29ms | 29.32ms | 23.41ms |
| cellx5000 | 44.72ms | 555.74ms | 68.14ms | N/A | 62.88ms | 70.13ms | 79.69ms |
| 10x5 - 2 sources - read 20.0% (simple) | 239.33ms | 2.01s | 517.23ms | 2.18s | 508.91ms | 328.71ms | 245.31ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 192.63ms | 1.51s | 292.01ms | 1.47s (partial) | 283.18ms | 223.02ms | 197.32ms |
| 1000x12 - 4 sources - dynamic (large) | 346.46ms | 1.85s | 3.72s | 2.48s (partial) | 3.91s | 431.40ms | 345.32ms |
| 1000x5 - 25 sources (wide dense) | 498.73ms | 3.49s | 2.78s | 4.26s | 3.36s | 788.00ms | 484.62ms |
| 5x500 - 3 sources (deep) | 206.57ms | 1.11s | 243.05ms | 1.36s | 224.39ms | 222.80ms | 206.53ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 288.58ms | 1.65s | 473.73ms | 1.76s (partial) | 483.70ms | 331.27ms | 259.75ms |

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
