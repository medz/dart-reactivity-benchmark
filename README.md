# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.91s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.42s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.54s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.79s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 163.94ms | 2.40s | 200.24ms | 1.41s | 213.10ms | 254.83ms | 157.22ms (fail) |
| broadPropagation | 319.48ms | 4.36s | 467.04ms | 80.51ms (fail) | 469.30ms | 458.18ms | 6.63ms (fail) |
| deepPropagation | 98.24ms | 1.54s | 178.93ms | 1.94s (fail) | 177.07ms | 141.50ms | 142.64ms (fail) |
| diamond | 222.92ms | 2.43s | 281.14ms | 2.57s (fail) | 285.01ms | 313.43ms | 182.25ms (fail) |
| mux | 341.69ms | 1.83s | 401.16ms | 562.68ms (fail) | 408.41ms | 404.75ms | 195.04ms (fail) |
| repeatedObservers | 50.51ms | 234.24ms | 41.19ms | 386.70ms (fail) | 46.84ms | 91.31ms | 52.74ms (fail) |
| triangle | 110.32ms | 780.79ms | 99.29ms | 951.10ms (fail) | 100.98ms | 98.73ms | 83.44ms (fail) |
| unstable | 142.16ms | 345.67ms | 73.96ms | 620.33ms (fail) | 77.22ms | 168.66ms | 358.46ms (fail) |
| molBench | 487.56ms | 584.33ms | 488.55ms | 11.34ms | 485.56ms | 499.51ms | 1.02ms |
| create_signals | 32.78ms | 87.97ms | 5.16ms | 23.74ms | 25.45ms | 51.68ms | 71.10ms |
| comp_0to1 | 12.38ms | 15.90ms | 18.01ms | 13.69ms | 11.93ms | 24.55ms | 64.33ms |
| comp_1to1 | 18.42ms | 38.11ms | 14.81ms | 28.46ms | 28.57ms | 43.83ms | 63.78ms |
| comp_2to1 | 12.27ms | 23.49ms | 17.56ms | 25.34ms | 16.99ms | 20.77ms | 45.85ms |
| comp_4to1 | 6.26ms | 31.59ms | 11.24ms | 6.82ms | 6.87ms | 4.33ms | 19.07ms |
| comp_1000to1 | 5μs | 25μs | 4μs | 4μs | 9μs | 19μs | 44μs |
| comp_1to2 | 13.06ms | 38.54ms | 18.17ms | 11.26ms | 15.47ms | 38.32ms | 49.25ms |
| comp_1to4 | 15.49ms | 22.22ms | 22.83ms | 23.65ms | 7.11ms | 21.35ms | 51.56ms |
| comp_1to8 | 4.88ms | 23.80ms | 7.61ms | 5.27ms | 6.68ms | 19.03ms | 47.39ms |
| comp_1to1000 | 3.73ms | 15.54ms | 7.14ms | 4.38ms | 4.39ms | 14.51ms | 41.31ms |
| update_1to1 | 5.46ms | 25.18ms | 8.89ms | 80.77ms | 10.15ms | 17.06ms | 6.05ms |
| update_2to1 | 2.78ms | 13.12ms | 4.97ms | 41.07ms | 4.50ms | 8.54ms | 3.14ms |
| update_4to1 | 1.45ms | 6.84ms | 2.22ms | 19.73ms | 2.54ms | 4.22ms | 1.59ms |
| update_1000to1 | 24μs | 58μs | 32μs | 172μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.77ms | 12.39ms | 4.46ms | 43.40ms | 4.52ms | 8.63ms | 3.12ms |
| update_1to4 | 1.47ms | 6.24ms | 2.38ms | 19.74ms | 2.56ms | 4.20ms | 1.56ms |
| update_1to1000 | 51μs | 172μs | 583μs | 124μs | 42μs | 145μs | 414μs |
| cellx1000 | 7.34ms | 80.17ms | 10.13ms | N/A | 9.97ms | 10.13ms | 5.34ms |
| cellx2500 | 21.52ms | 287.13ms | 36.84ms | N/A | 34.45ms | 34.40ms | 26.54ms |
| cellx5000 | 49.82ms | 601.38ms | 123.28ms | N/A | 72.47ms | 123.26ms | 92.26ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.20ms | 2.01s | 450.50ms | 2.21s | 513.22ms | 327.52ms | 241.44ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.96ms | 1.49s | 274.53ms | 1.50s (partial) | 286.33ms | 221.30ms | 198.73ms |
| 1000x12 - 4 sources - dynamic (large) | 349.92ms | 1.91s | 3.71s | 2.55s (partial) | 3.75s | 439.28ms | 352.74ms |
| 1000x5 - 25 sources (wide dense) | 495.39ms | 3.47s | 2.75s | 4.30s | 3.43s | 791.21ms | 510.29ms |
| 5x500 - 3 sources (deep) | 201.96ms | 1.12s | 230.66ms | 1.54s | 224.49ms | 225.25ms | 207.41ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 284.66ms | 1.71s | 457.83ms | 1.81s (partial) | 484.33ms | 334.75ms | 260.50ms |

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
