# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.97s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.45s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.52s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.93s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.59s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.16s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 167.13ms | 2.37s | 201.23ms | 1.37s | 213.19ms | 256.99ms | 151.03ms (fail) |
| broadPropagation | 317.52ms | 4.44s | 459.23ms | 82.55ms (fail) | 462.41ms | 457.03ms | 6.44ms (fail) |
| deepPropagation | 99.04ms | 1.54s | 180.04ms | 1.93s (fail) | 170.41ms | 148.82ms | 146.74ms (fail) |
| diamond | 224.09ms | 2.44s | 279.07ms | 2.68s (fail) | 285.65ms | 312.17ms | 193.75ms (fail) |
| mux | 342.17ms | 1.84s | 398.74ms | 577.09ms (fail) | 412.18ms | 405.97ms | 198.40ms (fail) |
| repeatedObservers | 50.97ms | 235.02ms | 40.53ms | 386.61ms (fail) | 46.19ms | 93.60ms | 53.01ms (fail) |
| triangle | 78.78ms | 774.58ms | 99.78ms | 937.14ms (fail) | 105.69ms | 99.76ms | 85.45ms (fail) |
| unstable | 140.71ms | 348.26ms | 75.01ms | 645.03ms (fail) | 76.09ms | 170.52ms | 341.52ms (fail) |
| molBench | 485.80ms | 583.61ms | 488.56ms | 11.48ms | 487.08ms | 501.81ms | 1.34ms |
| create_signals | 26.01ms | 78.43ms | 5.42ms | 25.26ms | 27.64ms | 55.43ms | 70.54ms |
| comp_0to1 | 13.18ms | 21.17ms | 18.37ms | 14.33ms | 13.25ms | 28.93ms | 56.98ms |
| comp_1to1 | 25.72ms | 31.48ms | 15.27ms | 23.01ms | 30.75ms | 51.47ms | 64.75ms |
| comp_2to1 | 19.64ms | 9.39ms | 21.48ms | 26.00ms | 9.44ms | 8.87ms | 45.59ms |
| comp_4to1 | 4.26ms | 21.83ms | 13.64ms | 4.46ms | 2.06ms | 11.22ms | 18.28ms |
| comp_1000to1 | 6μs | 17μs | 4μs | 4μs | 5μs | 15μs | 45μs |
| comp_1to2 | 11.72ms | 43.56ms | 18.94ms | 12.86ms | 16.73ms | 43.21ms | 58.56ms |
| comp_1to4 | 16.07ms | 25.27ms | 34.10ms | 28.20ms | 8.95ms | 21.96ms | 50.30ms |
| comp_1to8 | 5.48ms | 27.47ms | 6.77ms | 5.78ms | 8.56ms | 21.33ms | 46.98ms |
| comp_1to1000 | 4.14ms | 16.39ms | 7.70ms | 4.95ms | 4.86ms | 14.38ms | 41.90ms |
| update_1to1 | 5.47ms | 27.59ms | 8.32ms | 89.68ms | 9.93ms | 17.14ms | 6.00ms |
| update_2to1 | 2.81ms | 10.98ms | 4.41ms | 45.23ms | 4.49ms | 8.55ms | 3.08ms |
| update_4to1 | 1.48ms | 7.62ms | 2.10ms | 21.79ms | 2.44ms | 4.28ms | 1.59ms |
| update_1000to1 | 24μs | 86μs | 20μs | 191μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.77ms | 13.20ms | 4.10ms | 45.49ms | 4.39ms | 8.77ms | 3.06ms |
| update_1to4 | 1.48ms | 7.34ms | 2.12ms | 22.90ms | 2.49ms | 4.28ms | 1.57ms |
| update_1to1000 | 51μs | 196μs | 849μs | 111μs | 44μs | 145μs | 418μs |
| cellx1000 | 9.19ms | 95.88ms | 11.10ms | N/A | 10.69ms | 12.25ms | 7.67ms |
| cellx2500 | 30.65ms | 330.12ms | 38.39ms | N/A | 44.69ms | 51.56ms | 38.07ms |
| cellx5000 | 99.63ms | 627.05ms | 124.10ms | N/A | 119.06ms | 146.66ms | 105.90ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.27ms | 2.01s | 449.42ms | 2.16s | 522.29ms | 337.55ms | 241.63ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 193.13ms | 1.57s | 280.42ms | 1.46s (partial) | 287.15ms | 220.94ms | 198.04ms |
| 1000x12 - 4 sources - dynamic (large) | 362.52ms | 1.92s | 3.73s | 2.54s (partial) | 3.76s | 454.17ms | 364.99ms |
| 1000x5 - 25 sources (wide dense) | 497.75ms | 3.52s | 2.74s | 4.46s | 3.63s | 807.22ms | 511.31ms |
| 5x500 - 3 sources (deep) | 200.89ms | 1.19s | 229.58ms | 1.74s | 226.54ms | 229.45ms | 211.95ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 292.62ms | 1.76s | 459.96ms | 1.81s (partial) | 511.42ms | 347.86ms | 265.39ms |

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
