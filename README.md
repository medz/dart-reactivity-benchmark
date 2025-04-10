# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.16s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.65s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.75s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 188.82ms | 2.31s | 205.32ms | 1.25s | 1.42s | 208.63ms | 273.33ms | 158.35ms (fail) |
| broadPropagation | 355.29ms | 4.32s | 453.00ms | 4.99s | 82.48ms (fail) | 454.46ms | 504.57ms | 6.12ms (fail) |
| deepPropagation | 123.53ms | 1.54s | 178.46ms | 4.00s | 1.96s (fail) | 172.17ms | 178.86ms | 143.88ms (fail) |
| diamond | 236.93ms | 2.41s | 280.81ms | 14.03s (fail) | 2.70s (fail) | 292.11ms | 350.93ms | 192.62ms (fail) |
| mux | 375.13ms | 1.87s | 384.99ms | 1.02s | 576.70ms (fail) | 405.70ms | 441.93ms | 192.95ms (fail) |
| repeatedObservers | 44.79ms | 231.32ms | 40.31ms | 9.74s | 395.54ms (fail) | 46.23ms | 81.34ms | 53.14ms (fail) |
| triangle | 84.05ms | 780.87ms | 98.58ms | 4.52s | 936.26ms (fail) | 104.86ms | 118.79ms | 78.75ms (fail) |
| unstable | 60.40ms | 353.81ms | 70.48ms | 7.64s | 621.24ms (fail) | 73.15ms | 93.35ms | 337.00ms (fail) |
| molBench | 491.46ms | 579.59ms | 492.38ms | 5.90s | 11.34ms | 488.47ms | 494.26ms | 1.09ms |
| create_signals | 27.24ms | 57.12ms | 4.77ms | 13.34ms | 23.57ms | 25.23ms | 76.72ms | 64.14ms |
| comp_0to1 | 7.84ms | 19.01ms | 23.00ms | 13.68ms | 13.55ms | 11.61ms | 35.49ms | 57.21ms |
| comp_1to1 | 4.21ms | 30.99ms | 12.79ms | 99.56ms | 22.46ms | 26.45ms | 38.84ms | 59.61ms |
| comp_2to1 | 2.25ms | 8.80ms | 21.39ms | 72.37ms | 28.53ms | 9.68ms | 24.80ms | 36.75ms |
| comp_4to1 | 7.91ms | 25.77ms | 14.70ms | 85.23ms | 6.79ms | 1.85ms | 11.75ms | 16.44ms |
| comp_1000to1 | 3μs | 35μs | 4μs | 59.32ms | 4μs | 5μs | 15μs | 44μs |
| comp_1to2 | 8.99ms | 33.99ms | 40.10ms | 66.89ms | 11.81ms | 12.84ms | 31.56ms | 49.06ms |
| comp_1to4 | 11.83ms | 22.35ms | 16.32ms | 99.18ms | 24.65ms | 11.60ms | 21.04ms | 45.47ms |
| comp_1to8 | 5.06ms | 24.44ms | 8.34ms | 116.37ms | 4.69ms | 8.94ms | 23.55ms | 45.67ms |
| comp_1to1000 | 3.57ms | 15.46ms | 4.98ms | 47.90ms | 4.15ms | 4.52ms | 15.30ms | 39.87ms |
| update_1to1 | 11.34ms | 23.44ms | 8.14ms | N/A | 84.38ms | 9.35ms | 16.16ms | 5.77ms |
| update_2to1 | 4.45ms | 10.97ms | 4.05ms | N/A | 42.63ms | 4.57ms | 7.95ms | 2.87ms |
| update_4to1 | 2.79ms | 6.73ms | 2.24ms | N/A | 20.83ms | 2.35ms | 4.05ms | 1.46ms |
| update_1000to1 | 20μs | 62μs | 20μs | N/A | 174μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.72ms | 10.76ms | 4.06ms | N/A | 42.77ms | 4.89ms | 8.12ms | 2.96ms |
| update_1to4 | 2.50ms | 5.29ms | 2.08ms | N/A | 21.05ms | 2.32ms | 4.06ms | 1.46ms |
| update_1to1000 | 46μs | 163μs | 49μs | N/A | 107μs | 43μs | 149μs | 399μs |
| cellx1000 | 7.30ms | 75.14ms | 9.59ms | N/A | N/A | 9.36ms | 12.81ms | 5.34ms |
| cellx2500 | 19.78ms | 241.29ms | 27.66ms | N/A | N/A | 31.42ms | 41.00ms | 28.11ms |
| cellx5000 | 43.82ms | 588.25ms | 68.94ms | N/A | N/A | 62.23ms | 127.18ms | 67.64ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.76ms | 2.03s | 441.63ms | N/A | 2.30s | 504.87ms | 351.54ms | 253.28ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.76ms | 1.56s | 279.32ms | N/A | 1.49s (partial) | 285.08ms | 253.86ms | 202.43ms |
| 1000x12 - 4 sources - dynamic (large) | 280.31ms | 1.91s | 3.54s | N/A | 2.52s (partial) | 3.76s | 470.52ms | 349.02ms |
| 1000x5 - 25 sources (wide dense) | 410.92ms | 3.64s | 2.61s | N/A | 4.13s | 3.42s | 602.94ms | 506.92ms |
| 5x500 - 3 sources (deep) | 188.68ms | 1.16s | 230.10ms | N/A | 1.49s | 229.15ms | 262.26ms | 204.48ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.16ms | 1.76s | 447.12ms | N/A | 1.76s (partial) | 476.12ms | 383.01ms | 257.77ms |

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
