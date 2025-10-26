# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.52s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.18s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.38s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.43s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.62s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.65s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.13ms | 2.35s | 201.73ms | 1.37s | 213.35ms | 233.57ms | 160.33ms (fail) |
| broadPropagation | 266.54ms | 4.27s | 463.86ms | 78.89ms (fail) | 469.91ms | 440.87ms | 6.69ms (fail) |
| deepPropagation | 81.82ms | 1.54s | 177.99ms | 1.95s (fail) | 181.00ms | 130.09ms | 144.71ms (fail) |
| diamond | 187.90ms | 2.45s | 278.46ms | 2.56s (fail) | 283.78ms | 307.46ms | 200.88ms (fail) |
| mux | 327.07ms | 1.84s | 394.46ms | 569.71ms (fail) | 411.20ms | 403.08ms | 201.76ms (fail) |
| repeatedObservers | 49.08ms | 234.90ms | 39.89ms | 386.54ms (fail) | 46.50ms | 88.72ms | 54.35ms (fail) |
| triangle | 67.22ms | 757.93ms | 98.97ms | 910.40ms (fail) | 102.52ms | 99.17ms | 83.65ms (fail) |
| unstable | 61.41ms | 349.85ms | 74.11ms | 621.69ms (fail) | 76.15ms | 102.45ms | 373.87ms (fail) |
| molBench | 485.66ms | 582.47ms | 485.08ms | 11.14ms | 485.75ms | 498.04ms | 974μs |
| create_signals | 31.45ms | 68.15ms | 5.27ms | 25.24ms | 25.90ms | 78.36ms | 63.98ms |
| comp_0to1 | 17.37ms | 27.71ms | 17.88ms | 13.89ms | 11.65ms | 25.06ms | 57.77ms |
| comp_1to1 | 15.72ms | 38.24ms | 15.18ms | 23.82ms | 28.75ms | 37.87ms | 59.35ms |
| comp_2to1 | 3.44ms | 34.56ms | 18.96ms | 26.06ms | 12.73ms | 26.78ms | 40.44ms |
| comp_4to1 | 4.73ms | 13.24ms | 8.69ms | 3.12ms | 3.45ms | 17.67ms | 18.06ms |
| comp_1000to1 | 3μs | 25μs | 5μs | 3μs | 5μs | 17μs | 45μs |
| comp_1to2 | 16.79ms | 35.65ms | 19.95ms | 10.86ms | 13.32ms | 31.39ms | 52.17ms |
| comp_1to4 | 14.69ms | 20.13ms | 23.88ms | 23.66ms | 13.01ms | 32.14ms | 48.81ms |
| comp_1to8 | 5.48ms | 23.68ms | 7.70ms | 5.20ms | 8.67ms | 22.77ms | 47.71ms |
| comp_1to1000 | 9.71ms | 15.88ms | 9.26ms | 4.48ms | 4.46ms | 14.09ms | 41.66ms |
| update_1to1 | 5.32ms | 27.62ms | 8.40ms | 81.50ms | 10.29ms | 14.52ms | 6.01ms |
| update_2to1 | 5.77ms | 14.09ms | 4.50ms | 42.76ms | 4.60ms | 7.21ms | 3.12ms |
| update_4to1 | 1.34ms | 7.47ms | 2.14ms | 19.58ms | 2.56ms | 3.62ms | 1.50ms |
| update_1000to1 | 13μs | 67μs | 23μs | 180μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.63ms | 14.21ms | 4.18ms | 41.73ms | 4.58ms | 7.37ms | 3.03ms |
| update_1to4 | 1.33ms | 6.93ms | 2.13ms | 19.72ms | 2.60ms | 3.63ms | 1.51ms |
| update_1to1000 | 46μs | 182μs | 944μs | 135μs | 45μs | 285μs | 416μs |
| cellx1000 | 6.30ms | 68.89ms | 11.24ms | N/A | 10.60ms | 10.98ms | 6.74ms |
| cellx2500 | 20.25ms | 242.76ms | 31.70ms | N/A | 42.38ms | 39.10ms | 32.52ms |
| cellx5000 | 56.98ms | 535.44ms | 97.66ms | N/A | 84.68ms | 132.09ms | 84.40ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.26ms | 2.02s | 462.06ms | 2.10s | 509.81ms | 316.73ms | 264.82ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.09ms | 1.51s | 276.66ms | 1.41s (partial) | 280.71ms | 219.17ms | 204.82ms |
| 1000x12 - 4 sources - dynamic (large) | 299.75ms | 1.98s | 3.74s | 2.49s (partial) | 3.87s | 449.68ms | 362.98ms |
| 1000x5 - 25 sources (wide dense) | 548.53ms | 3.51s | 2.73s | 4.48s | 3.45s | 817.35ms | 518.11ms |
| 5x500 - 3 sources (deep) | 179.00ms | 1.14s | 229.80ms | 1.62s | 229.30ms | 232.31ms | 210.88ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.74ms | 1.70s | 461.85ms | 1.78s (partial) | 491.33ms | 340.33ms | 266.55ms |

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
