# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.32s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.40s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.38s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.02s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.15s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.32ms | 2.38s | 200.61ms | 1.35s | 211.63ms | 261.59ms | 153.63ms (fail) |
| broadPropagation | 320.23ms | 4.44s | 460.81ms | 79.03ms (fail) | 456.43ms | 462.25ms | 6.31ms (fail) |
| deepPropagation | 95.93ms | 1.57s | 177.18ms | 1.92s (fail) | 169.05ms | 145.12ms | 142.24ms (fail) |
| diamond | 219.54ms | 2.49s | 283.15ms | 2.52s (fail) | 278.01ms | 318.07ms | 187.81ms (fail) |
| mux | 340.96ms | 1.85s | 403.23ms | 548.65ms (fail) | 445.44ms | 405.52ms | 192.18ms (fail) |
| repeatedObservers | 50.53ms | 235.32ms | 40.50ms | 368.75ms (fail) | 44.53ms | 89.62ms | 52.62ms (fail) |
| triangle | 75.64ms | 776.46ms | 98.77ms | 929.05ms (fail) | 103.10ms | 96.32ms | 78.18ms (fail) |
| unstable | 137.41ms | 355.05ms | 70.33ms | 616.29ms (fail) | 79.20ms | 171.57ms | 337.38ms (fail) |
| molBench | 495.70ms | 588.08ms | 487.17ms | 11.02ms | 486.58ms | 494.94ms | 1.01ms |
| create_signals | 27.11ms | 87.62ms | 4.74ms | 25.45ms | 31.66ms | 79.18ms | 62.07ms |
| comp_0to1 | 10.22ms | 30.37ms | 17.91ms | 14.53ms | 13.94ms | 26.65ms | 55.31ms |
| comp_1to1 | 25.32ms | 32.97ms | 11.46ms | 21.45ms | 18.48ms | 43.20ms | 57.13ms |
| comp_2to1 | 21.03ms | 18.63ms | 23.15ms | 32.77ms | 9.32ms | 23.92ms | 37.99ms |
| comp_4to1 | 3.61ms | 31.37ms | 16.82ms | 7.41ms | 8.83ms | 17.54ms | 16.95ms |
| comp_1000to1 | 6μs | 19μs | 9μs | 4μs | 4μs | 15μs | 42μs |
| comp_1to2 | 17.36ms | 37.14ms | 22.23ms | 11.24ms | 19.38ms | 35.44ms | 46.77ms |
| comp_1to4 | 19.27ms | 25.61ms | 34.84ms | 24.43ms | 11.14ms | 21.99ms | 45.70ms |
| comp_1to8 | 8.45ms | 22.75ms | 7.94ms | 5.18ms | 8.73ms | 19.58ms | 45.48ms |
| comp_1to1000 | 11.51ms | 16.56ms | 6.41ms | 4.94ms | 4.64ms | 14.52ms | 39.73ms |
| update_1to1 | 7.47ms | 26.35ms | 8.72ms | 84.63ms | 9.02ms | 16.87ms | 5.97ms |
| update_2to1 | 2.79ms | 12.75ms | 4.33ms | 41.64ms | 4.50ms | 8.22ms | 3.00ms |
| update_4to1 | 1.41ms | 6.02ms | 2.17ms | 20.12ms | 2.25ms | 4.16ms | 1.52ms |
| update_1000to1 | 22μs | 69μs | 21μs | 174μs | 22μs | 41μs | 15μs |
| update_1to2 | 2.79ms | 13.61ms | 4.64ms | 42.08ms | 4.47ms | 8.44ms | 3.41ms |
| update_1to4 | 2.29ms | 6.06ms | 2.14ms | 20.32ms | 2.24ms | 4.08ms | 1.54ms |
| update_1to1000 | 40μs | 172μs | 868μs | 133μs | 42μs | 145μs | 416μs |
| cellx1000 | 8.79ms | 75.90ms | 9.78ms | N/A | 9.65ms | 12.85ms | 6.86ms |
| cellx2500 | 19.54ms | 275.27ms | 31.15ms | N/A | 31.98ms | 31.02ms | 29.95ms |
| cellx5000 | 50.32ms | 610.22ms | 76.13ms | N/A | 73.27ms | 68.13ms | 68.01ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.79ms | 2.04s | 488.00ms | 2.14s | 508.45ms | 361.68ms | 255.94ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.17ms | 1.56s | 281.63ms | 1.44s (partial) | 283.92ms | 229.41ms | 223.45ms |
| 1000x12 - 4 sources - dynamic (large) | 354.19ms | 1.95s | 3.72s | 2.54s (partial) | 3.91s | 447.50ms | 353.80ms |
| 1000x5 - 25 sources (wide dense) | 495.19ms | 3.58s | 2.72s | 4.11s | 3.42s | 825.20ms | 509.65ms |
| 5x500 - 3 sources (deep) | 198.87ms | 1.16s | 229.65ms | 1.44s | 228.88ms | 229.33ms | 206.15ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 284.19ms | 1.71s | 453.44ms | 1.78s (partial) | 489.61ms | 348.00ms | 267.88ms |

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
