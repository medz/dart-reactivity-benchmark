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
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | mobx | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | riverpod | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 188.61ms | 2.29s | 206.67ms | 1.25s | 1.43s | 211.40ms | 277.67ms | 153.42ms (fail) |
| broadPropagation | 364.40ms | 4.22s | 460.16ms | 4.99s | 90.54ms (fail) | 467.72ms | 507.99ms | 6.42ms (fail) |
| deepPropagation | 123.46ms | 1.52s | 182.56ms | 4.00s | 2.13s (fail) | 181.77ms | 169.18ms | 141.06ms (fail) |
| diamond | 244.44ms | 2.40s | 285.14ms | 14.03s (fail) | 3.13s (fail) | 291.71ms | 357.10ms | 195.44ms (fail) |
| mux | 385.03ms | 1.84s | 394.32ms | 1.02s | 590.01ms (fail) | 420.47ms | 449.00ms | 196.98ms (fail) |
| repeatedObservers | 45.88ms | 227.32ms | 38.15ms | 9.74s | 417.66ms (fail) | 46.86ms | 79.72ms | 53.77ms (fail) |
| triangle | 85.84ms | 766.04ms | 103.77ms | 4.52s | 999.87ms (fail) | 104.94ms | 120.30ms | 80.88ms (fail) |
| unstable | 61.90ms | 346.36ms | 70.35ms | 7.64s | 634.61ms (fail) | 72.08ms | 96.02ms | 347.59ms (fail) |
| molBench | 496.63ms | 577.58ms | 497.50ms | 5.90s | 12.53ms | 495.59ms | 499.41ms | 902μs |
| create_signals | 24.73ms | 71.52ms | 4.96ms | 13.34ms | 27.07ms | 31.80ms | 73.73ms | 60.86ms |
| comp_0to1 | 9.51ms | 24.43ms | 23.94ms | 13.68ms | 14.05ms | 13.77ms | 31.01ms | 55.35ms |
| comp_1to1 | 4.93ms | 17.02ms | 13.87ms | 99.56ms | 22.68ms | 29.74ms | 47.81ms | 55.83ms |
| comp_2to1 | 2.70ms | 11.21ms | 16.57ms | 72.37ms | 24.15ms | 10.14ms | 19.87ms | 38.12ms |
| comp_4to1 | 8.18ms | 26.68ms | 14.24ms | 85.23ms | 6.45ms | 2.19ms | 9.70ms | 17.40ms |
| comp_1000to1 | 4μs | 15μs | 5μs | 59.32ms | 3μs | 5μs | 28μs | 42μs |
| comp_1to2 | 10.02ms | 39.18ms | 11.51ms | 66.89ms | 11.62ms | 21.43ms | 37.57ms | 46.07ms |
| comp_1to4 | 12.61ms | 22.20ms | 29.04ms | 99.18ms | 27.36ms | 10.30ms | 25.84ms | 44.60ms |
| comp_1to8 | 5.34ms | 24.40ms | 6.28ms | 116.37ms | 4.98ms | 6.95ms | 25.69ms | 44.25ms |
| comp_1to1000 | 3.87ms | 15.34ms | 5.96ms | 47.90ms | 4.50ms | 4.67ms | 15.12ms | 38.71ms |
| update_1to1 | 9.02ms | 22.61ms | 8.30ms | 86.97ms | 9.25ms | 16.20ms | 6.10ms |
| update_2to1 | 2.66ms | 12.13ms | 4.23ms | 44.05ms | 4.57ms | 9.86ms | 3.42ms |
| update_4to1 | 1.36ms | 6.42ms | 2.16ms | 20.91ms | 2.31ms | 4.31ms | 1.68ms |
| update_1000to1 | 13μs | 65μs | 20μs | 194μs | 27μs | 42μs | 17μs |
| update_1to2 | 3.80ms | 10.97ms | 4.20ms | 44.42ms | 4.83ms | 8.04ms | 3.18ms |
| update_1to4 | 1.38ms | 6.17ms | 2.18ms | 20.96ms | 2.28ms | 4.04ms | 1.55ms |
| update_1to1000 | 42μs | 183μs | 165μs | 96μs | 49μs | 184μs | 372μs |
| cellx1000 | 7.43ms | 69.76ms | 12.30ms | 9.98ms | 11.41ms | 5.84ms |
| cellx2500 | 20.94ms | 241.35ms | 28.65ms | 37.92ms | 35.96ms | 27.88ms |
| cellx5000 | 49.15ms | 548.95ms | 80.82ms | 86.63ms | 80.23ms | 74.78ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.03ms | 2.00s | 446.28ms | 2.30s | 510.62ms | 356.61ms | 252.21ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 183.00ms | 1.56s | 277.35ms | 1.51s (partial) | 280.39ms | 247.90ms | 202.42ms |
| 1000x12 - 4 sources - dynamic (large) | 287.22ms | 1.95s | 3.55s | 2.61s (partial) | 3.71s | 470.72ms | 344.88ms |
| 1000x5 - 25 sources (wide dense) | 419.77ms | 3.67s | 2.62s | 4.29s | 3.56s | 599.75ms | 494.37ms |
| 5x500 - 3 sources (deep) | 190.81ms | 1.18s | 229.05ms | 1.38s | 225.16ms | 259.16ms | 204.55ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.02ms | 1.73s | 456.31ms | 1.79s (partial) | 481.70ms | 384.86ms | 258.16ms |

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
