# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.50s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.15s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.46s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.44s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.72s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.55s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.87s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 141.69ms | 2.32s | 199.04ms | 1.43s | 221.87ms | 239.31ms | 157.34ms (fail) |
| broadPropagation | 266.68ms | 4.39s | 455.46ms | 82.43ms (fail) | 470.35ms | 446.30ms | 6.76ms (fail) |
| deepPropagation | 81.21ms | 1.55s | 176.38ms | 1.97s (fail) | 180.39ms | 130.56ms | 145.98ms (fail) |
| diamond | 181.77ms | 2.47s | 281.00ms | 2.65s (fail) | 299.60ms | 320.53ms | 204.07ms (fail) |
| mux | 329.13ms | 1.85s | 393.75ms | 583.67ms (fail) | 418.27ms | 408.41ms | 196.27ms (fail) |
| repeatedObservers | 49.11ms | 228.72ms | 40.05ms | 403.61ms (fail) | 46.24ms | 87.00ms | 52.64ms (fail) |
| triangle | 67.64ms | 778.21ms | 99.48ms | 968.77ms (fail) | 103.93ms | 97.77ms | 80.47ms (fail) |
| unstable | 61.98ms | 345.36ms | 74.78ms | 653.02ms (fail) | 76.05ms | 101.05ms | 341.00ms (fail) |
| molBench | 480.88ms | 587.86ms | 488.61ms | 12.02ms | 486.52ms | 497.48ms | 919μs |
| create_signals | 31.41ms | 83.54ms | 5.22ms | 23.96ms | 25.96ms | 82.00ms | 63.71ms |
| comp_0to1 | 16.80ms | 22.94ms | 17.96ms | 13.86ms | 12.23ms | 27.41ms | 56.11ms |
| comp_1to1 | 12.69ms | 26.93ms | 12.53ms | 20.81ms | 27.11ms | 35.54ms | 57.96ms |
| comp_2to1 | 3.51ms | 28.93ms | 9.37ms | 25.56ms | 14.65ms | 27.65ms | 39.55ms |
| comp_4to1 | 1.60ms | 31.57ms | 7.50ms | 3.59ms | 5.35ms | 16.28ms | 18.67ms |
| comp_1000to1 | 4μs | 34μs | 4μs | 4μs | 5μs | 18μs | 45μs |
| comp_1to2 | 14.57ms | 40.57ms | 16.67ms | 11.66ms | 25.56ms | 22.63ms | 49.37ms |
| comp_1to4 | 18.03ms | 35.05ms | 25.65ms | 24.97ms | 12.48ms | 32.13ms | 47.25ms |
| comp_1to8 | 4.70ms | 25.20ms | 6.97ms | 5.11ms | 6.66ms | 20.02ms | 46.77ms |
| comp_1to1000 | 3.45ms | 16.20ms | 5.67ms | 4.38ms | 4.45ms | 14.35ms | 41.68ms |
| update_1to1 | 5.27ms | 27.16ms | 8.29ms | 84.80ms | 10.24ms | 14.84ms | 6.02ms |
| update_2to1 | 5.85ms | 13.63ms | 4.39ms | 41.56ms | 4.51ms | 7.19ms | 3.08ms |
| update_4to1 | 1.38ms | 7.23ms | 2.07ms | 19.95ms | 2.61ms | 3.60ms | 1.56ms |
| update_1000to1 | 13μs | 69μs | 20μs | 209μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.89ms | 14.43ms | 4.23ms | 42.73ms | 4.51ms | 7.34ms | 3.01ms |
| update_1to4 | 1.33ms | 5.71ms | 2.06ms | 20.72ms | 2.59ms | 3.61ms | 1.54ms |
| update_1to1000 | 46μs | 184μs | 161μs | 129μs | 43μs | 145μs | 414μs |
| cellx1000 | 6.27ms | 88.87ms | 9.78ms | N/A | 9.80ms | 9.37ms | 5.32ms |
| cellx2500 | 18.32ms | 269.78ms | 28.05ms | N/A | 36.23ms | 31.81ms | 28.81ms |
| cellx5000 | 62.69ms | 632.38ms | 89.91ms | N/A | 73.44ms | 104.36ms | 85.94ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.48ms | 2.04s | 506.32ms | 2.26s | 506.79ms | 318.96ms | 265.41ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.93ms | 1.51s | 287.49ms | 1.48s (partial) | 282.48ms | 218.91ms | 200.47ms |
| 1000x12 - 4 sources - dynamic (large) | 291.55ms | 1.94s | 3.75s | 2.57s (partial) | 3.94s | 447.84ms | 359.47ms |
| 1000x5 - 25 sources (wide dense) | 556.58ms | 3.48s | 2.73s | 4.26s | 3.42s | 812.18ms | 513.85ms |
| 5x500 - 3 sources (deep) | 176.23ms | 1.13s | 248.24ms | 1.40s | 223.30ms | 228.51ms | 209.25ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 249.83ms | 1.73s | 468.11ms | 1.81s (partial) | 482.89ms | 333.96ms | 262.94ms |

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
