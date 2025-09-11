# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.97s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.48s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.53s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.85s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.61s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.02s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 166.57ms | 2.36s | 200.25ms | 1.43s | 210.13ms | 261.33ms | 170.12ms (fail) |
| broadPropagation | 319.95ms | 4.36s | 465.42ms | 82.72ms (fail) | 455.80ms | 450.23ms | 6.35ms (fail) |
| deepPropagation | 98.32ms | 1.55s | 177.56ms | 1.95s (fail) | 177.93ms | 143.44ms | 142.99ms (fail) |
| diamond | 224.87ms | 2.43s | 284.97ms | 2.65s (fail) | 279.87ms | 316.61ms | 201.29ms (fail) |
| mux | 344.54ms | 1.83s | 392.65ms | 570.92ms (fail) | 409.95ms | 406.16ms | 195.05ms (fail) |
| repeatedObservers | 50.32ms | 229.81ms | 40.37ms | 391.03ms (fail) | 46.40ms | 91.73ms | 52.62ms (fail) |
| triangle | 78.35ms | 775.50ms | 99.06ms | 890.00ms (fail) | 101.36ms | 97.98ms | 81.45ms (fail) |
| unstable | 140.75ms | 339.51ms | 74.84ms | 658.81ms (fail) | 76.28ms | 170.87ms | 374.63ms (fail) |
| molBench | 488.84ms | 583.05ms | 486.12ms | 11.54ms | 487.48ms | 502.59ms | 946μs |
| create_signals | 28.41ms | 86.11ms | 5.39ms | 25.58ms | 27.14ms | 69.81ms | 62.55ms |
| comp_0to1 | 11.43ms | 20.65ms | 18.69ms | 14.76ms | 12.54ms | 27.25ms | 56.87ms |
| comp_1to1 | 21.87ms | 36.09ms | 13.20ms | 24.62ms | 30.92ms | 55.64ms | 58.58ms |
| comp_2to1 | 16.58ms | 9.21ms | 18.70ms | 26.14ms | 11.92ms | 22.04ms | 38.90ms |
| comp_4to1 | 3.86ms | 25.21ms | 9.07ms | 3.75ms | 2.06ms | 4.39ms | 17.40ms |
| comp_1000to1 | 3μs | 16μs | 6μs | 3μs | 6μs | 15μs | 45μs |
| comp_1to2 | 14.77ms | 37.33ms | 14.54ms | 11.29ms | 24.97ms | 36.05ms | 48.80ms |
| comp_1to4 | 17.63ms | 24.79ms | 25.02ms | 27.37ms | 9.69ms | 21.72ms | 47.06ms |
| comp_1to8 | 9.60ms | 26.97ms | 9.24ms | 6.01ms | 9.24ms | 22.08ms | 45.96ms |
| comp_1to1000 | 6.20ms | 15.55ms | 8.02ms | 4.75ms | 10.30ms | 15.28ms | 41.78ms |
| update_1to1 | 5.59ms | 24.71ms | 8.42ms | 82.86ms | 10.20ms | 16.82ms | 6.05ms |
| update_2to1 | 2.77ms | 11.04ms | 4.37ms | 42.03ms | 4.61ms | 8.44ms | 3.10ms |
| update_4to1 | 1.39ms | 6.96ms | 2.11ms | 20.23ms | 2.60ms | 4.26ms | 1.56ms |
| update_1000to1 | 24μs | 68μs | 20μs | 175μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.92ms | 11.93ms | 4.16ms | 41.86ms | 4.53ms | 8.51ms | 3.05ms |
| update_1to4 | 1.40ms | 6.44ms | 2.17ms | 20.56ms | 2.59ms | 4.21ms | 1.56ms |
| update_1to1000 | 45μs | 175μs | 516μs | 131μs | 44μs | 155μs | 441μs |
| cellx1000 | 7.74ms | 94.43ms | 10.18ms | N/A | 12.41ms | 11.17ms | 6.71ms |
| cellx2500 | 24.84ms | 309.50ms | 32.59ms | N/A | 45.98ms | 36.73ms | 31.83ms |
| cellx5000 | 83.96ms | 684.18ms | 108.35ms | N/A | 104.22ms | 106.23ms | 83.74ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.59ms | 2.01s | 447.41ms | 2.20s | 516.87ms | 329.87ms | 264.50ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.65ms | 1.51s | 284.95ms | 1.54s (partial) | 279.98ms | 220.48ms | 202.20ms |
| 1000x12 - 4 sources - dynamic (large) | 361.93ms | 1.93s | 3.78s | 2.55s (partial) | 3.87s | 445.09ms | 364.50ms |
| 1000x5 - 25 sources (wide dense) | 506.42ms | 3.54s | 2.75s | 4.43s | 3.59s | 806.36ms | 516.92ms |
| 5x500 - 3 sources (deep) | 213.50ms | 1.18s | 234.15ms | 1.50s | 220.46ms | 230.95ms | 211.27ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 290.01ms | 1.80s | 466.69ms | 1.80s (partial) | 475.13ms | 339.85ms | 273.57ms |

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
