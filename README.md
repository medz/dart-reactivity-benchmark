# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.20s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.35s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.48s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.59s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 159.82ms | 2.34s | 201.81ms | 1.42s | 216.69ms | 264.66ms | 149.29ms (fail) |
| broadPropagation | 316.49ms | 4.33s | 462.93ms | 83.48ms (fail) | 472.82ms | 457.38ms | 6.43ms (fail) |
| deepPropagation | 100.79ms | 1.56s | 180.14ms | 1.97s (fail) | 174.10ms | 143.07ms | 142.31ms (fail) |
| diamond | 229.39ms | 2.40s | 281.43ms | 2.67s (fail) | 286.91ms | 323.46ms | 182.23ms (fail) |
| mux | 338.17ms | 1.83s | 389.13ms | 579.49ms (fail) | 406.55ms | 407.15ms | 191.82ms (fail) |
| repeatedObservers | 50.68ms | 234.36ms | 40.28ms | 428.89ms (fail) | 46.56ms | 92.23ms | 52.77ms (fail) |
| triangle | 81.66ms | 760.56ms | 99.01ms | 937.12ms (fail) | 99.95ms | 99.07ms | 76.75ms (fail) |
| unstable | 140.72ms | 345.85ms | 74.58ms | 629.04ms (fail) | 76.92ms | 167.09ms | 374.46ms (fail) |
| molBench | 487.90ms | 582.76ms | 488.82ms | 11.71ms | 485.70ms | 499.83ms | 983μs |
| create_signals | 26.27ms | 79.38ms | 5.14ms | 24.46ms | 25.52ms | 61.07ms | 61.87ms |
| comp_0to1 | 9.80ms | 21.55ms | 17.72ms | 14.02ms | 11.51ms | 24.15ms | 56.19ms |
| comp_1to1 | 23.94ms | 36.91ms | 14.76ms | 28.62ms | 26.76ms | 38.48ms | 57.41ms |
| comp_2to1 | 18.15ms | 34.32ms | 17.73ms | 32.58ms | 9.40ms | 32.19ms | 38.15ms |
| comp_4to1 | 3.58ms | 12.90ms | 13.98ms | 7.27ms | 2.07ms | 17.00ms | 16.86ms |
| comp_1000to1 | 3μs | 20μs | 4μs | 3μs | 5μs | 18μs | 43μs |
| comp_1to2 | 13.96ms | 35.45ms | 18.32ms | 11.24ms | 22.63ms | 28.23ms | 50.77ms |
| comp_1to4 | 20.44ms | 19.40ms | 36.26ms | 19.64ms | 9.49ms | 25.47ms | 46.38ms |
| comp_1to8 | 5.93ms | 23.04ms | 8.03ms | 5.27ms | 13.16ms | 25.13ms | 45.48ms |
| comp_1to1000 | 3.10ms | 14.87ms | 6.32ms | 4.44ms | 6.21ms | 15.71ms | 41.44ms |
| update_1to1 | 5.52ms | 27.60ms | 8.35ms | 82.13ms | 10.04ms | 16.79ms | 6.00ms |
| update_2to1 | 2.88ms | 14.34ms | 4.38ms | 42.12ms | 4.61ms | 8.58ms | 3.11ms |
| update_4to1 | 1.44ms | 7.20ms | 2.13ms | 21.23ms | 2.55ms | 4.36ms | 1.57ms |
| update_1000to1 | 14μs | 69μs | 27μs | 258μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.75ms | 14.26ms | 4.17ms | 41.68ms | 4.50ms | 8.50ms | 3.06ms |
| update_1to4 | 1.42ms | 6.77ms | 2.12ms | 20.63ms | 2.56ms | 4.19ms | 1.56ms |
| update_1to1000 | 41μs | 169μs | 173μs | 141μs | 43μs | 143μs | 412μs |
| cellx1000 | 7.16ms | 74.45ms | 9.62ms | N/A | 9.90ms | 9.74ms | 5.25ms |
| cellx2500 | 27.67ms | 247.12ms | 26.26ms | N/A | 32.95ms | 27.82ms | 27.93ms |
| cellx5000 | 43.93ms | 554.70ms | 72.88ms | N/A | 69.86ms | 77.11ms | 67.47ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.42ms | 2.03s | 447.43ms | 2.18s | 503.05ms | 333.89ms | 245.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.96ms | 1.54s | 270.43ms | 1.49s (partial) | 279.55ms | 219.10ms | 198.49ms |
| 1000x12 - 4 sources - dynamic (large) | 345.41ms | 1.87s | 3.72s | 2.56s (partial) | 3.76s | 432.97ms | 349.27ms |
| 1000x5 - 25 sources (wide dense) | 491.34ms | 3.53s | 2.74s | 4.06s | 3.44s | 782.87ms | 516.32ms |
| 5x500 - 3 sources (deep) | 204.44ms | 1.13s | 232.11ms | 1.36s | 223.96ms | 224.10ms | 207.27ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.91ms | 1.77s | 461.36ms | 1.86s (partial) | 476.56ms | 332.90ms | 261.19ms |

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
