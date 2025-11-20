# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 2.94s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.15s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.75s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 8.53s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.16s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 25.97s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.53s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 133.30ms | 2.24s | 183.25ms | 1.37s | 195.25ms | 232.53ms | 156.65ms |
| broadPropagation | 225.20ms | 4.09s | 382.95ms | 67.95ms (fail) | 396.68ms | 420.66ms | 355.25ms |
| deepPropagation | 86.08ms | 1.45s | 173.09ms | 2.34s (fail) | 170.67ms | 131.87ms | 162.97ms |
| diamond | 148.00ms | 2.24s | 252.03ms | 3.20s (fail) | 257.54ms | 306.98ms | 207.78ms |
| mux | 291.22ms | 1.72s | 332.65ms | 531.80ms (fail) | 334.24ms | 372.61ms | 319.39ms |
| repeatedObservers | 22.90ms | 219.34ms | 33.96ms | 385.34ms (fail) | 39.38ms | 83.53ms | 50.90ms |
| triangle | 61.90ms | 728.86ms | 95.36ms | 948.05ms (fail) | 92.74ms | 100.14ms | 84.19ms |
| unstable | 42.97ms | 315.02ms | 56.47ms | 596.40ms (fail) | 64.83ms | 103.12ms | 324.96ms |
| molBench | 358.06ms | 476.39ms | 363.76ms | 11.53ms | 389.89ms | 369.41ms | 387.37ms |
| create_signals | 9.76ms | 72.52ms | 7.02ms | 25.99ms | 23.93ms | 60.72ms | 67.96ms |
| comp_0to1 | 13.56ms | 23.00ms | 19.63ms | 15.32ms | 11.85ms | 22.29ms | 57.50ms |
| comp_1to1 | 20.46ms | 24.38ms | 18.04ms | 30.57ms | 18.83ms | 47.80ms | 55.28ms |
| comp_2to1 | 9.78ms | 26.32ms | 21.11ms | 26.87ms | 8.46ms | 43.41ms | 43.69ms |
| comp_4to1 | 2.23ms | 23.18ms | 9.23ms | 4.57ms | 3.94ms | 25.55ms | 17.39ms |
| comp_1000to1 | 5μs | 16μs | 6μs | 6μs | 9μs | 20μs | 39μs |
| comp_1to2 | 16.93ms | 39.89ms | 17.63ms | 14.74ms | 27.97ms | 24.30ms | 49.47ms |
| comp_1to4 | 17.85ms | 30.10ms | 39.30ms | 23.18ms | 15.78ms | 38.61ms | 48.24ms |
| comp_1to8 | 7.02ms | 24.86ms | 8.69ms | 7.19ms | 8.54ms | 32.64ms | 45.81ms |
| comp_1to1000 | 9.92ms | 15.43ms | 6.10ms | 6.63ms | 5.58ms | 15.13ms | 38.49ms |
| update_1to1 | 3.37ms | 19.83ms | 8.02ms | 82.39ms | 8.77ms | 13.88ms | 4.78ms |
| update_2to1 | 1.63ms | 9.89ms | 3.73ms | 42.39ms | 4.29ms | 6.86ms | 2.42ms |
| update_4to1 | 774μs | 5.09ms | 2.14ms | 19.92ms | 2.17ms | 3.67ms | 1.24ms |
| update_1000to1 | 8μs | 48μs | 22μs | 190μs | 21μs | 35μs | 13μs |
| update_1to2 | 1.62ms | 9.78ms | 4.09ms | 41.95ms | 4.19ms | 6.88ms | 2.48ms |
| update_1to4 | 980μs | 5.09ms | 2.05ms | 20.04ms | 2.36ms | 3.48ms | 1.25ms |
| update_1to1000 | 61μs | 169μs | 198μs | 109μs | 57μs | 279μs | 392μs |
| cellx1000 | 8.94ms | 80.37ms | 10.70ms | N/A | 11.24ms | 15.40ms | 13.92ms |
| cellx2500 | 27.12ms | 254.45ms | 31.57ms | N/A | 34.76ms | 43.77ms | 41.03ms |
| cellx5000 | 70.64ms | 518.06ms | 76.58ms | N/A | 79.32ms | 92.73ms | 117.96ms |
| 10x5 - 2 sources - read 20.0% (simple) | 176.09ms | 1.99s | 385.23ms | 2.17s | 416.11ms | 317.85ms | 225.77ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 153.17ms | 1.47s | 235.00ms | 1.41s (partial) | 238.05ms | 236.15ms | 172.94ms |
| 1000x12 - 4 sources - dynamic (large) | 253.19ms | 1.70s | 2.95s | 2.76s (partial) | 3.11s | 383.14ms | 287.60ms |
| 1000x5 - 25 sources (wide dense) | 387.26ms | 3.37s | 2.21s | 4.17s | 2.57s | 630.08ms | 380.43ms |
| 5x500 - 3 sources (deep) | 174.18ms | 1.16s | 219.76ms | 1.35s | 216.35ms | 269.03ms | 205.98ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 202.69ms | 1.62s | 376.65ms | 1.84s (partial) | 394.33ms | 291.13ms | 214.20ms |

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
