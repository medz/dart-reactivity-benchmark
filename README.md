# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.99s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.36s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.98s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.37s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.61s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.84ms | 2.37s | 201.53ms | 1.25s | 1.41s | 212.40ms | 274.64ms | 153.12ms (fail) |
| broadPropagation | 355.37ms | 4.26s | 462.07ms | 4.99s | 80.37ms (fail) | 448.45ms | 503.36ms | 5.88ms (fail) |
| deepPropagation | 124.53ms | 1.53s | 175.48ms | 4.00s | 1.91s (fail) | 170.78ms | 167.15ms | 141.47ms (fail) |
| diamond | 236.43ms | 2.47s | 280.21ms | 14.03s (fail) | 2.63s (fail) | 294.68ms | 362.79ms | 180.72ms (fail) |
| mux | 372.40ms | 1.85s | 382.29ms | 1.02s | 558.28ms (fail) | 411.81ms | 446.34ms | 189.92ms (fail) |
| repeatedObservers | 44.73ms | 245.75ms | 38.26ms | 9.74s | 397.40ms (fail) | 46.80ms | 78.26ms | 53.34ms (fail) |
| triangle | 85.86ms | 790.88ms | 99.19ms | 4.52s | 958.86ms (fail) | 109.64ms | 117.33ms | 76.24ms (fail) |
| unstable | 60.31ms | 355.98ms | 70.58ms | 7.64s | 611.07ms (fail) | 71.77ms | 93.35ms | 336.36ms (fail) |
| molBench | 491.76ms | 581.18ms | 491.65ms | 5.90s | 11.68ms | 482.10ms | 493.78ms | 1.12ms |
| create_signals | 27.23ms | 84.99ms | 4.63ms | 13.34ms | 23.77ms | 26.59ms | 76.06ms | 55.55ms |
| comp_0to1 | 7.93ms | 21.61ms | 17.40ms | 13.68ms | 13.72ms | 12.24ms | 32.65ms | 52.42ms |
| comp_1to1 | 4.90ms | 35.34ms | 13.99ms | 99.56ms | 21.05ms | 29.59ms | 25.92ms | 53.92ms |
| comp_2to1 | 2.56ms | 33.72ms | 14.05ms | 72.37ms | 23.47ms | 8.69ms | 29.92ms | 35.10ms |
| comp_4to1 | 9.34ms | 30.47ms | 8.75ms | 85.23ms | 11.28ms | 9.49ms | 4.72ms | 15.98ms |
| comp_1000to1 | 3μs | 30μs | 4μs | 59.32ms | 5μs | 5μs | 18μs | 42μs |
| comp_1to2 | 10.82ms | 35.94ms | 23.11ms | 66.89ms | 15.69ms | 14.56ms | 37.66ms | 44.84ms |
| comp_1to4 | 13.47ms | 21.51ms | 27.31ms | 99.18ms | 24.12ms | 12.20ms | 20.81ms | 44.02ms |
| comp_1to8 | 5.45ms | 22.75ms | 11.27ms | 116.37ms | 4.87ms | 6.98ms | 19.82ms | 43.67ms |
| comp_1to1000 | 3.92ms | 15.11ms | 7.17ms | 47.90ms | 3.91ms | 4.63ms | 14.70ms | 39.43ms |
| update_1to1 | 11.37ms | 24.40ms | 8.25ms | N/A | 83.75ms | 9.27ms | 16.63ms | 5.74ms |
| update_2to1 | 4.97ms | 12.64ms | 4.07ms | N/A | 42.26ms | 4.58ms | 7.90ms | 2.87ms |
| update_4to1 | 2.83ms | 6.35ms | 2.05ms | N/A | 20.17ms | 2.35ms | 4.07ms | 1.46ms |
| update_1000to1 | 17μs | 64μs | 20μs | N/A | 187μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.66ms | 12.66ms | 4.12ms | N/A | 41.86ms | 4.96ms | 8.04ms | 2.93ms |
| update_1to4 | 2.43ms | 5.80ms | 2.02ms | N/A | 20.40ms | 2.42ms | 4.03ms | 1.46ms |
| update_1to1000 | 51μs | 162μs | 1.49ms | N/A | 119μs | 44μs | 152μs | 379μs |
| cellx1000 | 7.19ms | 74.08ms | 9.56ms | N/A | N/A | 10.30ms | 11.22ms | 5.29ms |
| cellx2500 | 20.48ms | 246.33ms | 27.02ms | N/A | N/A | 39.78ms | 30.24ms | 29.38ms |
| cellx5000 | 42.50ms | 562.00ms | 75.96ms | N/A | N/A | 79.60ms | 62.75ms | 51.82ms |
| 10x5 - 2 sources - read 20.0% (simple) | 227.61ms | 2.05s | 438.76ms | N/A | 2.29s | 509.32ms | 383.76ms | 245.76ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.17ms | 1.56s | 277.10ms | N/A | 1.48s (partial) | 277.96ms | 249.82ms | 200.81ms |
| 1000x12 - 4 sources - dynamic (large) | 280.71ms | 1.95s | 3.53s | N/A | 2.47s (partial) | 3.77s | 466.59ms | 329.16ms |
| 1000x5 - 25 sources (wide dense) | 410.79ms | 3.74s | 2.60s | N/A | 4.31s | 3.57s | 593.67ms | 506.56ms |
| 5x500 - 3 sources (deep) | 191.54ms | 1.21s | 233.12ms | N/A | 1.39s | 225.37ms | 260.18ms | 203.54ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.97ms | 1.78s | 449.66ms | N/A | 1.75s (partial) | 481.13ms | 386.06ms | 260.63ms |

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
