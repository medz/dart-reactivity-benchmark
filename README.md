# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.46s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.38s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.91s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.40s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.98s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 156.19ms | 2.41s | 197.48ms | 1.40s | 214.73ms | 294.91ms | 151.06ms (fail) |
| broadPropagation | 318.94ms | 4.49s | 495.32ms | 83.52ms (fail) | 449.17ms | 528.91ms | 6.10ms (fail) |
| deepPropagation | 96.62ms | 1.56s | 176.51ms | 2.02s (fail) | 174.75ms | 169.79ms | 140.73ms (fail) |
| diamond | 214.95ms | 2.47s | 295.75ms | 2.68s (fail) | 279.96ms | 355.34ms | 182.47ms (fail) |
| mux | 341.79ms | 1.81s | 400.18ms | 588.18ms (fail) | 446.66ms | 443.22ms | 191.12ms (fail) |
| repeatedObservers | 50.84ms | 235.65ms | 41.34ms | 438.06ms (fail) | 45.24ms | 87.28ms | 52.83ms (fail) |
| triangle | 75.56ms | 758.47ms | 101.91ms | 956.93ms (fail) | 100.54ms | 115.77ms | 82.43ms (fail) |
| unstable | 70.74ms | 353.39ms | 72.89ms | 648.55ms (fail) | 79.17ms | 103.21ms | 338.15ms (fail) |
| molBench | 487.47ms | 572.48ms | 486.89ms | 12.62ms | 486.78ms | 500.94ms | 891μs |
| create_signals | 27.11ms | 68.15ms | 5.32ms | 25.31ms | 25.98ms | 53.28ms | 65.86ms |
| comp_0to1 | 9.24ms | 27.84ms | 17.37ms | 14.09ms | 11.81ms | 34.83ms | 60.39ms |
| comp_1to1 | 22.77ms | 42.02ms | 12.32ms | 22.65ms | 18.20ms | 40.87ms | 55.98ms |
| comp_2to1 | 15.64ms | 21.97ms | 16.95ms | 24.06ms | 9.32ms | 13.12ms | 36.59ms |
| comp_4to1 | 3.67ms | 17.44ms | 11.99ms | 4.96ms | 6.86ms | 29.38ms | 16.79ms |
| comp_1000to1 | 6μs | 30μs | 6μs | 3μs | 4μs | 20μs | 43μs |
| comp_1to2 | 16.64ms | 36.41ms | 22.34ms | 13.14ms | 13.24ms | 34.40ms | 46.45ms |
| comp_1to4 | 17.23ms | 18.49ms | 22.02ms | 22.31ms | 10.64ms | 30.60ms | 45.06ms |
| comp_1to8 | 5.61ms | 20.68ms | 6.81ms | 5.10ms | 6.37ms | 17.42ms | 44.04ms |
| comp_1to1000 | 3.10ms | 16.10ms | 6.07ms | 4.10ms | 4.25ms | 15.89ms | 40.30ms |
| update_1to1 | 5.81ms | 25.08ms | 8.66ms | 85.51ms | 9.00ms | 15.60ms | 5.65ms |
| update_2to1 | 2.88ms | 10.98ms | 4.27ms | 42.39ms | 4.50ms | 7.68ms | 2.83ms |
| update_4to1 | 1.48ms | 7.11ms | 2.19ms | 21.18ms | 2.27ms | 3.83ms | 1.43ms |
| update_1000to1 | 14μs | 67μs | 21μs | 192μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.87ms | 11.36ms | 4.83ms | 42.16ms | 6.38ms | 7.66ms | 2.89ms |
| update_1to4 | 1.45ms | 5.64ms | 2.17ms | 20.15ms | 2.26ms | 3.85ms | 1.46ms |
| update_1to1000 | 30μs | 167μs | 968μs | 144μs | 41μs | 169μs | 391μs |
| cellx1000 | 7.29ms | 77.43ms | 9.77ms | N/A | 9.69ms | 11.30ms | 5.25ms |
| cellx2500 | 26.02ms | 269.92ms | 26.33ms | N/A | 31.50ms | 31.58ms | 23.26ms |
| cellx5000 | 43.69ms | 568.43ms | 67.87ms | N/A | 62.02ms | 76.03ms | 63.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.71ms | 2.03s | 440.84ms | 2.37s | 517.05ms | 357.23ms | 236.88ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.78ms | 1.52s | 282.14ms | 1.50s (partial) | 278.88ms | 250.51ms | 201.53ms |
| 1000x12 - 4 sources - dynamic (large) | 340.26ms | 1.99s | 3.73s | 2.54s (partial) | 3.76s | 462.63ms | 339.86ms |
| 1000x5 - 25 sources (wide dense) | 491.39ms | 3.56s | 2.73s | 4.20s | 3.42s | 715.71ms | 499.74ms |
| 5x500 - 3 sources (deep) | 197.46ms | 1.17s | 230.82ms | 1.41s | 226.87ms | 268.98ms | 203.65ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.37ms | 1.75s | 458.03ms | 1.78s (partial) | 477.68ms | 379.37ms | 258.89ms |

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
