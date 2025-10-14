# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.54s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.13s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.24s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.39s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.21s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.73ms | 2.35s | 199.77ms | 1.50s | 214.59ms | 242.66ms | 147.64ms (fail) |
| broadPropagation | 268.89ms | 4.42s | 467.56ms | 86.31ms (fail) | 459.21ms | 440.54ms | 6.93ms (fail) |
| deepPropagation | 80.81ms | 1.53s | 176.47ms | 1.88s (fail) | 176.37ms | 128.38ms | 146.31ms (fail) |
| diamond | 180.59ms | 2.41s | 278.75ms | 2.55s (fail) | 282.29ms | 316.07ms | 199.10ms (fail) |
| mux | 333.92ms | 1.83s | 386.86ms | 555.56ms (fail) | 412.21ms | 406.30ms | 191.79ms (fail) |
| repeatedObservers | 49.25ms | 227.24ms | 39.85ms | 386.72ms (fail) | 46.26ms | 87.13ms | 52.53ms (fail) |
| triangle | 67.99ms | 756.62ms | 98.75ms | 925.00ms (fail) | 99.86ms | 94.82ms | 78.62ms (fail) |
| unstable | 61.88ms | 338.24ms | 73.86ms | 618.17ms (fail) | 75.90ms | 103.23ms | 339.73ms (fail) |
| molBench | 485.85ms | 586.43ms | 487.41ms | 11.21ms | 486.17ms | 497.36ms | 954μs |
| create_signals | 26.43ms | 64.30ms | 5.32ms | 24.36ms | 26.46ms | 61.84ms | 68.33ms |
| comp_0to1 | 6.75ms | 15.55ms | 17.83ms | 13.81ms | 12.17ms | 45.48ms | 61.16ms |
| comp_1to1 | 13.60ms | 42.79ms | 12.76ms | 21.27ms | 27.82ms | 44.54ms | 65.58ms |
| comp_2to1 | 8.88ms | 34.89ms | 17.35ms | 29.19ms | 9.06ms | 23.55ms | 40.43ms |
| comp_4to1 | 7.90ms | 25.46ms | 8.71ms | 7.57ms | 1.98ms | 12.80ms | 17.23ms |
| comp_1000to1 | 3μs | 16μs | 5μs | 24μs | 5μs | 15μs | 44μs |
| comp_1to2 | 14.23ms | 33.63ms | 15.40ms | 10.05ms | 21.11ms | 39.78ms | 50.10ms |
| comp_1to4 | 26.06ms | 21.60ms | 19.51ms | 26.01ms | 12.90ms | 21.25ms | 47.98ms |
| comp_1to8 | 5.83ms | 23.97ms | 6.82ms | 5.15ms | 7.29ms | 22.19ms | 46.89ms |
| comp_1to1000 | 3.62ms | 15.39ms | 5.14ms | 4.35ms | 4.63ms | 14.75ms | 42.24ms |
| update_1to1 | 5.37ms | 26.98ms | 8.27ms | 84.18ms | 10.28ms | 17.37ms | 6.01ms |
| update_2to1 | 5.76ms | 11.70ms | 4.48ms | 44.16ms | 4.56ms | 8.57ms | 3.08ms |
| update_4to1 | 1.38ms | 7.45ms | 2.12ms | 20.59ms | 2.60ms | 4.27ms | 1.55ms |
| update_1000to1 | 13μs | 69μs | 20μs | 174μs | 38μs | 40μs | 15μs |
| update_1to2 | 2.61ms | 13.74ms | 4.07ms | 41.40ms | 4.53ms | 8.83ms | 3.02ms |
| update_1to4 | 1.75ms | 6.29ms | 2.12ms | 21.31ms | 2.58ms | 4.29ms | 1.53ms |
| update_1to1000 | 46μs | 176μs | 67μs | 134μs | 44μs | 151μs | 420μs |
| cellx1000 | 6.50ms | 77.20ms | 10.16ms | N/A | 11.04ms | 9.65ms | 5.67ms |
| cellx2500 | 25.07ms | 278.34ms | 33.95ms | N/A | 35.89ms | 30.12ms | 30.39ms |
| cellx5000 | 62.46ms | 616.20ms | 93.85ms | N/A | 85.49ms | 89.36ms | 77.95ms |
| 10x5 - 2 sources - read 20.0% (simple) | 199.46ms | 1.99s | 449.16ms | 2.13s | 501.29ms | 312.18ms | 262.58ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 165.53ms | 1.51s | 280.14ms | 1.42s (partial) | 280.01ms | 219.56ms | 203.64ms |
| 1000x12 - 4 sources - dynamic (large) | 284.05ms | 1.86s | 3.71s | 2.47s (partial) | 3.78s | 452.58ms | 358.53ms |
| 1000x5 - 25 sources (wide dense) | 559.95ms | 3.44s | 2.72s | 4.16s | 3.44s | 809.56ms | 509.72ms |
| 5x500 - 3 sources (deep) | 181.67ms | 1.12s | 233.50ms | 1.40s | 224.88ms | 228.75ms | 210.06ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 250.74ms | 1.71s | 465.17ms | 1.76s (partial) | 484.60ms | 334.42ms | 266.80ms |

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
