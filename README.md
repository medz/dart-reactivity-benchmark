# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.43s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 3.04s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 5.39s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 7.21s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 14.60s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 1.89s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 11.98s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 20.33s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 93.83ms | 1.21s | 104.65ms | 875.73ms | 106.30ms | 142.25ms | 1.11s | 95.50ms (fail) |
| broadPropagation | 163.48ms | 2.12s | 220.83ms | 35.66ms (fail) | 223.67ms | 239.91ms | 2.65s | 3.18ms (fail) |
| deepPropagation | 61.99ms | 776.41ms | 102.39ms | 1.05s (fail) | 101.75ms | 85.89ms | 1.01s | 98.55ms (fail) |
| diamond | 117.70ms | 1.22s | 151.51ms | 1.08s (fail) | 160.53ms | 181.74ms | 1.72s | 91.06ms (fail) |
| mux | 175.12ms | 961.31ms | 200.23ms | 302.30ms (fail) | 203.47ms | 258.59ms | 1.03s | 100.04ms (fail) |
| repeatedObservers | 25.33ms | 114.51ms | 22.41ms | 157.06ms (fail) | 25.43ms | 45.08ms | 108.13ms | 25.24ms (fail) |
| triangle | 49.14ms | 418.11ms | 59.59ms | 414.03ms (fail) | 58.33ms | 66.12ms | 564.54ms | 41.93ms (fail) |
| unstable | 38.91ms | 174.67ms | 36.41ms | 256.15ms (fail) | 42.98ms | 53.57ms | 169.60ms | 186.61ms (fail) |
| molBench | 289.81ms | 345.37ms | 295.31ms | 5.57ms | 295.71ms | 302.58ms | 1.02s | 432μs |
| create_signals | 14.51ms | 36.80ms | 5.93ms | 11.80ms | 9.86ms | 30.00ms | 25.31ms | 29.78ms |
| comp_0to1 | 2.86ms | 8.98ms | 9.22ms | 6.68ms | 3.28ms | 12.94ms | 18.26ms | 25.33ms |
| comp_1to1 | 5.55ms | 19.95ms | 3.20ms | 9.39ms | 7.13ms | 19.85ms | 15.88ms | 27.09ms |
| comp_2to1 | 6.23ms | 18.08ms | 5.93ms | 12.83ms | 3.67ms | 5.25ms | 22.03ms | 18.37ms |
| comp_4to1 | 6.86ms | 7.71ms | 6.79ms | 4.34ms | 3.85ms | 4.00ms | 10.42ms | 9.29ms |
| comp_1000to1 | 1μs | 10μs | 2μs | 2μs | 2μs | 9μs | 2.27ms | 21μs |
| comp_1to2 | 2.66ms | 17.28ms | 4.97ms | 6.22ms | 10.70ms | 13.49ms | 11.92ms | 22.90ms |
| comp_1to4 | 5.97ms | 9.03ms | 5.71ms | 11.01ms | 4.80ms | 9.73ms | 12.80ms | 21.90ms |
| comp_1to8 | 3.28ms | 11.53ms | 3.21ms | 2.08ms | 4.17ms | 12.84ms | 11.12ms | 22.00ms |
| comp_1to1000 | 2.52ms | 7.50ms | 2.03ms | 2.26ms | 2.74ms | 7.66ms | 9.67ms | 19.75ms |
| update_1to1 | 2.69ms | 10.08ms | 4.12ms | 44.91ms | 4.45ms | 7.17ms | 19.60ms | 2.77ms |
| update_2to1 | 1.36ms | 4.92ms | 2.01ms | 22.59ms | 2.23ms | 3.60ms | 9.91ms | 1.39ms |
| update_4to1 | 670μs | 2.58ms | 1.00ms | 11.17ms | 1.15ms | 1.78ms | 5.04ms | 693μs |
| update_1000to1 | 7μs | 25μs | 9μs | 118μs | 10μs | 19μs | 58μs | 7μs |
| update_1to2 | 2.78ms | 4.97ms | 2.01ms | 22.11ms | 2.15ms | 3.65ms | 9.89ms | 1.38ms |
| update_1to4 | 670μs | 2.57ms | 988μs | 10.89ms | 1.20ms | 1.82ms | 5.11ms | 731μs |
| update_1to1000 | 19μs | 89μs | 19μs | 64μs | 21μs | 80μs | 106μs | 206μs |
| cellx1000 | 14.88ms | 42.95ms | 4.98ms | N/A | 4.99ms | 6.63ms | 92.05ms | 3.04ms |
| cellx2500 | 62.70ms | 155.73ms | 15.24ms | N/A | 16.19ms | 22.21ms | 241.71ms | 15.29ms |
| cellx5000 | 209.18ms | 296.89ms | 33.29ms | N/A | 44.05ms | 63.97ms | 548.14ms | 34.27ms |
| 10x5 - 2 sources - read 20.0% (simple) | 154.75ms | 1.10s | 238.85ms | 1.29s | 259.99ms | 232.30ms | 1.32s (partial) | 152.86ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 107.63ms | 868.19ms | 124.56ms | 917.72ms (partial) | 132.87ms | 144.71ms | 1.31s (partial) | 108.36ms |
| 1000x12 - 4 sources - dynamic (large) | 208.13ms | 976.52ms | 1.92s | 1.30s (partial) | 2.73s | 287.20ms | 2.10s (partial) | 199.21ms |
| 1000x5 - 25 sources (wide dense) | 328.02ms | 2.11s | 1.46s | 2.29s | 2.36s | 376.32ms | 2.67s (partial) | 266.20ms |
| 5x500 - 3 sources (deep) | 106.62ms | 629.49ms | 118.31ms | 758.16ms | 114.25ms | 156.56ms | 1.02s (partial) | 115.00ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 165.32ms | 922.41ms | 227.48ms | 1.08s (partial) | 271.29ms | 239.18ms | 1.46s (partial) | 149.55ms |

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
