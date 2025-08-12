# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.18s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.67s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.89s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.78s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.47ms | 2.29s | 201.64ms | 1.35s | 208.07ms | 262.23ms | 156.77ms (fail) |
| broadPropagation | 318.34ms | 4.55s | 474.12ms | 82.22ms (fail) | 458.09ms | 455.64ms | 6.73ms (fail) |
| deepPropagation | 95.88ms | 1.56s | 177.66ms | 2.05s (fail) | 165.65ms | 141.89ms | 141.18ms (fail) |
| diamond | 220.34ms | 2.42s | 279.71ms | 2.76s (fail) | 282.10ms | 311.32ms | 195.37ms (fail) |
| mux | 338.37ms | 1.86s | 401.14ms | 572.31ms (fail) | 450.62ms | 394.99ms | 191.33ms (fail) |
| repeatedObservers | 50.35ms | 228.73ms | 40.84ms | 380.79ms (fail) | 44.58ms | 89.24ms | 52.25ms (fail) |
| triangle | 74.20ms | 764.55ms | 98.47ms | 923.56ms (fail) | 103.08ms | 96.20ms | 81.66ms (fail) |
| unstable | 136.96ms | 346.20ms | 70.80ms | 615.21ms (fail) | 79.95ms | 170.22ms | 337.25ms (fail) |
| molBench | 494.03ms | 570.66ms | 485.46ms | 12.21ms | 488.47ms | 493.66ms | 945μs |
| create_signals | 27.60ms | 70.47ms | 5.17ms | 24.73ms | 25.35ms | 52.07ms | 64.20ms |
| comp_0to1 | 10.02ms | 28.76ms | 17.97ms | 14.06ms | 12.05ms | 25.91ms | 54.32ms |
| comp_1to1 | 24.82ms | 43.41ms | 12.90ms | 23.57ms | 28.31ms | 44.38ms | 55.95ms |
| comp_2to1 | 16.09ms | 23.32ms | 12.19ms | 26.99ms | 9.45ms | 21.49ms | 38.06ms |
| comp_4to1 | 4.22ms | 19.42ms | 14.25ms | 4.49ms | 2.11ms | 13.04ms | 16.93ms |
| comp_1000to1 | 3μs | 20μs | 4μs | 4μs | 4μs | 14μs | 42μs |
| comp_1to2 | 17.79ms | 36.43ms | 24.73ms | 12.75ms | 24.15ms | 36.42ms | 45.39ms |
| comp_1to4 | 20.76ms | 18.91ms | 21.92ms | 25.59ms | 9.39ms | 22.51ms | 44.63ms |
| comp_1to8 | 5.96ms | 22.66ms | 8.79ms | 5.15ms | 9.32ms | 23.91ms | 43.07ms |
| comp_1to1000 | 3.16ms | 16.14ms | 7.98ms | 4.67ms | 6.67ms | 15.84ms | 39.00ms |
| update_1to1 | 5.50ms | 27.28ms | 8.72ms | 89.22ms | 8.92ms | 16.34ms | 5.66ms |
| update_2to1 | 2.79ms | 12.82ms | 4.32ms | 43.83ms | 4.51ms | 8.15ms | 2.89ms |
| update_4to1 | 1.51ms | 7.17ms | 2.19ms | 21.92ms | 2.22ms | 4.14ms | 1.46ms |
| update_1000to1 | 13μs | 71μs | 21μs | 180μs | 22μs | 43μs | 14μs |
| update_1to2 | 5.00ms | 12.32ms | 4.83ms | 44.30ms | 4.55ms | 8.30ms | 2.93ms |
| update_1to4 | 2.63ms | 6.67ms | 2.19ms | 21.98ms | 2.21ms | 4.07ms | 1.47ms |
| update_1to1000 | 51μs | 174μs | 2.60ms | 122μs | 43μs | 144μs | 382μs |
| cellx1000 | 9.46ms | 91.88ms | 10.50ms | N/A | 10.02ms | 12.56ms | 5.52ms |
| cellx2500 | 32.97ms | 285.38ms | 29.33ms | N/A | 35.54ms | 49.02ms | 31.25ms |
| cellx5000 | 63.78ms | 651.75ms | 89.92ms | N/A | 77.00ms | 117.73ms | 58.73ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.35ms | 2.02s | 438.76ms | 2.18s | 514.50ms | 324.49ms | 234.97ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 187.71ms | 1.49s | 275.28ms | 1.46s (partial) | 281.89ms | 222.73ms | 196.97ms |
| 1000x12 - 4 sources - dynamic (large) | 350.75ms | 1.93s | 3.60s | 2.53s (partial) | 4.01s | 446.38ms | 352.28ms |
| 1000x5 - 25 sources (wide dense) | 496.77ms | 3.60s | 2.68s | 4.28s | 3.59s | 824.00ms | 495.72ms |
| 5x500 - 3 sources (deep) | 198.09ms | 1.16s | 229.38ms | 1.45s | 226.83ms | 233.22ms | 206.25ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 283.91ms | 1.72s | 440.97ms | 1.78s (partial) | 481.30ms | 339.61ms | 258.46ms |

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
