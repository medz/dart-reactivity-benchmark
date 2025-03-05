# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.99s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.30s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.36s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.47s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 188.72ms | 2.31s | 204.83ms | 1.25s | 1.40s | 210.95ms | 271.98ms | 157.37ms (fail) |
| broadPropagation | 350.27ms | 4.23s | 453.23ms | 4.99s | 82.09ms (fail) | 458.58ms | 508.12ms | 6.01ms (fail) |
| deepPropagation | 122.31ms | 1.52s | 181.44ms | 4.00s | 1.93s (fail) | 171.63ms | 163.19ms | 146.29ms (fail) |
| diamond | 232.90ms | 2.37s | 280.14ms | 14.03s (fail) | 2.64s (fail) | 302.78ms | 351.13ms | 190.52ms (fail) |
| mux | 374.59ms | 1.84s | 382.23ms | 1.02s | 563.30ms (fail) | 399.10ms | 441.73ms | 188.86ms (fail) |
| repeatedObservers | 44.99ms | 235.16ms | 38.48ms | 9.74s | 384.09ms (fail) | 45.97ms | 78.01ms | 52.24ms (fail) |
| triangle | 86.67ms | 771.87ms | 99.09ms | 4.52s | 917.73ms (fail) | 101.57ms | 117.61ms | 77.86ms (fail) |
| unstable | 59.92ms | 349.17ms | 70.22ms | 7.64s | 601.02ms (fail) | 74.24ms | 94.54ms | 337.18ms (fail) |
| molBench | 492.00ms | 578.65ms | 490.79ms | 5.90s | 11.86ms | 485.47ms | 493.67ms | 1.10ms |
| create_signals | 26.99ms | 50.67ms | 4.95ms | 13.34ms | 23.44ms | 26.24ms | 73.39ms | 57.89ms |
| comp_0to1 | 7.11ms | 18.98ms | 17.76ms | 13.68ms | 13.64ms | 12.34ms | 29.31ms | 52.01ms |
| comp_1to1 | 4.20ms | 28.49ms | 11.54ms | 99.56ms | 21.18ms | 27.92ms | 54.72ms | 52.76ms |
| comp_2to1 | 2.29ms | 21.78ms | 17.00ms | 72.37ms | 28.18ms | 11.43ms | 28.16ms | 36.70ms |
| comp_4to1 | 10.73ms | 15.05ms | 11.54ms | 85.23ms | 6.96ms | 1.98ms | 18.82ms | 16.22ms |
| comp_1000to1 | 3μs | 15μs | 6μs | 59.32ms | 3μs | 9μs | 19μs | 42μs |
| comp_1to2 | 11.43ms | 40.37ms | 26.82ms | 66.89ms | 11.32ms | 13.66ms | 34.09ms | 45.33ms |
| comp_1to4 | 11.26ms | 23.05ms | 25.46ms | 99.18ms | 19.42ms | 17.82ms | 17.41ms | 44.04ms |
| comp_1to8 | 5.36ms | 24.04ms | 6.05ms | 116.37ms | 4.85ms | 6.78ms | 23.24ms | 44.10ms |
| comp_1to1000 | 3.49ms | 15.30ms | 6.64ms | 47.90ms | 4.31ms | 4.45ms | 16.44ms | 38.03ms |
| update_1to1 | 11.31ms | 26.45ms | 8.19ms | N/A | 84.83ms | 9.14ms | 16.16ms | 5.73ms |
| update_2to1 | 5.04ms | 10.86ms | 4.06ms | N/A | 43.59ms | 4.61ms | 7.92ms | 2.92ms |
| update_4to1 | 2.77ms | 6.32ms | 2.09ms | N/A | 20.09ms | 2.32ms | 4.04ms | 1.49ms |
| update_1000to1 | 10μs | 68μs | 30μs | N/A | 174μs | 23μs | 90μs | 15μs |
| update_1to2 | 5.69ms | 10.64ms | 4.14ms | N/A | 42.66ms | 4.92ms | 7.94ms | 3.03ms |
| update_1to4 | 2.43ms | 5.78ms | 2.08ms | N/A | 20.30ms | 2.31ms | 4.01ms | 1.50ms |
| update_1to1000 | 48μs | 176μs | 847μs | N/A | 95μs | 44μs | 159μs | 372μs |
| cellx1000 | 7.29ms | 71.97ms | 9.76ms | N/A | N/A | 9.71ms | 11.75ms | 5.33ms |
| cellx2500 | 20.02ms | 256.02ms | 26.40ms | N/A | N/A | 34.17ms | 32.02ms | 26.58ms |
| cellx5000 | 46.34ms | 561.93ms | 75.71ms | N/A | N/A | 67.93ms | 84.47ms | 76.39ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.34ms | 2.02s | 471.04ms | N/A | 2.21s | 505.35ms | 353.05ms | 268.66ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.30ms | 1.53s | 284.39ms | N/A | 1.52s (partial) | 277.05ms | 249.13ms | 222.62ms |
| 1000x12 - 4 sources - dynamic (large) | 277.28ms | 1.93s | 3.52s | N/A | 2.62s (partial) | 3.74s | 469.81ms | 353.41ms |
| 1000x5 - 25 sources (wide dense) | 415.11ms | 3.55s | 2.58s | N/A | 4.05s | 3.56s | 592.70ms | 509.30ms |
| 5x500 - 3 sources (deep) | 189.03ms | 1.17s | 229.54ms | N/A | 1.35s | 229.66ms | 259.82ms | 204.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.19ms | 1.76s | 446.44ms | N/A | 1.84s (partial) | 485.85ms | 386.19ms | 259.25ms |

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
