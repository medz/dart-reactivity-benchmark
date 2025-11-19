# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.45s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.68s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.98s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.01s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.52s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.39s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 192.21ms | 2.38s | 204.89ms | 1.35s | 213.95ms | 261.96ms | 167.29ms |
| broadPropagation | 254.88ms | 4.47s | 453.64ms | 80.79ms (fail) | 456.38ms | 446.19ms | 403.61ms |
| deepPropagation | 87.58ms | 1.52s | 176.67ms | 1.89s (fail) | 169.34ms | 134.06ms | 157.27ms |
| diamond | 185.91ms | 2.39s | 282.60ms | 2.60s (fail) | 286.55ms | 313.46ms | 221.19ms |
| mux | 327.74ms | 1.85s | 373.19ms | 570.41ms (fail) | 390.00ms | 388.83ms | 361.67ms |
| repeatedObservers | 30.36ms | 225.59ms | 40.84ms | 393.67ms (fail) | 46.02ms | 88.06ms | 59.68ms |
| triangle | 83.31ms | 740.15ms | 101.19ms | 918.13ms (fail) | 104.22ms | 97.51ms | 84.94ms |
| unstable | 54.50ms | 343.09ms | 69.82ms | 638.75ms (fail) | 78.00ms | 102.11ms | 344.85ms |
| molBench | 484.99ms | 588.90ms | 480.36ms | 10.80ms | 495.71ms | 497.07ms | 493.30ms |
| create_signals | 8.50ms | 51.15ms | 5.39ms | 25.25ms | 27.66ms | 52.92ms | 61.50ms |
| comp_0to1 | 9.54ms | 18.82ms | 17.91ms | 15.80ms | 12.20ms | 23.72ms | 53.94ms |
| comp_1to1 | 24.13ms | 30.58ms | 14.76ms | 22.88ms | 29.12ms | 54.03ms | 55.28ms |
| comp_2to1 | 2.43ms | 17.12ms | 18.95ms | 33.58ms | 12.53ms | 23.27ms | 36.25ms |
| comp_4to1 | 2.41ms | 30.22ms | 9.48ms | 9.55ms | 4.59ms | 8.57ms | 16.76ms |
| comp_1000to1 | 3μs | 20μs | 7μs | 4μs | 6μs | 16μs | 38μs |
| comp_1to2 | 25.55ms | 34.39ms | 17.13ms | 12.51ms | 13.55ms | 41.17ms | 45.34ms |
| comp_1to4 | 16.85ms | 24.56ms | 26.65ms | 21.89ms | 16.37ms | 22.01ms | 44.81ms |
| comp_1to8 | 4.08ms | 23.28ms | 7.29ms | 8.61ms | 6.84ms | 21.90ms | 43.10ms |
| comp_1to1000 | 3.42ms | 14.71ms | 4.57ms | 6.56ms | 4.40ms | 14.73ms | 38.47ms |
| update_1to1 | 5.24ms | 27.14ms | 8.99ms | 80.32ms | 9.33ms | 14.63ms | 6.10ms |
| update_2to1 | 4.48ms | 11.22ms | 4.36ms | 41.04ms | 4.70ms | 7.09ms | 3.08ms |
| update_4to1 | 1.84ms | 7.35ms | 2.23ms | 19.57ms | 2.35ms | 3.68ms | 1.59ms |
| update_1000to1 | 10μs | 67μs | 22μs | 175μs | 24μs | 37μs | 15μs |
| update_1to2 | 4.63ms | 13.74ms | 4.43ms | 41.09ms | 4.75ms | 7.37ms | 3.10ms |
| update_1to4 | 2.25ms | 5.28ms | 2.27ms | 19.68ms | 2.54ms | 3.65ms | 1.57ms |
| update_1to1000 | 48μs | 161μs | 153μs | 93μs | 43μs | 156μs | 408μs |
| cellx1000 | 5.76ms | 71.11ms | 11.27ms | N/A | 10.35ms | 15.33ms | 10.61ms |
| cellx2500 | 16.86ms | 261.76ms | 32.41ms | N/A | 40.39ms | 49.18ms | 38.62ms |
| cellx5000 | 41.39ms | 573.82ms | 94.58ms | N/A | 88.93ms | 112.48ms | 111.42ms |
| 10x5 - 2 sources - read 20.0% (simple) | 183.54ms | 1.98s | 428.04ms | 2.16s | 510.79ms | 320.73ms | 248.57ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.20ms | 1.50s | 267.89ms | 1.44s (partial) | 278.46ms | 225.96ms | 203.33ms |
| 1000x12 - 4 sources - dynamic (large) | 278.49ms | 2.04s | 3.65s | 2.53s (partial) | 3.63s | 466.95ms | 376.23ms |
| 1000x5 - 25 sources (wide dense) | 542.30ms | 3.48s | 2.50s | 4.16s | 3.35s | 830.29ms | 502.17ms |
| 5x500 - 3 sources (deep) | 163.87ms | 1.12s | 228.12ms | 1.49s | 222.94ms | 230.67ms | 222.17ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 247.01ms | 1.68s | 445.94ms | 1.80s (partial) | 489.80ms | 338.00ms | 263.10ms |

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
