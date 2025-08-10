# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.84s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.30s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.87s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.83s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.57s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 160.20ms | 2.37s | 200.88ms | 1.40s | 209.37ms | 267.26ms | 169.10ms (fail) |
| broadPropagation | 317.53ms | 4.43s | 445.10ms | 82.75ms (fail) | 449.12ms | 464.21ms | 6.36ms (fail) |
| deepPropagation | 95.90ms | 1.58s | 175.29ms | 1.99s (fail) | 176.73ms | 147.16ms | 141.47ms (fail) |
| diamond | 219.01ms | 2.50s | 276.48ms | 2.59s (fail) | 281.76ms | 327.02ms | 188.82ms (fail) |
| mux | 343.20ms | 1.85s | 401.88ms | 568.40ms (fail) | 449.20ms | 393.91ms | 194.42ms (fail) |
| repeatedObservers | 50.74ms | 243.06ms | 40.24ms | 385.44ms (fail) | 44.58ms | 89.18ms | 52.24ms (fail) |
| triangle | 76.52ms | 778.73ms | 98.56ms | 969.64ms (fail) | 102.20ms | 99.09ms | 84.39ms (fail) |
| unstable | 136.84ms | 353.55ms | 70.41ms | 614.50ms (fail) | 79.06ms | 170.37ms | 338.60ms (fail) |
| molBench | 495.12ms | 572.62ms | 488.47ms | 10.85ms | 486.63ms | 494.87ms | 930μs |
| create_signals | 27.13ms | 51.49ms | 5.16ms | 23.61ms | 25.75ms | 77.89ms | 58.41ms |
| comp_0to1 | 9.45ms | 16.54ms | 22.35ms | 13.45ms | 10.69ms | 35.40ms | 52.62ms |
| comp_1to1 | 24.07ms | 41.59ms | 14.35ms | 27.80ms | 18.66ms | 42.19ms | 54.40ms |
| comp_2to1 | 14.65ms | 35.74ms | 17.25ms | 27.40ms | 16.59ms | 20.73ms | 36.69ms |
| comp_4to1 | 1.74ms | 23.67ms | 13.67ms | 11.94ms | 2.21ms | 14.12ms | 16.46ms |
| comp_1000to1 | 4μs | 17μs | 4μs | 6μs | 5μs | 14μs | 42μs |
| comp_1to2 | 9.72ms | 41.73ms | 17.79ms | 13.10ms | 24.18ms | 34.90ms | 44.43ms |
| comp_1to4 | 16.16ms | 21.31ms | 32.94ms | 22.61ms | 14.63ms | 22.25ms | 43.25ms |
| comp_1to8 | 16.04ms | 23.48ms | 6.85ms | 8.75ms | 6.53ms | 23.57ms | 42.50ms |
| comp_1to1000 | 11.95ms | 16.11ms | 4.72ms | 6.28ms | 4.50ms | 15.52ms | 38.28ms |
| update_1to1 | 5.66ms | 25.21ms | 8.69ms | 88.01ms | 8.94ms | 16.34ms | 5.94ms |
| update_2to1 | 2.85ms | 11.61ms | 4.21ms | 43.53ms | 4.47ms | 8.13ms | 2.98ms |
| update_4to1 | 1.46ms | 6.12ms | 2.13ms | 20.81ms | 2.20ms | 4.09ms | 1.54ms |
| update_1000to1 | 25μs | 67μs | 21μs | 199μs | 22μs | 40μs | 15μs |
| update_1to2 | 2.81ms | 11.26ms | 4.74ms | 42.69ms | 4.50ms | 8.31ms | 3.00ms |
| update_1to4 | 1.49ms | 5.56ms | 2.16ms | 21.46ms | 2.21ms | 4.07ms | 1.54ms |
| update_1to1000 | 51μs | 181μs | 155μs | 160μs | 43μs | 144μs | 370μs |
| cellx1000 | 8.10ms | 71.83ms | 9.70ms | N/A | 9.63ms | 10.96ms | 5.12ms |
| cellx2500 | 19.05ms | 250.38ms | 25.95ms | N/A | 30.07ms | 33.67ms | 22.77ms |
| cellx5000 | 43.66ms | 593.12ms | 64.17ms | N/A | 58.42ms | 89.49ms | 52.07ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.96ms | 2.05s | 438.98ms | 2.25s | 511.95ms | 322.25ms | 249.17ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 187.27ms | 1.54s | 270.23ms | 1.50s (partial) | 279.31ms | 223.24ms | 198.37ms |
| 1000x12 - 4 sources - dynamic (large) | 337.37ms | 1.93s | 3.73s | 2.53s (partial) | 3.54s | 505.66ms | 351.20ms |
| 1000x5 - 25 sources (wide dense) | 492.06ms | 3.51s | 2.72s | 4.18s | 3.31s | 818.71ms | 493.83ms |
| 5x500 - 3 sources (deep) | 196.48ms | 1.15s | 232.98ms | 1.40s | 225.15ms | 230.27ms | 205.29ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 285.23ms | 1.72s | 452.40ms | 1.74s (partial) | 478.13ms | 339.47ms | 260.37ms |

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
