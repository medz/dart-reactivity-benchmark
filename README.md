# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.58s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.08s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.62s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.26s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.88s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.72s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.41ms | 2.41s | 201.08ms | 1.47s | 208.96ms | 246.04ms | 163.03ms (fail) |
| broadPropagation | 272.75ms | 4.32s | 459.04ms | 86.30ms (fail) | 463.51ms | 435.88ms | 6.88ms (fail) |
| deepPropagation | 81.17ms | 1.56s | 179.36ms | 2.01s (fail) | 177.76ms | 131.04ms | 147.64ms (fail) |
| diamond | 181.15ms | 2.44s | 282.19ms | 2.63s (fail) | 292.75ms | 308.26ms | 184.13ms (fail) |
| mux | 334.98ms | 1.87s | 394.23ms | 568.66ms (fail) | 414.79ms | 405.61ms | 190.14ms (fail) |
| repeatedObservers | 49.34ms | 238.91ms | 40.08ms | 386.77ms (fail) | 46.32ms | 87.35ms | 52.77ms (fail) |
| triangle | 67.56ms | 785.32ms | 99.40ms | 960.07ms (fail) | 103.73ms | 95.15ms | 87.89ms (fail) |
| unstable | 61.54ms | 353.44ms | 74.59ms | 648.44ms (fail) | 76.09ms | 101.65ms | 339.07ms (fail) |
| molBench | 485.97ms | 585.68ms | 488.52ms | 12.63ms | 450.00ms | 497.13ms | 1.17ms |
| create_signals | 32.75ms | 76.22ms | 5.22ms | 25.54ms | 26.35ms | 73.01ms | 68.78ms |
| comp_0to1 | 17.54ms | 36.11ms | 18.45ms | 14.45ms | 11.92ms | 37.74ms | 56.25ms |
| comp_1to1 | 13.30ms | 27.23ms | 11.09ms | 22.47ms | 22.81ms | 49.35ms | 59.21ms |
| comp_2to1 | 2.53ms | 21.39ms | 12.04ms | 25.54ms | 14.09ms | 8.64ms | 45.55ms |
| comp_4to1 | 1.84ms | 30.97ms | 10.99ms | 3.26ms | 3.30ms | 7.73ms | 17.28ms |
| comp_1000to1 | 3μs | 16μs | 9μs | 5μs | 6μs | 14μs | 44μs |
| comp_1to2 | 17.86ms | 37.63ms | 22.19ms | 12.82ms | 13.87ms | 36.04ms | 51.20ms |
| comp_1to4 | 20.59ms | 20.21ms | 35.43ms | 26.83ms | 12.55ms | 15.03ms | 49.40ms |
| comp_1to8 | 6.25ms | 22.89ms | 8.25ms | 5.58ms | 7.25ms | 18.87ms | 46.60ms |
| comp_1to1000 | 3.82ms | 15.48ms | 7.46ms | 4.39ms | 4.49ms | 14.10ms | 40.73ms |
| update_1to1 | 5.42ms | 27.68ms | 8.41ms | 84.26ms | 10.21ms | 16.70ms | 6.01ms |
| update_2to1 | 5.78ms | 14.33ms | 4.42ms | 43.63ms | 4.60ms | 8.20ms | 3.12ms |
| update_4to1 | 1.41ms | 6.76ms | 2.09ms | 20.73ms | 2.54ms | 4.12ms | 1.56ms |
| update_1000to1 | 13μs | 72μs | 20μs | 205μs | 25μs | 39μs | 15μs |
| update_1to2 | 2.67ms | 14.00ms | 4.10ms | 43.20ms | 4.58ms | 8.48ms | 3.03ms |
| update_1to4 | 1.61ms | 6.72ms | 2.07ms | 20.71ms | 2.54ms | 4.10ms | 1.54ms |
| update_1to1000 | 46μs | 173μs | 781μs | 149μs | 50μs | 172μs | 407μs |
| cellx1000 | 6.89ms | 90.38ms | 10.63ms | N/A | 10.06ms | 9.41ms | 5.95ms |
| cellx2500 | 25.83ms | 299.87ms | 34.19ms | N/A | 35.95ms | 27.92ms | 32.50ms |
| cellx5000 | 91.04ms | 625.44ms | 110.48ms | N/A | 83.67ms | 69.17ms | 74.18ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.28ms | 2.03s | 510.40ms | 2.29s | 520.63ms | 317.30ms | 258.21ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.60ms | 1.50s | 292.82ms | 1.50s (partial) | 281.20ms | 220.87ms | 201.90ms |
| 1000x12 - 4 sources - dynamic (large) | 291.75ms | 1.96s | 3.78s | 2.76s (partial) | 3.79s | 444.06ms | 358.89ms |
| 1000x5 - 25 sources (wide dense) | 566.03ms | 3.56s | 2.78s | 4.55s | 3.45s | 807.34ms | 511.49ms |
| 5x500 - 3 sources (deep) | 180.94ms | 1.18s | 245.38ms | 1.63s | 224.24ms | 230.51ms | 210.67ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 254.03ms | 1.69s | 484.03ms | 1.85s (partial) | 481.29ms | 338.34ms | 265.33ms |

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
