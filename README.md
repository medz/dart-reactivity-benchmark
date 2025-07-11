# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.95s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.45s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.35s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.44s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.71s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.69s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 213.12ms | 2.35s | 201.82ms | 1.37s | 207.53ms | 288.60ms | 167.17ms (fail) |
| broadPropagation | 402.33ms | 4.53s | 452.10ms | 82.88ms (fail) | 460.03ms | 519.32ms | 5.92ms (fail) |
| deepPropagation | 97.31ms | 1.55s | 175.48ms | 2.05s (fail) | 172.00ms | 173.44ms | 151.77ms (fail) |
| diamond | 222.01ms | 2.45s | 282.84ms | 2.77s (fail) | 288.60ms | 351.32ms | 182.82ms (fail) |
| mux | 404.04ms | 1.82s | 406.54ms | 569.89ms (fail) | 413.49ms | 438.96ms | 198.01ms (fail) |
| repeatedObservers | 48.12ms | 235.96ms | 40.20ms | 385.52ms (fail) | 44.86ms | 86.53ms | 52.92ms (fail) |
| triangle | 117.19ms | 777.38ms | 99.92ms | 820.95ms (fail) | 103.17ms | 115.02ms | 78.50ms (fail) |
| unstable | 66.10ms | 352.87ms | 70.14ms | 626.31ms (fail) | 79.00ms | 102.97ms | 337.05ms (fail) |
| molBench | 484.76ms | 571.33ms | 489.95ms | 12.14ms | 485.12ms | 501.38ms | 1.10ms |
| create_signals | 27.73ms | 70.05ms | 5.22ms | 24.30ms | 26.40ms | 48.75ms | 59.87ms |
| comp_0to1 | 11.07ms | 35.27ms | 17.62ms | 15.22ms | 11.63ms | 47.06ms | 53.33ms |
| comp_1to1 | 32.46ms | 33.41ms | 10.72ms | 31.02ms | 21.16ms | 40.64ms | 56.14ms |
| comp_2to1 | 21.47ms | 24.05ms | 18.19ms | 32.21ms | 9.02ms | 9.61ms | 36.63ms |
| comp_4to1 | 7.49ms | 17.74ms | 8.16ms | 12.62ms | 1.97ms | 12.69ms | 16.71ms |
| comp_1000to1 | 4μs | 22μs | 5μs | 6μs | 5μs | 19μs | 42μs |
| comp_1to2 | 10.93ms | 35.58ms | 21.83ms | 12.21ms | 18.31ms | 24.52ms | 45.60ms |
| comp_1to4 | 18.45ms | 26.43ms | 28.34ms | 23.58ms | 9.34ms | 24.99ms | 44.76ms |
| comp_1to8 | 7.02ms | 22.32ms | 5.57ms | 8.28ms | 6.42ms | 30.96ms | 43.21ms |
| comp_1to1000 | 9.44ms | 16.09ms | 4.82ms | 5.87ms | 4.43ms | 16.04ms | 39.31ms |
| update_1to1 | 5.33ms | 25.27ms | 8.60ms | 85.13ms | 9.00ms | 15.57ms | 6.02ms |
| update_2to1 | 2.64ms | 12.79ms | 4.27ms | 44.48ms | 4.46ms | 7.71ms | 2.84ms |
| update_4to1 | 1.35ms | 7.60ms | 2.20ms | 20.52ms | 2.21ms | 3.83ms | 1.44ms |
| update_1000to1 | 12μs | 70μs | 21μs | 211μs | 36μs | 38μs | 14μs |
| update_1to2 | 3.61ms | 12.47ms | 4.86ms | 45.19ms | 4.67ms | 7.69ms | 2.83ms |
| update_1to4 | 1.36ms | 5.71ms | 2.15ms | 21.55ms | 2.24ms | 3.88ms | 1.45ms |
| update_1to1000 | 56μs | 175μs | 144μs | 144μs | 41μs | 179μs | 385μs |
| cellx1000 | 10.41ms | 71.58ms | 9.79ms | N/A | 9.74ms | 11.63ms | 5.61ms |
| cellx2500 | 35.85ms | 265.19ms | 26.55ms | N/A | 33.18ms | 32.45ms | 24.98ms |
| cellx5000 | 79.88ms | 569.69ms | 74.63ms | N/A | 69.28ms | 86.41ms | 59.63ms |
| 10x5 - 2 sources - read 20.0% (simple) | 219.91ms | 2.00s | 452.02ms | 2.20s | 505.96ms | 354.49ms | 258.32ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 173.96ms | 1.54s | 267.27ms | 1.50s (partial) | 279.99ms | 245.19ms | 222.10ms |
| 1000x12 - 4 sources - dynamic (large) | 315.30ms | 1.90s | 3.75s | 2.62s (partial) | 4.02s | 467.02ms | 355.08ms |
| 1000x5 - 25 sources (wide dense) | 444.62ms | 3.53s | 2.72s | 4.12s | 3.43s | 729.70ms | 508.09ms |
| 5x500 - 3 sources (deep) | 195.58ms | 1.14s | 231.92ms | 1.40s | 227.01ms | 271.75ms | 211.38ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.03ms | 1.71s | 458.51ms | 1.79s (partial) | 475.50ms | 383.95ms | 268.41ms |

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
