# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.00s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.43s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.58s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.50s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.33s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.66s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.80s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 169.19ms | 2.39s | 201.71ms | 1.47s | 221.01ms | 267.94ms | 165.29ms (fail) |
| broadPropagation | 322.55ms | 4.57s | 461.56ms | 87.48ms (fail) | 461.90ms | 456.00ms | 6.71ms (fail) |
| deepPropagation | 99.06ms | 1.55s | 180.26ms | 2.05s (fail) | 180.77ms | 140.11ms | 142.80ms (fail) |
| diamond | 229.54ms | 2.44s | 282.58ms | 2.83s (fail) | 301.75ms | 311.23ms | 205.53ms (fail) |
| mux | 355.79ms | 1.88s | 398.00ms | 587.82ms (fail) | 418.82ms | 406.63ms | 197.46ms (fail) |
| repeatedObservers | 50.68ms | 231.76ms | 41.49ms | 398.95ms (fail) | 46.97ms | 91.14ms | 52.74ms (fail) |
| triangle | 78.80ms | 774.07ms | 100.31ms | 981.85ms (fail) | 103.02ms | 111.14ms | 85.41ms (fail) |
| unstable | 141.06ms | 348.00ms | 75.45ms | 648.14ms (fail) | 76.71ms | 167.66ms | 341.12ms (fail) |
| molBench | 484.85ms | 585.84ms | 479.54ms | 11.56ms | 486.54ms | 501.59ms | 963μs |
| create_signals | 28.74ms | 88.61ms | 5.17ms | 25.31ms | 29.55ms | 55.83ms | 72.40ms |
| comp_0to1 | 10.11ms | 20.66ms | 18.15ms | 14.13ms | 12.33ms | 25.83ms | 61.54ms |
| comp_1to1 | 25.20ms | 35.33ms | 15.11ms | 26.20ms | 28.36ms | 50.69ms | 65.46ms |
| comp_2to1 | 20.98ms | 8.95ms | 17.07ms | 25.64ms | 9.17ms | 23.23ms | 46.27ms |
| comp_4to1 | 4.19ms | 32.75ms | 15.66ms | 4.99ms | 2.10ms | 14.39ms | 19.98ms |
| comp_1000to1 | 4μs | 16μs | 5μs | 4μs | 5μs | 14μs | 45μs |
| comp_1to2 | 12.63ms | 45.13ms | 16.85ms | 13.19ms | 14.46ms | 40.07ms | 49.92ms |
| comp_1to4 | 15.39ms | 24.27ms | 28.81ms | 28.02ms | 8.87ms | 21.99ms | 47.31ms |
| comp_1to8 | 6.09ms | 27.21ms | 6.63ms | 5.83ms | 13.20ms | 20.62ms | 46.96ms |
| comp_1to1000 | 3.57ms | 15.68ms | 7.09ms | 4.90ms | 6.52ms | 14.76ms | 42.83ms |
| update_1to1 | 5.51ms | 27.50ms | 8.35ms | 87.51ms | 10.25ms | 16.82ms | 6.02ms |
| update_2to1 | 2.78ms | 12.70ms | 4.42ms | 44.19ms | 4.62ms | 8.43ms | 3.11ms |
| update_4to1 | 1.40ms | 7.06ms | 2.09ms | 21.57ms | 2.57ms | 4.19ms | 1.58ms |
| update_1000to1 | 13μs | 69μs | 21μs | 200μs | 23μs | 42μs | 15μs |
| update_1to2 | 2.73ms | 11.95ms | 4.17ms | 44.73ms | 4.62ms | 8.55ms | 3.06ms |
| update_1to4 | 1.39ms | 6.10ms | 2.08ms | 22.32ms | 2.54ms | 4.20ms | 1.63ms |
| update_1to1000 | 41μs | 171μs | 822μs | 133μs | 44μs | 145μs | 439μs |
| cellx1000 | 7.77ms | 105.99ms | 13.81ms | N/A | 11.51ms | 13.58ms | 7.25ms |
| cellx2500 | 36.92ms | 362.65ms | 43.35ms | N/A | 57.77ms | 63.90ms | 36.25ms |
| cellx5000 | 86.99ms | 658.72ms | 144.30ms | N/A | 117.11ms | 165.55ms | 101.95ms |
| 10x5 - 2 sources - read 20.0% (simple) | 240.59ms | 2.02s | 447.66ms | 2.16s | 507.01ms | 329.74ms | 271.20ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.93ms | 1.53s | 282.73ms | 1.50s (partial) | 280.84ms | 218.99ms | 205.07ms |
| 1000x12 - 4 sources - dynamic (large) | 364.88ms | 1.98s | 3.75s | 2.58s (partial) | 3.76s | 456.98ms | 371.53ms |
| 1000x5 - 25 sources (wide dense) | 500.96ms | 3.52s | 2.82s | 4.60s | 3.60s | 840.77ms | 517.32ms |
| 5x500 - 3 sources (deep) | 200.80ms | 1.25s | 237.01ms | 1.71s | 224.57ms | 231.08ms | 212.02ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 293.40ms | 1.78s | 463.86ms | 1.83s (partial) | 491.01ms | 345.25ms | 268.66ms |

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
