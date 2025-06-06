# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.38s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.47s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.62s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.63s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.24s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 176.95ms | 163.20ms | 2.34s | 202.31ms | 1.43s | 209.66ms | 287.66ms | 2.16s | 165.66ms (fail) |
| broadPropagation | 379.73ms | 318.21ms | 4.42s | 448.25ms | 81.75ms (fail) | 453.43ms | 513.13ms | 5.43s | 6.02ms (fail) |
| deepPropagation | 135.70ms | 98.94ms | 1.58s | 173.39ms | 1.94s (fail) | 176.71ms | 169.59ms | 1.96s | 142.09ms (fail) |
| diamond | 237.31ms | 213.21ms | 2.47s | 284.00ms | 2.56s (fail) | 281.65ms | 354.25ms | 3.44s | 186.18ms (fail) |
| mux | 380.22ms | 345.82ms | 1.83s | 399.58ms | 548.29ms (fail) | 408.63ms | 439.01ms | 2.00s | 195.93ms (fail) |
| repeatedObservers | 47.18ms | 49.91ms | 234.53ms | 40.24ms | 387.02ms (fail) | 44.67ms | 81.92ms | 216.61ms | 52.72ms (fail) |
| triangle | 87.53ms | 80.63ms | 775.59ms | 99.35ms | 959.48ms (fail) | 103.86ms | 118.40ms | 1.11s | 75.71ms (fail) |
| unstable | 62.52ms | 69.65ms | 347.95ms | 70.14ms | 614.18ms (fail) | 79.21ms | 97.98ms | 345.44ms | 339.61ms (fail) |
| molBench | 495.48ms | 491.31ms | 570.36ms | 487.19ms | 11.40ms | 492.24ms | 494.53ms | 1.71s | 890μs |
| create_signals | 5.12ms | 26.22ms | 70.10ms | 5.08ms | 24.60ms | 24.67ms | 75.69ms | 47.91ms | 60.66ms |
| comp_0to1 | 14.74ms | 9.46ms | 29.44ms | 22.27ms | 13.93ms | 11.02ms | 28.12ms | 22.07ms | 53.02ms |
| comp_1to1 | 12.79ms | 24.37ms | 38.16ms | 12.43ms | 24.53ms | 20.02ms | 45.90ms | 29.72ms | 62.45ms |
| comp_2to1 | 3.41ms | 18.30ms | 35.85ms | 11.27ms | 32.08ms | 8.22ms | 45.93ms | 34.81ms | 37.43ms |
| comp_4to1 | 7.47ms | 4.12ms | 23.88ms | 18.44ms | 6.95ms | 2.73ms | 4.98ms | 25.95ms | 16.36ms |
| comp_1000to1 | 4μs | 4μs | 17μs | 9μs | 4μs | 8μs | 20μs | 4.48ms | 41μs |
| comp_1to2 | 15.18ms | 11.57ms | 43.49ms | 22.48ms | 19.52ms | 19.63ms | 34.56ms | 25.39ms | 44.94ms |
| comp_1to4 | 12.90ms | 18.32ms | 18.41ms | 28.36ms | 21.72ms | 7.10ms | 17.19ms | 27.35ms | 43.87ms |
| comp_1to8 | 3.81ms | 6.53ms | 20.79ms | 6.43ms | 8.84ms | 6.17ms | 21.95ms | 23.52ms | 42.20ms |
| comp_1to1000 | 3.40ms | 4.66ms | 15.85ms | 5.89ms | 9.06ms | 4.10ms | 16.75ms | 18.12ms | 38.62ms |
| update_1to1 | 4.52ms | 5.47ms | 23.75ms | 8.63ms | 93.07ms | 8.99ms | 15.98ms | 43.13ms | 5.70ms |
| update_2to1 | 2.31ms | 2.80ms | 11.48ms | 4.24ms | 42.01ms | 4.50ms | 7.82ms | 21.41ms | 2.88ms |
| update_4to1 | 1.13ms | 1.42ms | 6.81ms | 2.13ms | 20.27ms | 2.28ms | 4.06ms | 10.82ms | 1.48ms |
| update_1000to1 | 11μs | 24μs | 72μs | 21μs | 214μs | 22μs | 40μs | 120μs | 15μs |
| update_1to2 | 2.31ms | 2.75ms | 11.70ms | 4.79ms | 43.46ms | 4.49ms | 7.99ms | 21.23ms | 2.85ms |
| update_1to4 | 1.15ms | 1.48ms | 6.42ms | 2.16ms | 20.55ms | 2.29ms | 4.05ms | 10.81ms | 1.47ms |
| update_1to1000 | 32μs | 57μs | 173μs | 778μs | 141μs | 42μs | 170μs | 210μs | 377μs |
| cellx1000 | 7.20ms | 28.64ms | 72.57ms | 9.66ms | N/A | 9.59ms | 14.03ms | 155.98ms | 5.26ms |
| cellx2500 | 23.60ms | 128.54ms | 254.30ms | 25.80ms | N/A | 30.73ms | 33.56ms | 459.13ms | 21.91ms |
| cellx5000 | 53.02ms | 388.95ms | 565.58ms | 67.32ms | N/A | 58.03ms | 71.91ms | 1.07s | 54.65ms |
| 10x5 - 2 sources - read 20.0% (simple) | 239.05ms | 234.15ms | 2.06s | 437.33ms | 2.30s | 512.72ms | 368.34ms | 2.57s (partial) | 238.45ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.33ms | 184.43ms | 1.50s | 275.17ms | 1.50s (partial) | 288.61ms | 245.81ms | 2.38s (partial) | 198.45ms |
| 1000x12 - 4 sources - dynamic (large) | 302.39ms | 352.97ms | 1.90s | 3.71s | 2.59s (partial) | 3.96s | 460.55ms | 4.05s (partial) | 333.32ms |
| 1000x5 - 25 sources (wide dense) | 425.17ms | 614.56ms | 3.53s | 2.72s | 4.19s | 3.53s | 593.59ms | 5.11s (partial) | 502.58ms |
| 5x500 - 3 sources (deep) | 190.89ms | 197.92ms | 1.14s | 231.06ms | 1.34s | 222.81ms | 252.68ms | 1.94s (partial) | 202.76ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 273.77ms | 279.36ms | 1.67s | 454.45ms | 1.78s (partial) | 480.37ms | 386.54ms | 2.76s (partial) | 254.92ms |

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
