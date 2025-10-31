# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.51s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.13s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.36s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.20s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.62s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.58s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.68ms | 2.31s | 200.90ms | 1.49s | 216.41ms | 237.30ms | 159.31ms (fail) |
| broadPropagation | 268.12ms | 4.32s | 470.54ms | 86.70ms (fail) | 478.06ms | 442.49ms | 6.47ms (fail) |
| deepPropagation | 80.49ms | 1.56s | 181.06ms | 2.08s (fail) | 174.29ms | 129.53ms | 144.59ms (fail) |
| diamond | 179.99ms | 2.41s | 281.56ms | 2.85s (fail) | 289.92ms | 302.90ms | 209.05ms (fail) |
| mux | 335.22ms | 1.81s | 391.44ms | 576.11ms (fail) | 413.35ms | 392.58ms | 197.73ms (fail) |
| repeatedObservers | 49.15ms | 229.51ms | 40.27ms | 401.69ms (fail) | 46.38ms | 86.55ms | 52.89ms (fail) |
| triangle | 68.68ms | 772.35ms | 100.41ms | 1.01s (fail) | 103.21ms | 100.26ms | 78.56ms (fail) |
| unstable | 61.13ms | 343.52ms | 74.40ms | 652.79ms (fail) | 76.18ms | 101.32ms | 339.16ms (fail) |
| molBench | 485.46ms | 583.76ms | 488.48ms | 11.22ms | 487.11ms | 495.40ms | 1.07ms |
| create_signals | 23.64ms | 51.92ms | 18.04ms | 24.02ms | 26.24ms | 81.71ms | 62.04ms |
| comp_0to1 | 16.54ms | 28.04ms | 19.32ms | 14.66ms | 11.60ms | 41.29ms | 60.82ms |
| comp_1to1 | 12.95ms | 23.34ms | 7.08ms | 20.52ms | 27.75ms | 24.38ms | 63.05ms |
| comp_2to1 | 2.60ms | 11.68ms | 10.05ms | 25.80ms | 14.34ms | 40.30ms | 40.17ms |
| comp_4to1 | 4.90ms | 28.75ms | 8.91ms | 3.85ms | 1.90ms | 29.35ms | 17.76ms |
| comp_1000to1 | 3μs | 15μs | 4μs | 8μs | 4μs | 15μs | 49μs |
| comp_1to2 | 16.97ms | 35.48ms | 22.54ms | 10.44ms | 18.87ms | 24.39ms | 52.30ms |
| comp_1to4 | 16.06ms | 29.88ms | 32.15ms | 25.45ms | 12.17ms | 42.89ms | 50.95ms |
| comp_1to8 | 7.12ms | 19.48ms | 8.55ms | 5.31ms | 6.31ms | 25.07ms | 50.26ms |
| comp_1to1000 | 8.60ms | 15.17ms | 7.58ms | 4.51ms | 4.28ms | 14.67ms | 45.66ms |
| update_1to1 | 7.16ms | 27.79ms | 8.33ms | 80.13ms | 11.41ms | 14.48ms | 6.27ms |
| update_2to1 | 5.79ms | 12.11ms | 4.40ms | 40.58ms | 5.23ms | 7.15ms | 3.23ms |
| update_4to1 | 1.39ms | 7.25ms | 2.06ms | 19.44ms | 2.85ms | 3.61ms | 1.61ms |
| update_1000to1 | 13μs | 68μs | 20μs | 172μs | 29μs | 36μs | 16μs |
| update_1to2 | 2.76ms | 14.54ms | 4.38ms | 41.07ms | 4.94ms | 7.35ms | 3.13ms |
| update_1to4 | 1.40ms | 6.90ms | 2.09ms | 19.88ms | 2.84ms | 3.62ms | 1.61ms |
| update_1to1000 | 46μs | 171μs | 860μs | 91μs | 43μs | 256μs | 428μs |
| cellx1000 | 6.36ms | 79.27ms | 10.06ms | N/A | 9.80ms | 9.23ms | 5.42ms |
| cellx2500 | 17.87ms | 235.82ms | 29.93ms | N/A | 32.35ms | 27.59ms | 31.76ms |
| cellx5000 | 56.60ms | 580.10ms | 76.63ms | N/A | 64.33ms | 86.81ms | 74.23ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.38ms | 2.01s | 447.42ms | 2.36s | 523.96ms | 312.43ms | 249.35ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 171.80ms | 1.51s | 275.72ms | 1.56s (partial) | 292.01ms | 218.64ms | 209.37ms |
| 1000x12 - 4 sources - dynamic (large) | 274.36ms | 1.78s | 3.71s | 2.59s (partial) | 3.75s | 436.36ms | 374.24ms |
| 1000x5 - 25 sources (wide dense) | 564.28ms | 3.49s | 2.72s | 4.26s | 3.47s | 816.01ms | 537.66ms |
| 5x500 - 3 sources (deep) | 180.09ms | 1.17s | 230.47ms | 1.47s | 225.24ms | 231.82ms | 208.06ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 247.34ms | 1.70s | 463.77ms | 1.84s (partial) | 485.44ms | 337.47ms | 279.04ms |

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
