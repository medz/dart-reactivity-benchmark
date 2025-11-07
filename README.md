# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.46s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.02s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.25s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.42s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 141.09ms | 2.34s | 199.50ms | 1.40s | 210.93ms | 238.03ms | 163.34ms (fail) |
| broadPropagation | 267.21ms | 4.28s | 467.46ms | 82.67ms (fail) | 464.47ms | 439.92ms | 6.69ms (fail) |
| deepPropagation | 80.91ms | 1.56s | 177.41ms | 1.95s (fail) | 175.61ms | 131.20ms | 143.32ms (fail) |
| diamond | 180.36ms | 2.44s | 280.91ms | 2.56s (fail) | 282.70ms | 314.25ms | 197.57ms (fail) |
| mux | 321.10ms | 1.84s | 397.32ms | 554.04ms (fail) | 412.69ms | 391.76ms | 194.68ms (fail) |
| repeatedObservers | 49.10ms | 230.20ms | 40.30ms | 386.47ms (fail) | 46.44ms | 91.82ms | 52.51ms (fail) |
| triangle | 67.43ms | 770.94ms | 99.66ms | 952.74ms (fail) | 101.30ms | 95.60ms | 82.32ms (fail) |
| unstable | 62.10ms | 345.22ms | 74.66ms | 669.85ms (fail) | 76.03ms | 100.92ms | 339.09ms (fail) |
| molBench | 488.63ms | 581.73ms | 488.59ms | 11.61ms | 485.43ms | 497.62ms | 913μs |
| create_signals | 30.94ms | 73.62ms | 16.57ms | 23.04ms | 24.32ms | 67.40ms | 66.53ms |
| comp_0to1 | 15.68ms | 25.82ms | 14.97ms | 13.48ms | 10.95ms | 25.00ms | 63.05ms |
| comp_1to1 | 12.80ms | 17.67ms | 7.19ms | 22.10ms | 27.33ms | 29.54ms | 58.01ms |
| comp_2to1 | 2.40ms | 20.90ms | 11.49ms | 24.24ms | 8.71ms | 14.01ms | 44.19ms |
| comp_4to1 | 1.68ms | 28.60ms | 10.79ms | 5.55ms | 1.99ms | 12.92ms | 17.39ms |
| comp_1000to1 | 3μs | 15μs | 9μs | 3μs | 7μs | 18μs | 45μs |
| comp_1to2 | 15.47ms | 34.19ms | 21.53ms | 10.90ms | 18.01ms | 39.56ms | 50.93ms |
| comp_1to4 | 20.77ms | 22.77ms | 29.14ms | 24.49ms | 13.00ms | 21.16ms | 49.20ms |
| comp_1to8 | 6.77ms | 24.58ms | 5.30ms | 5.13ms | 6.70ms | 21.49ms | 46.16ms |
| comp_1to1000 | 3.36ms | 15.78ms | 6.88ms | 4.16ms | 4.45ms | 13.75ms | 41.48ms |
| update_1to1 | 7.18ms | 27.45ms | 8.32ms | 85.15ms | 10.19ms | 14.73ms | 6.06ms |
| update_2to1 | 5.86ms | 13.83ms | 4.38ms | 43.16ms | 4.51ms | 7.18ms | 3.13ms |
| update_4to1 | 1.39ms | 6.88ms | 2.07ms | 20.59ms | 2.52ms | 3.63ms | 1.59ms |
| update_1000to1 | 29μs | 65μs | 20μs | 175μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.63ms | 13.38ms | 4.20ms | 42.75ms | 4.51ms | 7.46ms | 3.08ms |
| update_1to4 | 1.38ms | 6.71ms | 2.08ms | 20.10ms | 2.53ms | 3.61ms | 1.57ms |
| update_1to1000 | 44μs | 177μs | 990μs | 91μs | 42μs | 144μs | 519μs |
| cellx1000 | 6.22ms | 69.28ms | 9.51ms | N/A | 9.51ms | 10.94ms | 5.13ms |
| cellx2500 | 18.54ms | 258.65ms | 26.53ms | N/A | 33.05ms | 26.53ms | 25.15ms |
| cellx5000 | 50.09ms | 569.04ms | 73.20ms | N/A | 63.34ms | 62.21ms | 57.43ms |
| 10x5 - 2 sources - read 20.0% (simple) | 201.87ms | 2.00s | 442.53ms | 2.17s | 522.56ms | 315.24ms | 260.87ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.83ms | 1.50s | 278.59ms | 1.49s (partial) | 287.55ms | 218.71ms | 204.84ms |
| 1000x12 - 4 sources - dynamic (large) | 274.52ms | 1.87s | 3.68s | 2.47s (partial) | 3.75s | 443.87ms | 342.80ms |
| 1000x5 - 25 sources (wide dense) | 544.49ms | 3.47s | 2.71s | 4.22s | 3.42s | 801.43ms | 513.25ms |
| 5x500 - 3 sources (deep) | 175.94ms | 1.13s | 231.53ms | 1.38s | 223.55ms | 228.14ms | 210.44ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 245.68ms | 1.67s | 457.32ms | 1.78s (partial) | 485.37ms | 334.93ms | 262.60ms |

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
