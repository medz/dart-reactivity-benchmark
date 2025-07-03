# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.85s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.51s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.69s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.71s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.55s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 198.21ms | 2.32s | 198.93ms | 1.41s | 209.88ms | 291.17ms | 162.68ms (fail) |
| broadPropagation | 401.75ms | 4.38s | 450.87ms | 82.55ms (fail) | 455.21ms | 530.39ms | 6.24ms (fail) |
| deepPropagation | 106.04ms | 1.54s | 179.71ms | 1.99s (fail) | 174.54ms | 173.61ms | 144.32ms (fail) |
| diamond | 216.75ms | 2.41s | 279.13ms | 2.59s (fail) | 282.53ms | 354.51ms | 184.76ms (fail) |
| mux | 412.06ms | 1.84s | 400.66ms | 562.51ms (fail) | 444.31ms | 446.31ms | 193.03ms (fail) |
| repeatedObservers | 47.77ms | 233.40ms | 39.73ms | 385.00ms (fail) | 44.61ms | 86.75ms | 53.36ms (fail) |
| triangle | 77.50ms | 758.91ms | 98.81ms | 899.06ms (fail) | 101.42ms | 118.66ms | 76.86ms (fail) |
| unstable | 65.47ms | 349.88ms | 70.02ms | 617.49ms (fail) | 79.67ms | 101.33ms | 336.27ms (fail) |
| molBench | 487.00ms | 568.92ms | 485.30ms | 11.22ms | 486.08ms | 501.94ms | 1.09ms |
| create_signals | 26.39ms | 67.59ms | 5.30ms | 24.25ms | 26.30ms | 34.05ms | 63.01ms |
| comp_0to1 | 10.91ms | 26.73ms | 17.52ms | 13.83ms | 12.07ms | 30.38ms | 53.34ms |
| comp_1to1 | 21.75ms | 43.67ms | 14.87ms | 21.48ms | 28.51ms | 28.06ms | 54.99ms |
| comp_2to1 | 15.82ms | 21.96ms | 16.88ms | 24.22ms | 9.00ms | 11.94ms | 36.10ms |
| comp_4to1 | 3.69ms | 23.17ms | 21.27ms | 7.25ms | 1.97ms | 19.06ms | 16.72ms |
| comp_1000to1 | 3μs | 16μs | 4μs | 3μs | 5μs | 16μs | 41μs |
| comp_1to2 | 22.93ms | 34.58ms | 15.31ms | 11.85ms | 13.61ms | 31.50ms | 45.50ms |
| comp_1to4 | 10.47ms | 17.97ms | 23.19ms | 22.95ms | 9.44ms | 25.63ms | 43.80ms |
| comp_1to8 | 4.93ms | 20.45ms | 8.41ms | 4.91ms | 11.13ms | 27.79ms | 43.18ms |
| comp_1to1000 | 3.33ms | 16.19ms | 6.38ms | 4.14ms | 5.54ms | 16.04ms | 38.85ms |
| update_1to1 | 5.19ms | 27.82ms | 8.57ms | 85.22ms | 10.13ms | 15.60ms | 5.77ms |
| update_2to1 | 2.51ms | 13.09ms | 4.24ms | 42.76ms | 4.49ms | 7.70ms | 2.90ms |
| update_4to1 | 1.27ms | 6.88ms | 2.17ms | 20.58ms | 2.30ms | 3.89ms | 1.50ms |
| update_1000to1 | 22μs | 71μs | 21μs | 170μs | 22μs | 38μs | 16μs |
| update_1to2 | 2.46ms | 13.32ms | 4.61ms | 42.25ms | 4.48ms | 7.67ms | 2.96ms |
| update_1to4 | 1.22ms | 6.59ms | 2.15ms | 21.99ms | 2.25ms | 3.85ms | 1.53ms |
| update_1to1000 | 53μs | 178μs | 956μs | 112μs | 42μs | 170μs | 380μs |
| cellx1000 | 12.72ms | 69.87ms | 10.08ms | N/A | 9.91ms | 12.57ms | 5.77ms |
| cellx2500 | 30.49ms | 257.16ms | 28.93ms | N/A | 34.85ms | 42.21ms | 29.38ms |
| cellx5000 | 71.30ms | 532.28ms | 79.28ms | N/A | 77.44ms | 119.49ms | 75.61ms |
| 10x5 - 2 sources - read 20.0% (simple) | 214.34ms | 2.00s | 435.78ms | 2.20s | 529.48ms | 361.41ms | 245.37ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 166.13ms | 1.54s | 269.98ms | 1.48s (partial) | 279.30ms | 254.80ms | 200.43ms |
| 1000x12 - 4 sources - dynamic (large) | 317.64ms | 2.02s | 3.72s | 2.50s (partial) | 4.04s | 468.72ms | 352.96ms |
| 1000x5 - 25 sources (wide dense) | 448.92ms | 3.67s | 2.71s | 4.31s | 3.59s | 726.33ms | 502.07ms |
| 5x500 - 3 sources (deep) | 188.39ms | 1.14s | 226.46ms | 1.40s | 227.84ms | 271.42ms | 207.99ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 251.24ms | 1.73s | 456.38ms | 1.76s (partial) | 488.25ms | 383.69ms | 257.29ms |

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
