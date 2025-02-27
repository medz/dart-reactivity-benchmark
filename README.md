# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.75s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.09s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.35s |
| 5 | mobx | 100.0% | 35/35 | 27.45s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| riverpod | 62.9% | 22/35 | 23.68s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | mobx | riverpod | [alien_signals](https://github.com/medz/alien-signals-dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [signals](https://github.com/rodydavis/signals.dart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 206.67ms | 1.25s | 2.29s | 1.43s | 188.61ms | 277.67ms | 211.40ms | 153.42ms (fail) |
| broadPropagation | 460.16ms | 4.99s | 4.22s | 90.54ms (fail) | 364.40ms | 507.99ms | 467.72ms | 6.42ms (fail) |
| deepPropagation | 182.56ms | 4.00s | 1.52s | 2.13s (fail) | 123.46ms | 169.18ms | 181.77ms | 141.06ms (fail) |
| diamond | 285.14ms | 14.03s (fail) | 2.40s | 3.13s (fail) | 244.44ms | 357.10ms | 291.71ms | 195.44ms (fail) |
| mux | 394.32ms | 1.02s | 1.84s | 590.01ms (fail) | 385.03ms | 449.00ms | 420.47ms | 196.98ms (fail) |
| repeatedObservers | 38.15ms | 9.74s | 227.32ms | 417.66ms (fail) | 45.88ms | 79.72ms | 46.86ms | 53.77ms (fail) |
| triangle | 103.77ms | 4.52s | 766.04ms | 999.87ms (fail) | 85.84ms | 120.30ms | 104.94ms | 80.88ms (fail) |
| unstable | 70.35ms | 7.64s | 346.36ms | 634.61ms (fail) | 61.90ms | 96.02ms | 72.08ms | 347.59ms (fail) |
| molBench | 497.50ms | 5.90s | 577.58ms | 12.53ms | 496.63ms | 499.41ms | 495.59ms | 902μs |
| create_signals | 4.96ms | 13.34ms | 71.52ms | 27.07ms | 24.73ms | 73.73ms | 31.80ms | 60.86ms |
| comp_0to1 | 23.94ms | 13.68ms | 24.43ms | 14.05ms | 9.51ms | 31.01ms | 13.77ms | 55.35ms |
| comp_1to1 | 13.87ms | 99.56ms | 17.02ms | 22.68ms | 4.93ms | 47.81ms | 29.74ms | 55.83ms |
| comp_2to1 | 16.57ms | 72.37ms | 11.21ms | 24.15ms | 2.70ms | 19.87ms | 10.14ms | 38.12ms |
| comp_4to1 | 14.24ms | 85.23ms | 26.68ms | 6.45ms | 8.18ms | 9.70ms | 2.19ms | 17.40ms |
| comp_1000to1 | 5μs | 59.32ms | 15μs | 3μs | 4μs | 28μs | 5μs | 42μs |
| comp_1to2 | 11.51ms | 66.89ms | 39.18ms | 11.62ms | 10.02ms | 37.57ms | 21.43ms | 46.07ms |
| comp_1to4 | 29.04ms | 99.18ms | 22.20ms | 27.36ms | 12.61ms | 25.84ms | 10.30ms | 44.60ms |
| comp_1to8 | 6.28ms | 116.37ms | 24.40ms | 4.98ms | 5.34ms | 25.69ms | 6.95ms | 44.25ms |
| comp_1to1000 | 5.96ms | 47.90ms | 15.34ms | 4.50ms | 3.87ms | 15.12ms | 4.67ms | 38.71ms |
| update_1to1 | 8.30ms | 22.61ms | 86.97ms | 9.02ms | 16.20ms | 9.25ms | 6.10ms |
| update_2to1 | 4.23ms | 12.13ms | 44.05ms | 2.66ms | 9.86ms | 4.57ms | 3.42ms |
| update_4to1 | 2.16ms | 6.42ms | 20.91ms | 1.36ms | 4.31ms | 2.31ms | 1.68ms |
| update_1000to1 | 20μs | 65μs | 194μs | 13μs | 42μs | 27μs | 17μs |
| update_1to2 | 4.20ms | 10.97ms | 44.42ms | 3.80ms | 8.04ms | 4.83ms | 3.18ms |
| update_1to4 | 2.18ms | 6.17ms | 20.96ms | 1.38ms | 4.04ms | 2.28ms | 1.55ms |
| update_1to1000 | 165μs | 183μs | 96μs | 42μs | 184μs | 49μs | 372μs |
| cellx1000 | 12.30ms | 69.76ms | 7.43ms | 11.41ms | 9.98ms | 5.84ms |
| cellx2500 | 28.65ms | 241.35ms | 20.94ms | 35.96ms | 37.92ms | 27.88ms |
| cellx5000 | 80.82ms | 548.95ms | 49.15ms | 80.23ms | 86.63ms | 74.78ms |
| 10x5 - 2 sources - read 20.0% (simple) | 446.28ms | 2.00s | 2.30s | 234.03ms | 356.61ms | 510.62ms | 252.21ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 277.35ms | 1.56s | 1.51s (partial) | 183.00ms | 247.90ms | 280.39ms | 202.42ms |
| 1000x12 - 4 sources - dynamic (large) | 3.55s | 1.95s | 2.61s (partial) | 287.22ms | 470.72ms | 3.71s | 344.88ms |
| 1000x5 - 25 sources (wide dense) | 2.62s | 3.67s | 4.29s | 419.77ms | 599.75ms | 3.56s | 494.37ms |
| 5x500 - 3 sources (deep) | 229.05ms | 1.18s | 1.38s | 190.81ms | 259.16ms | 225.16ms | 204.55ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 456.31ms | 1.73s | 1.79s (partial) | 266.02ms | 384.86ms | 481.70ms | 258.16ms |

<!-- test-case end -->

> [!TIP]
> - `(fail)`: Test case failed
> - `(half)`: Half of the test cases failed

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
