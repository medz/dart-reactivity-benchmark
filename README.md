# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.13s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.30s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.32s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.39s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.96ms | 2.35s | 200.05ms | 1.43s | 211.74ms | 252.36ms | 154.25ms (fail) |
| broadPropagation | 317.83ms | 4.38s | 465.39ms | 82.92ms (fail) | 465.70ms | 451.25ms | 6.59ms (fail) |
| deepPropagation | 99.04ms | 1.53s | 184.66ms | 1.94s (fail) | 176.22ms | 140.34ms | 143.66ms (fail) |
| diamond | 229.01ms | 2.40s | 279.28ms | 2.65s (fail) | 289.77ms | 311.44ms | 186.99ms (fail) |
| mux | 341.71ms | 1.82s | 387.73ms | 567.08ms (fail) | 408.87ms | 403.44ms | 198.11ms (fail) |
| repeatedObservers | 50.58ms | 227.51ms | 39.98ms | 386.77ms (fail) | 46.70ms | 90.45ms | 52.37ms (fail) |
| triangle | 77.72ms | 769.30ms | 98.95ms | 952.68ms (fail) | 101.19ms | 98.30ms | 81.79ms (fail) |
| unstable | 139.27ms | 341.37ms | 74.29ms | 618.25ms (fail) | 76.29ms | 166.07ms | 342.00ms (fail) |
| molBench | 487.09ms | 581.84ms | 481.93ms | 11.49ms | 485.42ms | 500.61ms | 1.35ms |
| create_signals | 26.96ms | 82.84ms | 4.73ms | 23.26ms | 25.31ms | 52.28ms | 61.52ms |
| comp_0to1 | 10.76ms | 15.99ms | 17.78ms | 13.44ms | 11.65ms | 24.24ms | 55.46ms |
| comp_1to1 | 16.83ms | 60.42ms | 12.17ms | 22.71ms | 27.85ms | 43.89ms | 56.94ms |
| comp_2to1 | 11.72ms | 23.48ms | 12.79ms | 28.15ms | 9.17ms | 20.68ms | 37.52ms |
| comp_4to1 | 4.86ms | 16.59ms | 17.30ms | 7.47ms | 2.14ms | 13.03ms | 16.62ms |
| comp_1000to1 | 4μs | 14μs | 4μs | 3μs | 5μs | 14μs | 44μs |
| comp_1to2 | 14.44ms | 34.60ms | 20.59ms | 10.50ms | 23.51ms | 34.83ms | 47.48ms |
| comp_1to4 | 14.56ms | 17.58ms | 29.14ms | 25.77ms | 9.48ms | 22.43ms | 45.93ms |
| comp_1to8 | 5.13ms | 20.21ms | 5.60ms | 5.19ms | 8.75ms | 22.08ms | 45.29ms |
| comp_1to1000 | 3.75ms | 14.98ms | 7.25ms | 4.57ms | 6.98ms | 15.57ms | 41.19ms |
| update_1to1 | 5.49ms | 27.75ms | 14.57ms | 86.12ms | 10.21ms | 16.73ms | 6.04ms |
| update_2to1 | 2.80ms | 13.91ms | 7.32ms | 41.25ms | 4.59ms | 8.45ms | 3.07ms |
| update_4to1 | 1.44ms | 7.13ms | 3.63ms | 19.86ms | 2.57ms | 4.22ms | 1.50ms |
| update_1000to1 | 25μs | 68μs | 37μs | 188μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.77ms | 13.72ms | 7.35ms | 41.32ms | 4.56ms | 8.47ms | 3.02ms |
| update_1to4 | 1.51ms | 6.69ms | 3.66ms | 20.10ms | 2.50ms | 4.23ms | 1.50ms |
| update_1to1000 | 50μs | 170μs | 886μs | 119μs | 44μs | 145μs | 410μs |
| cellx1000 | 7.41ms | 74.56ms | 9.60ms | N/A | 9.71ms | 10.02ms | 6.09ms |
| cellx2500 | 19.40ms | 247.14ms | 25.94ms | N/A | 31.82ms | 29.45ms | 24.30ms |
| cellx5000 | 49.67ms | 584.80ms | 69.83ms | N/A | 64.68ms | 63.42ms | 78.41ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.93ms | 1.99s | 446.19ms | 2.16s | 514.21ms | 325.78ms | 261.67ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.77ms | 1.50s | 289.39ms | 1.46s (partial) | 287.19ms | 219.12ms | 202.88ms |
| 1000x12 - 4 sources - dynamic (large) | 344.27ms | 1.88s | 3.69s | 2.48s (partial) | 3.73s | 435.05ms | 344.89ms |
| 1000x5 - 25 sources (wide dense) | 492.02ms | 3.47s | 2.70s | 4.21s | 3.57s | 783.75ms | 512.36ms |
| 5x500 - 3 sources (deep) | 202.65ms | 1.12s | 231.41ms | 1.37s | 219.86ms | 227.65ms | 206.50ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 292.13ms | 1.70s | 460.19ms | 1.73s (partial) | 483.99ms | 333.33ms | 265.13ms |

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
