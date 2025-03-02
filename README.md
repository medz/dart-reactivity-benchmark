# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.24s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.89s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.50s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.23s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.24s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.21ms | 2.29s | 203.43ms | 1.25s | 1.36s | 209.62ms | 273.09ms | 150.32ms (fail) |
| broadPropagation | 354.31ms | 4.26s | 455.68ms | 4.99s | 79.92ms (fail) | 455.95ms | 509.94ms | 6.02ms (fail) |
| deepPropagation | 123.93ms | 1.54s | 179.91ms | 4.00s | 1.85s (fail) | 181.28ms | 169.07ms | 142.07ms (fail) |
| diamond | 234.60ms | 2.43s | 281.43ms | 14.03s (fail) | 2.52s (fail) | 288.73ms | 353.02ms | 186.28ms (fail) |
| mux | 370.32ms | 1.82s | 379.26ms | 1.02s | 563.02ms (fail) | 411.29ms | 442.71ms | 192.32ms (fail) |
| repeatedObservers | 44.87ms | 225.40ms | 38.23ms | 9.74s | 399.11ms (fail) | 45.96ms | 78.72ms | 52.16ms (fail) |
| triangle | 86.75ms | 784.09ms | 99.75ms | 4.52s | 907.04ms (fail) | 102.78ms | 115.15ms | 76.44ms (fail) |
| unstable | 60.55ms | 343.88ms | 70.53ms | 7.64s | 696.97ms (fail) | 71.85ms | 94.21ms | 335.61ms (fail) |
| molBench | 491.48ms | 576.95ms | 490.77ms | 5.90s | 13.79ms | 484.54ms | 493.38ms | 1.29ms |
| create_signals | 26.33ms | 87.09ms | 4.64ms | 13.34ms | 23.45ms | 31.99ms | 56.60ms | 65.89ms |
| comp_0to1 | 6.99ms | 21.32ms | 19.58ms | 13.68ms | 14.72ms | 14.71ms | 26.41ms | 54.77ms |
| comp_1to1 | 4.23ms | 39.39ms | 11.47ms | 99.56ms | 29.61ms | 34.52ms | 42.76ms | 54.00ms |
| comp_2to1 | 2.28ms | 22.65ms | 16.89ms | 72.37ms | 24.70ms | 22.82ms | 25.60ms | 35.18ms |
| comp_4to1 | 8.38ms | 32.70ms | 8.71ms | 85.23ms | 6.74ms | 6.75ms | 11.07ms | 16.07ms |
| comp_1000to1 | 3μs | 28μs | 6μs | 59.32ms | 4μs | 5μs | 29μs | 41μs |
| comp_1to2 | 15.20ms | 37.04ms | 16.36ms | 66.89ms | 12.54ms | 15.95ms | 31.00ms | 44.39ms |
| comp_1to4 | 5.17ms | 21.31ms | 23.43ms | 99.18ms | 26.27ms | 15.79ms | 15.70ms | 46.66ms |
| comp_1to8 | 5.14ms | 23.47ms | 6.80ms | 116.37ms | 9.90ms | 9.42ms | 20.63ms | 44.06ms |
| comp_1to1000 | 3.52ms | 14.87ms | 6.31ms | 47.90ms | 5.02ms | 4.61ms | 15.27ms | 37.53ms |
| update_1to1 | 10.05ms | 25.30ms | 10.35ms | N/A | 85.09ms | 9.28ms | 17.72ms | 5.74ms |
| update_2to1 | 5.28ms | 12.33ms | 4.11ms | N/A | 42.55ms | 4.57ms | 7.96ms | 3.15ms |
| update_4to1 | 2.81ms | 6.74ms | 2.08ms | N/A | 21.12ms | 2.30ms | 4.05ms | 1.43ms |
| update_1000to1 | 10μs | 63μs | 22μs | N/A | 192μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.62ms | 12.43ms | 4.07ms | N/A | 43.10ms | 4.83ms | 8.17ms | 2.94ms |
| update_1to4 | 2.45ms | 6.24ms | 2.08ms | N/A | 20.44ms | 2.29ms | 4.03ms | 1.44ms |
| update_1to1000 | 37μs | 168μs | 890μs | N/A | 100μs | 49μs | 149μs | 368μs |
| cellx1000 | 8.18ms | 71.29ms | 9.70ms | N/A | N/A | 9.58ms | 11.32ms | 5.66ms |
| cellx2500 | 19.69ms | 247.74ms | 25.73ms | N/A | N/A | 31.36ms | 32.31ms | 28.67ms |
| cellx5000 | 43.86ms | 542.43ms | 69.25ms | N/A | N/A | 61.59ms | 76.27ms | 83.33ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.43ms | 2.01s | 440.21ms | N/A | 2.27s | 524.76ms | 351.99ms | 239.01ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 184.16ms | 1.53s | 270.30ms | N/A | 1.48s (partial) | 279.02ms | 247.99ms | 205.42ms |
| 1000x12 - 4 sources - dynamic (large) | 284.60ms | 1.82s | 3.47s | N/A | 2.47s (partial) | 4.05s | 461.32ms | 349.87ms |
| 1000x5 - 25 sources (wide dense) | 407.62ms | 3.53s | 2.59s | N/A | 4.15s | 3.41s | 590.56ms | 495.20ms |
| 5x500 - 3 sources (deep) | 190.07ms | 1.15s | 231.83ms | N/A | 1.35s | 227.65ms | 268.09ms | 205.12ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.64ms | 1.70s | 443.40ms | N/A | 1.77s (partial) | 481.96ms | 379.31ms | 258.93ms |

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
