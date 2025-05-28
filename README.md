# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.85s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.41s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.19s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.49s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.95s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.39s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.25s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 173.78ms | 163.33ms | 2.30s | 201.94ms | 1.40s | 210.86ms | 281.93ms | 2.14s | 152.75ms (fail) |
| broadPropagation | 372.74ms | 315.35ms | 4.50s | 444.98ms | 79.36ms (fail) | 522.37ms | 502.01ms | 5.39s | 6.29ms (fail) |
| deepPropagation | 125.92ms | 99.35ms | 1.58s | 176.33ms | 1.92s (fail) | 169.66ms | 167.43ms | 1.97s | 144.52ms (fail) |
| diamond | 235.88ms | 213.00ms | 2.47s | 279.01ms | 2.60s (fail) | 298.77ms | 346.75ms | 3.42s | 186.60ms (fail) |
| mux | 379.08ms | 344.01ms | 1.85s | 398.70ms | 565.37ms (fail) | 452.14ms | 440.59ms | 1.98s | 196.73ms (fail) |
| repeatedObservers | 47.41ms | 50.29ms | 229.50ms | 39.59ms | 392.97ms (fail) | 47.13ms | 81.41ms | 220.17ms | 55.02ms (fail) |
| triangle | 87.72ms | 78.84ms | 771.28ms | 97.58ms | 910.25ms (fail) | 104.42ms | 119.11ms | 1.12s | 75.57ms (fail) |
| unstable | 63.78ms | 69.63ms | 347.15ms | 69.67ms | 615.22ms (fail) | 83.30ms | 96.72ms | 345.45ms | 337.48ms (fail) |
| molBench | 493.52ms | 491.59ms | 572.78ms | 489.63ms | 10.98ms | 488.08ms | 493.23ms | 1.71s | 969μs |
| create_signals | 7.86ms | 27.89ms | 71.79ms | 5.27ms | 24.21ms | 26.39ms | 53.55ms | 55.39ms | 64.00ms |
| comp_0to1 | 22.93ms | 11.56ms | 29.65ms | 17.36ms | 13.79ms | 12.47ms | 27.51ms | 40.08ms | 59.06ms |
| comp_1to1 | 19.16ms | 21.49ms | 39.02ms | 14.16ms | 24.02ms | 29.58ms | 39.66ms | 28.49ms | 56.23ms |
| comp_2to1 | 15.25ms | 15.51ms | 34.44ms | 17.17ms | 24.85ms | 19.75ms | 26.13ms | 39.16ms | 38.07ms |
| comp_4to1 | 4.68ms | 4.02ms | 15.34ms | 14.42ms | 4.14ms | 6.28ms | 14.44ms | 17.81ms | 16.30ms |
| comp_1000to1 | 4μs | 4μs | 17μs | 4μs | 9μs | 7μs | 20μs | 2.81ms | 42μs |
| comp_1to2 | 10.59ms | 13.99ms | 36.53ms | 18.07ms | 14.47ms | 19.30ms | 37.50ms | 31.11ms | 45.52ms |
| comp_1to4 | 6.01ms | 13.04ms | 18.59ms | 29.54ms | 24.76ms | 14.89ms | 22.60ms | 26.42ms | 43.91ms |
| comp_1to8 | 6.25ms | 6.39ms | 21.22ms | 7.76ms | 5.18ms | 7.67ms | 24.71ms | 25.48ms | 43.03ms |
| comp_1to1000 | 3.52ms | 8.97ms | 16.06ms | 4.92ms | 4.32ms | 4.89ms | 16.78ms | 17.09ms | 38.26ms |
| update_1to1 | 4.50ms | 5.54ms | 24.93ms | 8.63ms | 83.96ms | 8.96ms | 15.90ms | 43.14ms | 5.71ms |
| update_2to1 | 2.38ms | 2.83ms | 12.76ms | 4.27ms | 41.53ms | 4.50ms | 7.80ms | 21.43ms | 2.83ms |
| update_4to1 | 1.21ms | 1.49ms | 5.74ms | 2.19ms | 20.43ms | 2.30ms | 4.01ms | 10.83ms | 1.44ms |
| update_1000to1 | 18μs | 24μs | 77μs | 21μs | 214μs | 23μs | 40μs | 117μs | 14μs |
| update_1to2 | 2.35ms | 2.75ms | 12.31ms | 4.59ms | 41.83ms | 4.52ms | 7.99ms | 21.25ms | 2.86ms |
| update_1to4 | 1.22ms | 1.44ms | 5.54ms | 2.19ms | 20.12ms | 2.37ms | 4.00ms | 10.89ms | 1.44ms |
| update_1to1000 | 47μs | 58μs | 186μs | 215μs | 142μs | 46μs | 170μs | 209μs | 383μs |
| cellx1000 | 7.68ms | 30.82ms | 75.41ms | 10.36ms | N/A | 10.30ms | 12.54ms | 154.20ms | 5.37ms |
| cellx2500 | 25.09ms | 129.54ms | 263.27ms | 27.16ms | N/A | 37.30ms | 36.88ms | 487.18ms | 27.62ms |
| cellx5000 | 82.70ms | 416.82ms | 625.78ms | 84.62ms | N/A | 83.49ms | 104.40ms | 1.17s | 70.25ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.85ms | 232.58ms | 2.05s | 436.99ms | 2.18s | 517.87ms | 399.03ms | 2.58s (partial) | 242.02ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.04ms | 184.21ms | 1.53s | 272.95ms | 1.48s (partial) | 283.86ms | 253.16ms | 2.33s (partial) | 202.87ms |
| 1000x12 - 4 sources - dynamic (large) | 309.87ms | 352.86ms | 2.00s | 3.63s | 2.49s (partial) | 3.86s | 476.55ms | 4.07s (partial) | 352.06ms |
| 1000x5 - 25 sources (wide dense) | 456.47ms | 621.15ms | 3.56s | 2.71s | 4.22s | 3.44s | 589.82ms | 5.06s (partial) | 500.94ms |
| 5x500 - 3 sources (deep) | 205.15ms | 198.27ms | 1.16s | 227.13ms | 1.41s | 226.83ms | 269.02ms | 1.96s (partial) | 203.50ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.62ms | 279.15ms | 1.71s | 441.36ms | 1.77s (partial) | 486.25ms | 390.96ms | 2.75s (partial) | 259.07ms |

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
