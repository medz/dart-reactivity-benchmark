# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.75s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.05s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.49s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.82s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.12s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 191.86ms | 2.32s | 204.63ms | 1.25s | 1.41s | 222.19ms | 277.86ms | 160.14ms (fail) |
| broadPropagation | 364.96ms | 4.29s | 452.96ms | 4.99s | 81.90ms (fail) | 469.84ms | 506.75ms | 6.06ms (fail) |
| deepPropagation | 124.23ms | 1.57s | 182.05ms | 4.00s | 2.00s (fail) | 187.39ms | 169.15ms | 143.69ms (fail) |
| diamond | 239.97ms | 2.45s | 281.42ms | 14.03s (fail) | 2.69s (fail) | 292.66ms | 363.00ms | 200.61ms (fail) |
| mux | 382.74ms | 1.83s | 396.61ms | 1.02s | 619.69ms (fail) | 420.32ms | 440.81ms | 193.90ms (fail) |
| repeatedObservers | 45.39ms | 239.69ms | 38.59ms | 9.74s | 419.64ms (fail) | 46.01ms | 78.41ms | 53.42ms (fail) |
| triangle | 86.04ms | 791.53ms | 99.52ms | 4.52s | 957.05ms (fail) | 100.71ms | 114.71ms | 80.17ms (fail) |
| unstable | 63.47ms | 353.24ms | 70.17ms | 7.64s | 656.43ms (fail) | 71.14ms | 95.10ms | 351.85ms (fail) |
| molBench | 495.68ms | 584.52ms | 496.85ms | 5.90s | 11.32ms | 495.99ms | 499.49ms | 1.12ms |
| create_signals | 24.97ms | 74.36ms | 5.23ms | 13.34ms | 27.53ms | 28.24ms | 79.80ms | 73.72ms |
| comp_0to1 | 7.95ms | 27.60ms | 18.72ms | 13.68ms | 15.70ms | 12.86ms | 30.60ms | 59.59ms |
| comp_1to1 | 5.08ms | 31.92ms | 13.77ms | 99.56ms | 25.91ms | 20.11ms | 47.98ms | 56.49ms |
| comp_2to1 | 2.57ms | 43.73ms | 23.31ms | 72.37ms | 25.47ms | 9.78ms | 36.95ms | 39.45ms |
| comp_4to1 | 9.07ms | 18.52ms | 7.68ms | 85.23ms | 3.42ms | 7.48ms | 4.92ms | 17.88ms |
| comp_1000to1 | 6μs | 16μs | 6μs | 59.32ms | 5μs | 8μs | 19μs | 41μs |
| comp_1to2 | 21.52ms | 43.45ms | 15.94ms | 66.89ms | 16.68ms | 23.02ms | 40.56ms | 46.51ms |
| comp_1to4 | 6.25ms | 28.54ms | 20.19ms | 99.18ms | 27.80ms | 8.88ms | 23.59ms | 45.02ms |
| comp_1to8 | 6.14ms | 25.83ms | 6.90ms | 116.37ms | 5.47ms | 7.00ms | 22.55ms | 43.72ms |
| comp_1to1000 | 3.99ms | 15.44ms | 4.73ms | 47.90ms | 4.63ms | 4.51ms | 15.43ms | 38.75ms |
| update_1to1 | 8.43ms | 25.62ms | 8.57ms | N/A | 88.11ms | 9.28ms | 18.08ms | 6.16ms |
| update_2to1 | 2.65ms | 11.38ms | 4.33ms | N/A | 45.35ms | 4.58ms | 8.01ms | 3.38ms |
| update_4to1 | 2.80ms | 6.02ms | 2.11ms | N/A | 20.54ms | 2.32ms | 4.07ms | 1.56ms |
| update_1000to1 | 12μs | 68μs | 21μs | N/A | 172μs | 22μs | 42μs | 17μs |
| update_1to2 | 3.63ms | 12.26ms | 4.23ms | N/A | 43.10ms | 4.90ms | 9.35ms | 3.15ms |
| update_1to4 | 1.72ms | 5.76ms | 2.11ms | N/A | 21.72ms | 2.32ms | 4.25ms | 1.56ms |
| update_1to1000 | 37μs | 162μs | 48μs | N/A | 124μs | 47μs | 157μs | 376μs |
| cellx1000 | 7.52ms | 72.71ms | 9.42ms | N/A | N/A | 11.65ms | 12.03ms | 5.32ms |
| cellx2500 | 20.82ms | 264.52ms | 25.49ms | N/A | N/A | 31.49ms | 35.74ms | 30.84ms |
| cellx5000 | 52.84ms | 610.08ms | 70.13ms | N/A | N/A | 74.08ms | 96.12ms | 100.42ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.40ms | 2.04s | 454.65ms | N/A | 2.31s | 507.56ms | 365.87ms | 246.07ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.68ms | 1.55s | 271.41ms | N/A | 1.51s (partial) | 284.39ms | 247.04ms | 201.50ms |
| 1000x12 - 4 sources - dynamic (large) | 281.62ms | 1.92s | 3.55s | N/A | 2.61s (partial) | 3.82s | 466.55ms | 332.94ms |
| 1000x5 - 25 sources (wide dense) | 410.60ms | 3.64s | 2.63s | N/A | 4.23s | 3.59s | 601.60ms | 487.73ms |
| 5x500 - 3 sources (deep) | 195.79ms | 1.16s | 236.09ms | N/A | 1.48s | 232.30ms | 257.68ms | 210.44ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.26ms | 1.76s | 447.90ms | N/A | 1.78s (partial) | 481.14ms | 386.89ms | 261.58ms |

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
