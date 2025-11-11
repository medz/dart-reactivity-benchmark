# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.48s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.86s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.58s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.41s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.08s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.90s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 131.51ms | 2.37s | 200.09ms | 1.56s | 212.37ms | 247.80ms | 178.51ms |
| broadPropagation | 255.62ms | 4.57s | 460.73ms | 87.80ms (fail) | 461.93ms | 452.67ms | 420.87ms |
| deepPropagation | 83.99ms | 1.56s | 181.80ms | 2.09s (fail) | 180.66ms | 130.63ms | 165.97ms |
| diamond | 163.60ms | 2.44s | 280.65ms | 2.79s (fail) | 282.57ms | 320.46ms | 230.44ms |
| mux | 322.71ms | 1.86s | 399.33ms | 569.72ms (fail) | 410.64ms | 409.07ms | 380.34ms |
| repeatedObservers | 30.40ms | 234.32ms | 40.53ms | 389.75ms (fail) | 46.19ms | 87.46ms | 59.55ms |
| triangle | 71.61ms | 782.68ms | 99.46ms | 1.01s (fail) | 100.12ms | 98.24ms | 97.22ms |
| unstable | 48.95ms | 343.09ms | 74.27ms | 658.01ms (fail) | 75.54ms | 100.96ms | 352.74ms |
| molBench | 486.55ms | 584.31ms | 489.01ms | 12.85ms | 487.33ms | 496.74ms | 494.75ms |
| create_signals | 8.29ms | 72.15ms | 5.31ms | 24.64ms | 26.48ms | 73.16ms | 63.98ms |
| comp_0to1 | 10.55ms | 28.72ms | 18.09ms | 14.14ms | 12.12ms | 34.90ms | 56.87ms |
| comp_1to1 | 25.53ms | 42.53ms | 12.71ms | 23.82ms | 29.46ms | 30.83ms | 58.54ms |
| comp_2to1 | 11.54ms | 23.07ms | 17.58ms | 25.19ms | 14.25ms | 21.19ms | 39.02ms |
| comp_4to1 | 2.31ms | 26.29ms | 11.87ms | 3.13ms | 3.78ms | 15.19ms | 17.08ms |
| comp_1000to1 | 4μs | 20μs | 4μs | 9μs | 6μs | 14μs | 64μs |
| comp_1to2 | 15.51ms | 32.16ms | 27.51ms | 11.57ms | 14.46ms | 37.70ms | 51.69ms |
| comp_1to4 | 18.70ms | 29.64ms | 22.49ms | 26.13ms | 12.29ms | 14.49ms | 50.70ms |
| comp_1to8 | 6.50ms | 25.52ms | 11.69ms | 5.55ms | 7.17ms | 19.15ms | 46.74ms |
| comp_1to1000 | 3.60ms | 23.44ms | 7.78ms | 4.70ms | 4.48ms | 13.73ms | 42.02ms |
| update_1to1 | 10.09ms | 25.24ms | 8.29ms | 98.24ms | 10.88ms | 14.75ms | 6.31ms |
| update_2to1 | 4.78ms | 14.60ms | 4.50ms | 49.50ms | 5.11ms | 7.18ms | 3.11ms |
| update_4to1 | 2.44ms | 7.00ms | 2.11ms | 24.24ms | 2.73ms | 3.65ms | 1.58ms |
| update_1000to1 | 17μs | 68μs | 21μs | 239μs | 27μs | 36μs | 16μs |
| update_1to2 | 4.85ms | 16.35ms | 4.15ms | 49.03ms | 5.20ms | 7.48ms | 3.14ms |
| update_1to4 | 2.37ms | 5.87ms | 2.11ms | 23.98ms | 2.72ms | 3.62ms | 1.61ms |
| update_1to1000 | 45μs | 172μs | 58μs | 133μs | 48μs | 166μs | 420μs |
| cellx1000 | 6.31ms | 93.66ms | 10.27ms | N/A | 10.35ms | 12.51ms | 11.11ms |
| cellx2500 | 20.96ms | 282.47ms | 32.55ms | N/A | 40.33ms | 39.86ms | 38.46ms |
| cellx5000 | 51.57ms | 644.50ms | 100.70ms | N/A | 95.09ms | 118.55ms | 117.55ms |
| 10x5 - 2 sources - read 20.0% (simple) | 201.98ms | 2.02s | 525.75ms | 2.41s | 505.38ms | 318.35ms | 254.94ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 162.80ms | 1.57s | 291.07ms | 1.56s (partial) | 280.43ms | 218.82ms | 211.08ms |
| 1000x12 - 4 sources - dynamic (large) | 302.12ms | 1.85s | 3.78s | 2.71s (partial) | 3.77s | 463.73ms | 397.20ms |
| 1000x5 - 25 sources (wide dense) | 576.20ms | 3.57s | 2.74s | 4.28s | 3.59s | 830.71ms | 521.07ms |
| 5x500 - 3 sources (deep) | 183.30ms | 1.17s | 249.73ms | 1.52s | 226.11ms | 233.33ms | 206.96ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 256.13ms | 1.76s | 469.49ms | 1.87s (partial) | 479.14ms | 342.31ms | 282.13ms |

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
