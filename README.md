# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.18s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.52s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.39s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.41s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.29s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.76ms | 2.32s | 200.13ms | 1.42s | 213.37ms | 251.88ms | 152.49ms (fail) |
| broadPropagation | 319.88ms | 4.39s | 458.36ms | 82.70ms (fail) | 475.22ms | 452.18ms | 6.29ms (fail) |
| deepPropagation | 98.34ms | 1.54s | 176.25ms | 1.91s (fail) | 184.81ms | 138.76ms | 145.56ms (fail) |
| diamond | 228.89ms | 2.40s | 282.37ms | 2.60s (fail) | 283.49ms | 310.96ms | 185.38ms (fail) |
| mux | 338.60ms | 1.82s | 388.77ms | 575.99ms (fail) | 408.77ms | 397.89ms | 192.34ms (fail) |
| repeatedObservers | 50.34ms | 234.11ms | 39.93ms | 386.77ms (fail) | 46.82ms | 91.36ms | 52.83ms (fail) |
| triangle | 77.42ms | 771.08ms | 98.27ms | 846.78ms (fail) | 101.42ms | 96.85ms | 77.51ms (fail) |
| unstable | 138.54ms | 348.53ms | 73.58ms | 625.47ms (fail) | 75.56ms | 166.03ms | 344.84ms (fail) |
| molBench | 487.15ms | 583.98ms | 488.37ms | 11.54ms | 485.19ms | 503.04ms | 893μs |
| create_signals | 25.48ms | 50.20ms | 5.18ms | 22.93ms | 25.36ms | 78.11ms | 61.44ms |
| comp_0to1 | 11.18ms | 15.62ms | 18.11ms | 14.93ms | 11.47ms | 25.88ms | 55.56ms |
| comp_1to1 | 17.84ms | 42.74ms | 14.58ms | 26.51ms | 21.35ms | 43.63ms | 57.13ms |
| comp_2to1 | 20.71ms | 22.88ms | 17.17ms | 30.79ms | 12.88ms | 9.04ms | 38.33ms |
| comp_4to1 | 4.08ms | 31.58ms | 14.18ms | 13.13ms | 9.99ms | 14.84ms | 16.85ms |
| comp_1000to1 | 4μs | 25μs | 4μs | 6μs | 5μs | 15μs | 56μs |
| comp_1to2 | 12.09ms | 37.94ms | 18.35ms | 11.53ms | 22.10ms | 40.44ms | 49.70ms |
| comp_1to4 | 17.11ms | 17.55ms | 39.61ms | 20.87ms | 12.60ms | 21.13ms | 46.70ms |
| comp_1to8 | 6.98ms | 19.96ms | 8.49ms | 6.98ms | 6.87ms | 18.94ms | 46.43ms |
| comp_1to1000 | 4.33ms | 15.21ms | 6.34ms | 5.02ms | 4.35ms | 14.47ms | 41.67ms |
| update_1to1 | 5.49ms | 27.28ms | 8.33ms | 86.44ms | 10.25ms | 16.74ms | 6.03ms |
| update_2to1 | 2.86ms | 12.97ms | 4.43ms | 41.73ms | 4.48ms | 8.39ms | 3.09ms |
| update_4to1 | 1.44ms | 6.82ms | 2.09ms | 20.50ms | 2.54ms | 4.19ms | 1.50ms |
| update_1000to1 | 24μs | 66μs | 20μs | 173μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.76ms | 11.87ms | 4.34ms | 41.91ms | 4.50ms | 8.55ms | 3.02ms |
| update_1to4 | 1.46ms | 6.85ms | 2.10ms | 20.69ms | 2.54ms | 4.20ms | 1.50ms |
| update_1to1000 | 50μs | 169μs | 176μs | 116μs | 42μs | 144μs | 412μs |
| cellx1000 | 7.11ms | 73.28ms | 10.32ms | N/A | 9.71ms | 10.06ms | 5.22ms |
| cellx2500 | 19.59ms | 257.71ms | 30.64ms | N/A | 31.64ms | 29.13ms | 24.29ms |
| cellx5000 | 46.62ms | 560.69ms | 99.95ms | N/A | 65.72ms | 71.46ms | 84.86ms |
| 10x5 - 2 sources - read 20.0% (simple) | 251.48ms | 2.02s | 517.27ms | 2.20s | 506.21ms | 327.15ms | 237.20ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.83ms | 1.53s | 293.16ms | 1.49s (partial) | 281.36ms | 219.95ms | 195.85ms |
| 1000x12 - 4 sources - dynamic (large) | 346.18ms | 1.92s | 3.77s | 2.53s (partial) | 3.78s | 435.38ms | 349.99ms |
| 1000x5 - 25 sources (wide dense) | 494.88ms | 3.49s | 2.71s | 4.10s | 3.58s | 800.80ms | 513.61ms |
| 5x500 - 3 sources (deep) | 198.28ms | 1.14s | 244.21ms | 1.37s | 226.25ms | 228.66ms | 204.58ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 291.74ms | 1.70s | 474.44ms | 1.77s (partial) | 480.81ms | 338.57ms | 257.85ms |

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
