# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.75s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.42s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.12s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.83s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.55s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.89s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.54ms | 2.36s | 205.89ms | 1.25s | 1.40s | 210.07ms | 273.77ms | 158.70ms (fail) |
| broadPropagation | 355.53ms | 4.35s | 458.76ms | 4.99s | 81.90ms (fail) | 466.95ms | 503.03ms | 6.51ms (fail) |
| deepPropagation | 117.78ms | 1.52s | 176.73ms | 4.00s | 1.89s (fail) | 178.53ms | 174.57ms | 144.40ms (fail) |
| diamond | 267.41ms | 2.49s | 282.75ms | 14.03s (fail) | 2.67s (fail) | 290.51ms | 351.77ms | 191.72ms (fail) |
| mux | 375.28ms | 1.82s | 390.72ms | 1.02s | 566.36ms (fail) | 419.00ms | 439.21ms | 188.77ms (fail) |
| repeatedObservers | 44.77ms | 233.02ms | 38.81ms | 9.74s | 384.17ms (fail) | 46.49ms | 78.26ms | 52.54ms (fail) |
| triangle | 85.20ms | 767.92ms | 98.81ms | 4.52s | 910.33ms (fail) | 103.47ms | 117.73ms | 80.47ms (fail) |
| unstable | 60.49ms | 361.00ms | 70.72ms | 7.64s | 612.37ms (fail) | 71.65ms | 93.78ms | 337.84ms (fail) |
| molBench | 492.19ms | 582.43ms | 493.14ms | 5.90s | 12.17ms | 487.39ms | 492.97ms | 1.21ms |
| create_signals | 27.22ms | 70.74ms | 5.29ms | 13.34ms | 25.11ms | 26.11ms | 88.49ms | 60.40ms |
| comp_0to1 | 7.19ms | 27.31ms | 17.77ms | 13.68ms | 13.99ms | 12.57ms | 36.69ms | 53.74ms |
| comp_1to1 | 4.20ms | 47.24ms | 14.57ms | 99.56ms | 22.68ms | 28.74ms | 28.35ms | 57.51ms |
| comp_2to1 | 2.39ms | 37.07ms | 10.56ms | 72.37ms | 24.49ms | 9.85ms | 24.46ms | 37.76ms |
| comp_4to1 | 11.10ms | 14.79ms | 8.67ms | 85.23ms | 4.10ms | 2.19ms | 13.41ms | 17.78ms |
| comp_1000to1 | 6μs | 16μs | 4μs | 59.32ms | 5μs | 4μs | 14μs | 43μs |
| comp_1to2 | 15.35ms | 37.72ms | 24.20ms | 66.89ms | 16.25ms | 27.84ms | 32.03ms | 46.61ms |
| comp_1to4 | 6.78ms | 23.06ms | 22.44ms | 99.18ms | 31.38ms | 13.60ms | 15.67ms | 45.06ms |
| comp_1to8 | 5.97ms | 25.57ms | 9.17ms | 116.37ms | 5.17ms | 6.88ms | 21.59ms | 43.80ms |
| comp_1to1000 | 3.56ms | 15.52ms | 11.42ms | 47.90ms | 4.02ms | 4.60ms | 15.20ms | 38.72ms |
| update_1to1 | 11.30ms | 23.93ms | 8.23ms | N/A | 83.36ms | 8.62ms | 16.20ms | 5.77ms |
| update_2to1 | 6.48ms | 12.26ms | 4.08ms | N/A | 42.39ms | 4.30ms | 7.90ms | 3.08ms |
| update_4to1 | 2.80ms | 6.56ms | 2.11ms | N/A | 20.59ms | 2.15ms | 4.08ms | 1.50ms |
| update_1000to1 | 10μs | 60μs | 27μs | N/A | 184μs | 31μs | 40μs | 15μs |
| update_1to2 | 5.59ms | 11.81ms | 4.11ms | N/A | 42.41ms | 5.29ms | 8.12ms | 2.98ms |
| update_1to4 | 2.67ms | 6.22ms | 2.10ms | N/A | 20.67ms | 2.38ms | 4.18ms | 1.51ms |
| update_1to1000 | 37μs | 168μs | 66μs | N/A | 142μs | 44μs | 148μs | 376μs |
| cellx1000 | 7.36ms | 99.69ms | 10.72ms | N/A | N/A | 11.62ms | 14.20ms | 6.33ms |
| cellx2500 | 22.33ms | 311.97ms | 36.05ms | N/A | N/A | 40.52ms | 53.64ms | 29.40ms |
| cellx5000 | 62.09ms | 650.83ms | 98.12ms | N/A | N/A | 104.08ms | 147.33ms | 79.99ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.27ms | 2.02s | 440.55ms | N/A | 2.27s | 513.52ms | 385.40ms | 275.25ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.93ms | 1.52s | 275.81ms | N/A | 1.50s (partial) | 280.09ms | 250.03ms | 225.67ms |
| 1000x12 - 4 sources - dynamic (large) | 288.30ms | 1.89s | 3.57s | N/A | 2.60s (partial) | 3.77s | 479.17ms | 359.18ms |
| 1000x5 - 25 sources (wide dense) | 406.99ms | 3.54s | 2.64s | N/A | 4.23s | 3.43s | 602.83ms | 515.92ms |
| 5x500 - 3 sources (deep) | 193.68ms | 1.17s | 235.78ms | N/A | 1.59s | 228.29ms | 258.87ms | 209.22ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.49ms | 1.78s | 459.35ms | N/A | 1.82s (partial) | 480.45ms | 387.94ms | 274.42ms |

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
