# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.15s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.53s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.91s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.05s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.22ms | 2.35s | 200.97ms | 1.39s | 210.93ms | 258.19ms | 147.82ms (fail) |
| broadPropagation | 319.10ms | 4.41s | 461.47ms | 77.89ms (fail) | 461.23ms | 450.25ms | 6.55ms (fail) |
| deepPropagation | 101.47ms | 1.55s | 181.46ms | 1.90s (fail) | 178.96ms | 141.85ms | 147.67ms (fail) |
| diamond | 229.59ms | 2.44s | 280.95ms | 2.52s (fail) | 288.37ms | 323.28ms | 186.20ms (fail) |
| mux | 337.39ms | 1.83s | 392.78ms | 560.09ms (fail) | 407.33ms | 404.25ms | 195.47ms (fail) |
| repeatedObservers | 50.45ms | 234.33ms | 40.29ms | 382.71ms (fail) | 46.15ms | 90.95ms | 52.70ms (fail) |
| triangle | 78.93ms | 782.47ms | 99.46ms | 866.00ms (fail) | 101.37ms | 95.31ms | 78.11ms (fail) |
| unstable | 142.47ms | 349.60ms | 74.36ms | 686.51ms (fail) | 76.51ms | 166.92ms | 346.87ms (fail) |
| molBench | 488.42ms | 583.21ms | 485.83ms | 11.12ms | 486.59ms | 501.48ms | 988μs |
| create_signals | 19.11ms | 70.46ms | 5.50ms | 24.10ms | 25.48ms | 69.83ms | 73.64ms |
| comp_0to1 | 14.32ms | 25.57ms | 19.47ms | 15.17ms | 10.95ms | 35.56ms | 64.78ms |
| comp_1to1 | 24.01ms | 48.01ms | 15.22ms | 25.95ms | 28.54ms | 42.69ms | 59.50ms |
| comp_2to1 | 15.31ms | 35.27ms | 21.99ms | 26.15ms | 9.05ms | 22.00ms | 38.99ms |
| comp_4to1 | 7.22ms | 25.91ms | 14.34ms | 5.67ms | 2.15ms | 4.54ms | 17.09ms |
| comp_1000to1 | 6μs | 22μs | 5μs | 5μs | 5μs | 15μs | 47μs |
| comp_1to2 | 13.52ms | 39.41ms | 18.75ms | 17.06ms | 13.30ms | 37.39ms | 50.59ms |
| comp_1to4 | 21.68ms | 22.73ms | 32.08ms | 27.32ms | 10.17ms | 21.08ms | 49.00ms |
| comp_1to8 | 8.26ms | 24.18ms | 9.21ms | 7.75ms | 6.44ms | 23.51ms | 48.53ms |
| comp_1to1000 | 4.61ms | 15.28ms | 7.31ms | 4.51ms | 4.35ms | 15.60ms | 44.25ms |
| update_1to1 | 5.52ms | 27.60ms | 8.37ms | 81.08ms | 10.34ms | 16.81ms | 6.01ms |
| update_2to1 | 2.82ms | 13.90ms | 4.35ms | 44.51ms | 4.54ms | 8.43ms | 3.07ms |
| update_4to1 | 1.50ms | 7.35ms | 2.06ms | 20.03ms | 2.54ms | 4.19ms | 1.53ms |
| update_1000to1 | 25μs | 69μs | 20μs | 193μs | 26μs | 42μs | 15μs |
| update_1to2 | 2.98ms | 13.75ms | 4.08ms | 43.17ms | 4.54ms | 8.51ms | 3.02ms |
| update_1to4 | 1.47ms | 6.69ms | 2.10ms | 19.90ms | 2.52ms | 4.20ms | 1.53ms |
| update_1to1000 | 52μs | 173μs | 932μs | 121μs | 44μs | 145μs | 438μs |
| cellx1000 | 7.20ms | 85.07ms | 10.44ms | N/A | 9.63ms | 9.79ms | 5.09ms |
| cellx2500 | 20.34ms | 299.92ms | 34.23ms | N/A | 31.30ms | 27.26ms | 22.41ms |
| cellx5000 | 49.29ms | 652.31ms | 99.94ms | N/A | 59.94ms | 63.05ms | 56.57ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.92ms | 2.01s | 515.50ms | 2.14s | 507.10ms | 324.68ms | 234.60ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.50ms | 1.54s | 298.82ms | 1.48s (partial) | 281.52ms | 218.47ms | 196.55ms |
| 1000x12 - 4 sources - dynamic (large) | 351.25ms | 2.03s | 3.73s | 2.51s (partial) | 3.71s | 425.72ms | 343.92ms |
| 1000x5 - 25 sources (wide dense) | 490.56ms | 3.50s | 2.74s | 4.08s | 3.51s | 775.24ms | 498.70ms |
| 5x500 - 3 sources (deep) | 199.30ms | 1.14s | 249.48ms | 1.34s | 221.53ms | 222.87ms | 205.11ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 283.25ms | 1.74s | 471.08ms | 1.73s (partial) | 473.52ms | 333.46ms | 256.07ms |

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
