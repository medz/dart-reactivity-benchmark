# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.50s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.06s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.55s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.24s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.34s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 141.69ms | 2.35s | 200.73ms | 1.41s | 213.20ms | 236.29ms | 152.05ms (fail) |
| broadPropagation | 265.13ms | 4.36s | 467.88ms | 80.43ms (fail) | 463.63ms | 448.14ms | 6.71ms (fail) |
| deepPropagation | 81.36ms | 1.55s | 181.72ms | 1.88s (fail) | 180.55ms | 129.58ms | 143.90ms (fail) |
| diamond | 179.94ms | 2.39s | 290.38ms | 2.51s (fail) | 290.77ms | 306.61ms | 194.22ms (fail) |
| mux | 332.16ms | 1.83s | 391.01ms | 567.68ms (fail) | 413.78ms | 402.06ms | 191.43ms (fail) |
| repeatedObservers | 49.05ms | 231.45ms | 42.20ms | 388.15ms (fail) | 46.45ms | 87.03ms | 52.77ms (fail) |
| triangle | 68.31ms | 768.91ms | 103.95ms | 931.12ms (fail) | 103.15ms | 96.52ms | 79.09ms (fail) |
| unstable | 61.32ms | 346.00ms | 74.13ms | 622.62ms (fail) | 76.53ms | 100.56ms | 344.94ms (fail) |
| molBench | 486.64ms | 583.37ms | 484.75ms | 11.33ms | 485.67ms | 496.83ms | 1.01ms |
| create_signals | 32.27ms | 50.54ms | 5.18ms | 23.95ms | 25.38ms | 56.30ms | 74.38ms |
| comp_0to1 | 17.10ms | 19.45ms | 17.84ms | 13.71ms | 11.40ms | 22.09ms | 59.03ms |
| comp_1to1 | 12.74ms | 32.56ms | 11.24ms | 22.18ms | 29.69ms | 49.15ms | 60.56ms |
| comp_2to1 | 3.55ms | 11.94ms | 11.72ms | 25.54ms | 8.50ms | 21.14ms | 40.98ms |
| comp_4to1 | 1.75ms | 19.18ms | 11.52ms | 7.78ms | 5.51ms | 8.73ms | 17.57ms |
| comp_1000to1 | 3μs | 15μs | 5μs | 4μs | 5μs | 14μs | 47μs |
| comp_1to2 | 12.92ms | 37.96ms | 23.23ms | 10.26ms | 17.28ms | 36.78ms | 51.09ms |
| comp_1to4 | 20.02ms | 19.07ms | 28.32ms | 25.18ms | 18.43ms | 14.20ms | 49.25ms |
| comp_1to8 | 5.67ms | 22.15ms | 8.97ms | 5.23ms | 6.92ms | 19.49ms | 50.46ms |
| comp_1to1000 | 4.50ms | 15.05ms | 6.89ms | 4.58ms | 4.44ms | 13.54ms | 44.03ms |
| update_1to1 | 5.35ms | 25.48ms | 13.07ms | 83.18ms | 10.16ms | 15.52ms | 6.02ms |
| update_2to1 | 5.77ms | 12.26ms | 7.32ms | 41.89ms | 4.50ms | 7.22ms | 3.07ms |
| update_4to1 | 1.38ms | 6.38ms | 3.65ms | 20.15ms | 2.54ms | 3.60ms | 1.50ms |
| update_1000to1 | 13μs | 68μs | 38μs | 170μs | 25μs | 37μs | 15μs |
| update_1to2 | 6.55ms | 12.30ms | 7.30ms | 42.47ms | 4.50ms | 7.51ms | 3.04ms |
| update_1to4 | 1.38ms | 6.48ms | 2.11ms | 20.03ms | 2.61ms | 3.63ms | 1.52ms |
| update_1to1000 | 46μs | 174μs | 1.66ms | 94μs | 43μs | 139μs | 495μs |
| cellx1000 | 6.68ms | 74.22ms | 9.87ms | N/A | 10.14ms | 10.09ms | 5.56ms |
| cellx2500 | 19.89ms | 260.87ms | 29.95ms | N/A | 37.65ms | 32.99ms | 28.97ms |
| cellx5000 | 61.11ms | 554.89ms | 85.38ms | N/A | 81.81ms | 90.77ms | 67.10ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.75ms | 1.99s | 516.34ms | 2.13s | 512.02ms | 316.21ms | 261.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 162.58ms | 1.52s | 292.77ms | 1.47s (partial) | 281.89ms | 219.20ms | 204.11ms |
| 1000x12 - 4 sources - dynamic (large) | 276.21ms | 1.91s | 3.76s | 2.48s (partial) | 3.77s | 442.18ms | 346.23ms |
| 1000x5 - 25 sources (wide dense) | 552.14ms | 3.55s | 2.73s | 4.28s | 3.41s | 805.71ms | 507.33ms |
| 5x500 - 3 sources (deep) | 179.45ms | 1.14s | 248.14ms | 1.45s | 221.33ms | 227.88ms | 207.81ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 249.04ms | 1.70s | 477.51ms | 1.78s (partial) | 485.09ms | 336.01ms | 262.61ms |

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
