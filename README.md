# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.54s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.19s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.74s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.55s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.83s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.60s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.94s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.00ms | 2.33s | 200.50ms | 1.39s | 214.28ms | 241.69ms | 160.43ms (fail) |
| broadPropagation | 269.65ms | 4.44s | 462.33ms | 79.59ms (fail) | 460.38ms | 431.97ms | 6.61ms (fail) |
| deepPropagation | 80.18ms | 1.53s | 181.65ms | 1.89s (fail) | 176.59ms | 129.70ms | 144.36ms (fail) |
| diamond | 179.66ms | 2.42s | 280.39ms | 2.54s (fail) | 284.23ms | 310.11ms | 184.32ms (fail) |
| mux | 328.12ms | 1.84s | 394.05ms | 566.46ms (fail) | 412.30ms | 411.22ms | 210.84ms (fail) |
| repeatedObservers | 49.06ms | 235.25ms | 40.11ms | 386.50ms (fail) | 46.57ms | 86.77ms | 52.51ms (fail) |
| triangle | 67.72ms | 772.29ms | 101.09ms | 899.06ms (fail) | 100.18ms | 94.86ms | 78.58ms (fail) |
| unstable | 75.26ms | 343.14ms | 74.76ms | 630.30ms (fail) | 80.01ms | 102.40ms | 373.80ms (fail) |
| molBench | 485.33ms | 584.74ms | 489.55ms | 11.81ms | 486.19ms | 496.93ms | 1.02ms |
| create_signals | 26.86ms | 72.61ms | 5.37ms | 25.17ms | 27.64ms | 53.57ms | 73.25ms |
| comp_0to1 | 8.20ms | 15.60ms | 17.97ms | 14.42ms | 12.39ms | 23.59ms | 61.46ms |
| comp_1to1 | 14.08ms | 55.08ms | 14.94ms | 27.75ms | 28.98ms | 47.22ms | 66.99ms |
| comp_2to1 | 3.70ms | 25.15ms | 16.68ms | 25.82ms | 9.32ms | 35.15ms | 46.30ms |
| comp_4to1 | 2.32ms | 14.10ms | 12.03ms | 8.40ms | 2.12ms | 28.18ms | 17.73ms |
| comp_1000to1 | 3μs | 16μs | 4μs | 3μs | 4μs | 15μs | 45μs |
| comp_1to2 | 13.48ms | 42.94ms | 26.93ms | 12.80ms | 24.11ms | 32.70ms | 49.82ms |
| comp_1to4 | 18.44ms | 30.02ms | 24.22ms | 27.25ms | 16.34ms | 32.52ms | 48.13ms |
| comp_1to8 | 4.95ms | 22.53ms | 13.62ms | 5.12ms | 7.38ms | 23.58ms | 47.63ms |
| comp_1to1000 | 3.64ms | 15.28ms | 7.55ms | 4.63ms | 4.51ms | 13.97ms | 43.31ms |
| update_1to1 | 5.28ms | 28.47ms | 8.30ms | 84.13ms | 10.16ms | 14.63ms | 6.01ms |
| update_2to1 | 5.69ms | 12.61ms | 5.22ms | 41.61ms | 4.54ms | 7.21ms | 3.08ms |
| update_4to1 | 1.38ms | 6.80ms | 2.08ms | 19.80ms | 2.55ms | 3.59ms | 1.53ms |
| update_1000to1 | 13μs | 70μs | 20μs | 227μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.62ms | 13.10ms | 4.93ms | 41.08ms | 4.51ms | 7.39ms | 3.03ms |
| update_1to4 | 1.35ms | 6.82ms | 2.50ms | 21.49ms | 2.57ms | 3.62ms | 1.52ms |
| update_1to1000 | 48μs | 180μs | 1.18ms | 176μs | 59μs | 275μs | 452μs |
| cellx1000 | 9.71ms | 111.58ms | 11.89ms | N/A | 12.62ms | 17.85ms | 6.52ms |
| cellx2500 | 20.29ms | 294.10ms | 44.35ms | N/A | 55.32ms | 42.48ms | 36.99ms |
| cellx5000 | 67.28ms | 686.11ms | 139.45ms | N/A | 131.07ms | 123.00ms | 78.81ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.44ms | 2.01s | 526.79ms | 2.15s | 512.55ms | 316.04ms | 247.40ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 162.32ms | 1.53s | 291.19ms | 1.51s (partial) | 280.70ms | 224.55ms | 195.84ms |
| 1000x12 - 4 sources - dynamic (large) | 283.41ms | 1.86s | 3.81s | 2.63s (partial) | 3.83s | 450.47ms | 368.05ms |
| 1000x5 - 25 sources (wide dense) | 576.08ms | 3.54s | 2.79s | 4.50s | 3.60s | 817.49ms | 515.09ms |
| 5x500 - 3 sources (deep) | 181.75ms | 1.21s | 248.99ms | 1.61s | 227.90ms | 231.34ms | 207.13ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 252.88ms | 1.74s | 481.66ms | 1.81s (partial) | 485.70ms | 336.43ms | 264.17ms |

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
