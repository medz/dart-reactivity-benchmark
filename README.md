# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.44s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.03s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.30s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.81s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 26.98s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.29s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.08ms | 2.33s | 202.65ms | 1.47s | 211.93ms | 247.15ms | 149.55ms (fail) |
| broadPropagation | 265.78ms | 4.25s | 460.35ms | 82.94ms (fail) | 454.31ms | 442.33ms | 6.73ms (fail) |
| deepPropagation | 81.17ms | 1.55s | 179.09ms | 1.93s (fail) | 181.44ms | 131.53ms | 147.77ms (fail) |
| diamond | 181.90ms | 2.42s | 278.89ms | 2.67s (fail) | 279.41ms | 314.20ms | 189.20ms (fail) |
| mux | 327.08ms | 1.82s | 402.50ms | 563.28ms (fail) | 406.43ms | 395.20ms | 195.63ms (fail) |
| repeatedObservers | 49.20ms | 232.48ms | 40.26ms | 387.74ms (fail) | 46.04ms | 86.72ms | 53.47ms (fail) |
| triangle | 70.25ms | 775.45ms | 98.38ms | 872.28ms (fail) | 100.98ms | 95.06ms | 84.57ms (fail) |
| unstable | 61.84ms | 347.17ms | 74.86ms | 634.88ms (fail) | 77.34ms | 100.81ms | 341.69ms (fail) |
| molBench | 484.57ms | 583.29ms | 485.67ms | 10.99ms | 485.39ms | 493.59ms | 964μs |
| create_signals | 24.50ms | 65.33ms | 5.04ms | 23.11ms | 25.49ms | 58.45ms | 60.03ms |
| comp_0to1 | 6.86ms | 15.59ms | 17.70ms | 13.59ms | 11.27ms | 51.50ms | 54.61ms |
| comp_1to1 | 12.58ms | 43.33ms | 12.52ms | 23.01ms | 27.35ms | 44.39ms | 57.14ms |
| comp_2to1 | 8.45ms | 22.20ms | 9.14ms | 24.45ms | 20.24ms | 10.48ms | 37.41ms |
| comp_4to1 | 7.40ms | 14.12ms | 13.45ms | 7.12ms | 6.34ms | 13.73ms | 16.45ms |
| comp_1000to1 | 6μs | 32μs | 4μs | 3μs | 6μs | 14μs | 45μs |
| comp_1to2 | 14.96ms | 36.95ms | 25.91ms | 10.63ms | 13.76ms | 31.33ms | 47.04ms |
| comp_1to4 | 17.29ms | 22.48ms | 26.53ms | 23.54ms | 6.94ms | 21.04ms | 45.58ms |
| comp_1to8 | 5.90ms | 23.82ms | 6.43ms | 5.43ms | 6.77ms | 21.05ms | 45.41ms |
| comp_1to1000 | 3.31ms | 15.37ms | 6.54ms | 4.37ms | 4.31ms | 14.62ms | 40.99ms |
| update_1to1 | 5.25ms | 26.47ms | 9.34ms | 81.59ms | 10.14ms | 14.73ms | 6.01ms |
| update_2to1 | 5.84ms | 11.30ms | 5.32ms | 41.80ms | 4.54ms | 7.19ms | 3.10ms |
| update_4to1 | 1.39ms | 7.37ms | 2.34ms | 20.63ms | 2.45ms | 3.60ms | 1.55ms |
| update_1000to1 | 13μs | 68μs | 33μs | 180μs | 23μs | 36μs | 15μs |
| update_1to2 | 2.66ms | 14.32ms | 4.78ms | 41.30ms | 4.51ms | 7.45ms | 3.05ms |
| update_1to4 | 1.57ms | 6.83ms | 2.38ms | 20.37ms | 2.48ms | 3.59ms | 1.56ms |
| update_1to1000 | 47μs | 172μs | 69μs | 153μs | 43μs | 144μs | 409μs |
| cellx1000 | 6.49ms | 70.80ms | 9.57ms | N/A | 10.74ms | 9.23ms | 7.13ms |
| cellx2500 | 17.45ms | 235.95ms | 25.07ms | N/A | 31.38ms | 25.27ms | 23.37ms |
| cellx5000 | 49.48ms | 530.84ms | 63.65ms | N/A | 59.28ms | 55.18ms | 63.29ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.77ms | 2.00s | 443.32ms | 2.14s | 507.21ms | 315.18ms | 245.50ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.51ms | 1.48s | 275.85ms | 1.45s (partial) | 280.77ms | 221.14ms | 199.47ms |
| 1000x12 - 4 sources - dynamic (large) | 270.30ms | 1.78s | 3.68s | 2.53s (partial) | 3.54s | 433.74ms | 342.71ms |
| 1000x5 - 25 sources (wide dense) | 536.27ms | 3.45s | 2.74s | 4.15s | 3.29s | 795.57ms | 491.22ms |
| 5x500 - 3 sources (deep) | 175.19ms | 1.11s | 230.81ms | 1.35s | 222.31ms | 230.05ms | 203.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.16ms | 1.70s | 457.46ms | 1.71s (partial) | 480.02ms | 335.28ms | 260.32ms |

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
