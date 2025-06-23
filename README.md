# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.37s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.26s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.27s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.01s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.75s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.57s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.74ms | 163.02ms | 2.38s | 202.17ms | 1.46s | 211.03ms | 274.65ms | 2.16s | 148.39ms (fail) |
| broadPropagation | 371.38ms | 319.52ms | 4.52s | 446.59ms | 85.96ms (fail) | 448.69ms | 501.08ms | 5.51s | 6.16ms (fail) |
| deepPropagation | 129.99ms | 97.57ms | 1.58s | 176.06ms | 2.02s (fail) | 170.72ms | 170.97ms | 2.00s | 140.54ms (fail) |
| diamond | 237.95ms | 212.09ms | 2.51s | 277.60ms | 2.70s (fail) | 284.04ms | 354.43ms | 3.49s | 182.94ms (fail) |
| mux | 380.37ms | 342.08ms | 1.86s | 404.00ms | 566.64ms (fail) | 447.35ms | 448.90ms | 2.02s | 191.00ms (fail) |
| repeatedObservers | 47.03ms | 50.11ms | 235.54ms | 40.10ms | 380.16ms (fail) | 44.83ms | 81.60ms | 216.26ms | 52.49ms (fail) |
| triangle | 87.30ms | 79.00ms | 798.72ms | 106.11ms | 902.50ms (fail) | 103.86ms | 119.05ms | 1.11s | 76.94ms (fail) |
| unstable | 61.43ms | 69.97ms | 350.95ms | 70.31ms | 607.55ms (fail) | 79.90ms | 97.00ms | 342.09ms | 336.70ms (fail) |
| molBench | 492.70ms | 490.26ms | 580.22ms | 488.49ms | 10.57ms | 486.86ms | 494.40ms | 1.70s | 927μs |
| create_signals | 7.56ms | 27.62ms | 69.75ms | 5.29ms | 24.29ms | 24.83ms | 59.38ms | 50.06ms | 63.41ms |
| comp_0to1 | 21.88ms | 9.74ms | 28.57ms | 17.54ms | 13.43ms | 11.37ms | 27.34ms | 22.61ms | 52.77ms |
| comp_1to1 | 18.07ms | 18.01ms | 38.45ms | 14.45ms | 27.05ms | 27.71ms | 45.79ms | 46.67ms | 55.15ms |
| comp_2to1 | 13.34ms | 15.70ms | 34.88ms | 16.04ms | 32.13ms | 7.99ms | 37.19ms | 25.52ms | 36.03ms |
| comp_4to1 | 1.70ms | 3.29ms | 24.20ms | 15.58ms | 7.18ms | 1.95ms | 12.36ms | 32.74ms | 16.60ms |
| comp_1000to1 | 4μs | 4μs | 17μs | 6μs | 6μs | 5μs | 20μs | 3.76ms | 46μs |
| comp_1to2 | 11.21ms | 12.60ms | 35.39ms | 17.11ms | 13.65ms | 13.49ms | 29.27ms | 20.35ms | 44.54ms |
| comp_1to4 | 8.40ms | 21.19ms | 23.82ms | 25.53ms | 24.20ms | 9.02ms | 28.26ms | 25.18ms | 43.01ms |
| comp_1to8 | 4.14ms | 7.12ms | 21.64ms | 6.75ms | 9.04ms | 10.40ms | 26.29ms | 19.54ms | 41.80ms |
| comp_1to1000 | 3.27ms | 4.54ms | 15.89ms | 4.58ms | 7.57ms | 6.63ms | 17.15ms | 16.90ms | 38.24ms |
| update_1to1 | 4.50ms | 5.41ms | 25.58ms | 8.60ms | 83.48ms | 8.96ms | 16.16ms | 43.44ms | 5.63ms |
| update_2to1 | 2.36ms | 2.80ms | 11.37ms | 4.25ms | 40.77ms | 4.54ms | 7.82ms | 21.66ms | 2.85ms |
| update_4to1 | 1.12ms | 1.42ms | 5.60ms | 2.13ms | 19.38ms | 2.27ms | 4.01ms | 10.82ms | 1.46ms |
| update_1000to1 | 11μs | 15μs | 76μs | 21μs | 170μs | 22μs | 41μs | 118μs | 14μs |
| update_1to2 | 2.32ms | 2.73ms | 13.57ms | 4.58ms | 40.49ms | 4.47ms | 8.01ms | 21.16ms | 2.91ms |
| update_1to4 | 1.15ms | 1.44ms | 6.43ms | 2.19ms | 19.73ms | 2.27ms | 4.04ms | 10.92ms | 1.46ms |
| update_1to1000 | 30μs | 33μs | 172μs | 121μs | 140μs | 57μs | 174μs | 208μs | 399μs |
| cellx1000 | 7.29ms | 28.53ms | 80.74ms | 9.60ms | N/A | 9.74ms | 12.29ms | 172.12ms | 5.34ms |
| cellx2500 | 22.62ms | 123.49ms | 255.80ms | 26.06ms | N/A | 34.35ms | 35.99ms | 483.01ms | 23.68ms |
| cellx5000 | 46.54ms | 398.67ms | 580.71ms | 73.83ms | N/A | 65.74ms | 78.20ms | 1.10s | 66.20ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.43ms | 231.96ms | 2.05s | 442.21ms | 2.31s | 533.17ms | 356.20ms | 2.59s (partial) | 240.51ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.05ms | 184.91ms | 1.55s | 274.26ms | 1.47s (partial) | 327.86ms | 243.87ms | 2.35s (partial) | 200.80ms |
| 1000x12 - 4 sources - dynamic (large) | 301.01ms | 348.51ms | 1.89s | 3.71s | 2.65s (partial) | 3.75s | 455.30ms | 4.07s (partial) | 338.30ms |
| 1000x5 - 25 sources (wide dense) | 452.42ms | 614.15ms | 3.53s | 2.70s | 4.07s | 3.44s | 581.39ms | 5.11s (partial) | 493.55ms |
| 5x500 - 3 sources (deep) | 205.00ms | 195.83ms | 1.18s | 226.61ms | 1.38s | 237.81ms | 254.84ms | 1.98s (partial) | 204.78ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.49ms | 285.38ms | 1.72s | 441.98ms | 1.77s (partial) | 519.75ms | 381.26ms | 2.79s (partial) | 259.97ms |

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
