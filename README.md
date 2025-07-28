# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.52s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.38s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.52s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.56s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.69ms | 2.35s | 202.90ms | 1.41s | 207.22ms | 291.69ms | 148.73ms (fail) |
| broadPropagation | 319.00ms | 4.50s | 457.93ms | 81.70ms (fail) | 450.81ms | 521.93ms | 6.18ms (fail) |
| deepPropagation | 96.45ms | 1.59s | 174.93ms | 1.91s (fail) | 168.15ms | 171.66ms | 146.68ms (fail) |
| diamond | 207.92ms | 2.47s | 278.58ms | 2.59s (fail) | 279.49ms | 354.81ms | 187.56ms (fail) |
| mux | 344.59ms | 1.84s | 404.85ms | 554.24ms (fail) | 409.72ms | 447.25ms | 193.36ms (fail) |
| repeatedObservers | 50.46ms | 231.68ms | 40.49ms | 389.86ms (fail) | 44.63ms | 87.42ms | 52.72ms (fail) |
| triangle | 82.34ms | 780.17ms | 98.54ms | 932.63ms (fail) | 101.84ms | 116.52ms | 76.70ms (fail) |
| unstable | 70.69ms | 353.28ms | 69.92ms | 617.41ms (fail) | 79.75ms | 103.43ms | 337.38ms (fail) |
| molBench | 486.10ms | 580.76ms | 489.46ms | 11.39ms | 485.49ms | 501.31ms | 1.13ms |
| create_signals | 27.53ms | 81.50ms | 11.61ms | 24.42ms | 26.96ms | 65.24ms | 65.26ms |
| comp_0to1 | 9.49ms | 27.28ms | 25.76ms | 13.75ms | 11.63ms | 41.27ms | 62.61ms |
| comp_1to1 | 22.44ms | 45.48ms | 11.35ms | 20.39ms | 28.76ms | 34.76ms | 63.04ms |
| comp_2to1 | 15.49ms | 43.02ms | 11.71ms | 24.22ms | 19.94ms | 25.06ms | 43.17ms |
| comp_4to1 | 3.81ms | 31.12ms | 8.74ms | 5.30ms | 6.55ms | 18.05ms | 16.50ms |
| comp_1000to1 | 4μs | 33μs | 4μs | 3μs | 8μs | 30μs | 42μs |
| comp_1to2 | 17.64ms | 34.73ms | 22.92ms | 12.97ms | 14.95ms | 31.86ms | 45.15ms |
| comp_1to4 | 21.34ms | 23.40ms | 26.55ms | 24.46ms | 7.17ms | 31.50ms | 43.74ms |
| comp_1to8 | 4.86ms | 24.66ms | 14.05ms | 4.80ms | 6.54ms | 17.80ms | 42.60ms |
| comp_1to1000 | 3.61ms | 16.39ms | 6.86ms | 4.24ms | 4.11ms | 16.12ms | 38.60ms |
| update_1to1 | 5.76ms | 27.90ms | 8.61ms | 86.79ms | 8.87ms | 15.58ms | 5.64ms |
| update_2to1 | 2.83ms | 13.58ms | 4.21ms | 44.89ms | 4.49ms | 7.73ms | 2.86ms |
| update_4to1 | 1.46ms | 6.98ms | 2.16ms | 21.77ms | 2.23ms | 3.85ms | 1.48ms |
| update_1000to1 | 14μs | 68μs | 21μs | 238μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.88ms | 13.90ms | 4.58ms | 42.88ms | 4.48ms | 7.70ms | 2.88ms |
| update_1to4 | 1.46ms | 6.51ms | 2.16ms | 20.61ms | 2.23ms | 3.84ms | 1.48ms |
| update_1to1000 | 36μs | 171μs | 50μs | 113μs | 42μs | 174μs | 384μs |
| cellx1000 | 7.58ms | 77.85ms | 9.79ms | N/A | 9.66ms | 14.70ms | 6.08ms |
| cellx2500 | 20.37ms | 267.38ms | 27.69ms | N/A | 32.12ms | 40.79ms | 32.75ms |
| cellx5000 | 47.77ms | 559.02ms | 79.75ms | N/A | 65.91ms | 93.37ms | 68.01ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.06ms | 2.08s | 439.84ms | 2.28s | 518.44ms | 367.92ms | 263.37ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 187.14ms | 1.59s | 269.00ms | 1.49s (partial) | 282.53ms | 246.43ms | 198.14ms |
| 1000x12 - 4 sources - dynamic (large) | 339.43ms | 2.20s | 3.68s | 2.50s (partial) | 3.79s | 466.41ms | 349.10ms |
| 1000x5 - 25 sources (wide dense) | 488.69ms | 3.73s | 2.71s | 4.23s | 3.59s | 724.02ms | 500.31ms |
| 5x500 - 3 sources (deep) | 197.36ms | 1.18s | 226.31ms | 1.47s | 225.48ms | 269.42ms | 203.84ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 292.53ms | 1.73s | 459.18ms | 1.74s (partial) | 488.03ms | 382.12ms | 260.08ms |

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
