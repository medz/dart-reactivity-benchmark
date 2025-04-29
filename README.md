# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.73s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.46s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.06s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.22ms | 2.36s | 206.57ms | 1.25s | 1.50s | 212.38ms | 281.76ms | 149.46ms (fail) |
| broadPropagation | 357.31ms | 4.24s | 456.05ms | 4.99s | 85.40ms (fail) | 455.23ms | 509.07ms | 6.17ms (fail) |
| deepPropagation | 120.15ms | 1.52s | 179.91ms | 4.00s | 2.02s (fail) | 177.95ms | 177.13ms | 139.41ms (fail) |
| diamond | 237.13ms | 2.40s | 282.03ms | 14.03s (fail) | 2.71s (fail) | 287.56ms | 356.02ms | 183.58ms (fail) |
| mux | 370.14ms | 1.83s | 392.22ms | 1.02s | 563.90ms (fail) | 408.56ms | 435.44ms | 195.66ms (fail) |
| repeatedObservers | 45.26ms | 230.34ms | 38.87ms | 9.74s | 386.42ms (fail) | 46.58ms | 77.98ms | 52.27ms (fail) |
| triangle | 84.73ms | 791.54ms | 98.63ms | 4.52s | 889.90ms (fail) | 101.63ms | 116.87ms | 77.28ms (fail) |
| unstable | 60.60ms | 348.02ms | 73.39ms | 7.64s | 618.11ms (fail) | 74.43ms | 94.78ms | 341.06ms (fail) |
| molBench | 492.46ms | 584.60ms | 490.41ms | 5.90s | 12.30ms | 486.59ms | 494.42ms | 1.04ms |
| create_signals | 27.14ms | 50.13ms | 5.22ms | 13.34ms | 24.32ms | 33.11ms | 74.52ms | 62.18ms |
| comp_0to1 | 11.21ms | 15.20ms | 17.54ms | 13.68ms | 15.05ms | 14.55ms | 25.60ms | 55.38ms |
| comp_1to1 | 7.56ms | 37.25ms | 14.28ms | 99.56ms | 25.18ms | 27.32ms | 29.00ms | 57.51ms |
| comp_2to1 | 14.67ms | 22.00ms | 15.72ms | 72.37ms | 33.24ms | 17.61ms | 35.47ms | 38.48ms |
| comp_4to1 | 1.64ms | 19.84ms | 7.18ms | 85.23ms | 6.74ms | 6.16ms | 4.62ms | 17.32ms |
| comp_1000to1 | 5μs | 16μs | 5μs | 59.32ms | 3μs | 9μs | 14μs | 45μs |
| comp_1to2 | 9.08ms | 34.15ms | 26.53ms | 66.89ms | 11.68ms | 21.65ms | 33.13ms | 48.69ms |
| comp_1to4 | 8.04ms | 17.30ms | 23.92ms | 99.18ms | 20.50ms | 20.69ms | 15.48ms | 47.14ms |
| comp_1to8 | 7.39ms | 20.14ms | 5.75ms | 116.37ms | 8.05ms | 7.32ms | 21.07ms | 46.41ms |
| comp_1to1000 | 3.52ms | 15.04ms | 6.11ms | 47.90ms | 4.43ms | 4.51ms | 14.56ms | 42.13ms |
| update_1to1 | 11.43ms | 22.35ms | 8.32ms | N/A | 93.00ms | 9.31ms | 16.18ms | 5.82ms |
| update_2to1 | 4.97ms | 11.85ms | 4.08ms | N/A | 48.48ms | 4.62ms | 7.93ms | 2.88ms |
| update_4to1 | 2.75ms | 6.28ms | 2.13ms | N/A | 22.68ms | 2.31ms | 4.03ms | 1.45ms |
| update_1000to1 | 18μs | 59μs | 20μs | N/A | 222μs | 24μs | 41μs | 15μs |
| update_1to2 | 5.57ms | 11.22ms | 4.08ms | N/A | 47.07ms | 4.86ms | 8.10ms | 2.94ms |
| update_1to4 | 2.50ms | 6.44ms | 2.07ms | N/A | 22.63ms | 2.36ms | 4.05ms | 1.45ms |
| update_1to1000 | 46μs | 167μs | 887μs | N/A | 119μs | 44μs | 150μs | 409μs |
| cellx1000 | 7.35ms | 80.75ms | 9.67ms | N/A | N/A | 9.82ms | 12.92ms | 5.50ms |
| cellx2500 | 21.37ms | 281.27ms | 27.76ms | N/A | N/A | 33.21ms | 41.87ms | 26.25ms |
| cellx5000 | 55.21ms | 578.04ms | 83.39ms | N/A | N/A | 93.32ms | 108.45ms | 88.03ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.53ms | 2.02s | 446.29ms | N/A | 2.36s | 498.74ms | 389.13ms | 243.69ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.36ms | 1.54s | 281.15ms | N/A | 1.50s (partial) | 289.06ms | 250.80ms | 202.53ms |
| 1000x12 - 4 sources - dynamic (large) | 291.03ms | 1.87s | 3.52s | N/A | 2.54s (partial) | 3.74s | 471.07ms | 352.92ms |
| 1000x5 - 25 sources (wide dense) | 411.99ms | 3.56s | 2.63s | N/A | 4.14s | 3.42s | 601.06ms | 505.31ms |
| 5x500 - 3 sources (deep) | 193.00ms | 1.18s | 228.08ms | N/A | 1.47s | 225.28ms | 254.60ms | 207.03ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.04ms | 1.75s | 451.16ms | N/A | 1.87s (partial) | 474.77ms | 387.15ms | 261.22ms |

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
