# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.24s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.78s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.05s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.14s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.26s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.33s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 127.25ms | 2.30s | 199.19ms | 1.41s | 211.30ms | 241.29ms | 183.99ms |
| broadPropagation | 248.74ms | 4.38s | 467.70ms | 85.00ms (fail) | 453.71ms | 440.08ms | 422.42ms |
| deepPropagation | 79.94ms | 1.52s | 182.66ms | 1.92s (fail) | 171.34ms | 131.59ms | 168.12ms |
| diamond | 154.62ms | 2.38s | 279.08ms | 2.61s (fail) | 280.69ms | 319.59ms | 258.38ms |
| mux | 308.65ms | 1.80s | 392.26ms | 576.39ms (fail) | 411.53ms | 392.86ms | 397.18ms |
| repeatedObservers | 26.91ms | 234.36ms | 40.08ms | 392.88ms (fail) | 46.26ms | 87.03ms | 65.02ms |
| triangle | 62.85ms | 765.89ms | 98.87ms | 922.39ms (fail) | 100.91ms | 97.51ms | 93.06ms |
| unstable | 46.00ms | 339.79ms | 73.65ms | 632.07ms (fail) | 74.17ms | 101.69ms | 358.12ms |
| molBench | 488.80ms | 580.88ms | 484.24ms | 11.25ms | 485.27ms | 493.09ms | 495.28ms |
| create_signals | 9.79ms | 60.52ms | 5.04ms | 24.39ms | 24.80ms | 54.27ms | 66.59ms |
| comp_0to1 | 10.44ms | 19.07ms | 17.26ms | 14.63ms | 11.03ms | 21.65ms | 54.03ms |
| comp_1to1 | 18.11ms | 35.32ms | 10.69ms | 23.24ms | 26.50ms | 44.78ms | 55.88ms |
| comp_2to1 | 8.48ms | 21.78ms | 11.88ms | 30.36ms | 20.58ms | 36.01ms | 36.90ms |
| comp_4to1 | 2.09ms | 19.47ms | 12.23ms | 10.02ms | 2.21ms | 28.16ms | 16.48ms |
| comp_1000to1 | 3μs | 29μs | 4μs | 6μs | 9μs | 24μs | 41μs |
| comp_1to2 | 24.08ms | 40.65ms | 29.20ms | 13.51ms | 18.61ms | 34.88ms | 46.87ms |
| comp_1to4 | 16.56ms | 22.32ms | 20.08ms | 19.84ms | 15.81ms | 28.10ms | 45.00ms |
| comp_1to8 | 3.93ms | 23.27ms | 8.57ms | 8.63ms | 6.88ms | 20.20ms | 44.72ms |
| comp_1to1000 | 3.92ms | 15.12ms | 7.78ms | 4.90ms | 4.42ms | 14.41ms | 40.74ms |
| update_1to1 | 9.55ms | 24.30ms | 8.30ms | 84.98ms | 10.27ms | 14.53ms | 6.02ms |
| update_2to1 | 4.82ms | 12.93ms | 4.39ms | 44.58ms | 4.49ms | 7.17ms | 2.98ms |
| update_4to1 | 2.42ms | 6.83ms | 2.11ms | 20.80ms | 2.59ms | 3.59ms | 1.56ms |
| update_1000to1 | 9μs | 87μs | 20μs | 192μs | 25μs | 36μs | 15μs |
| update_1to2 | 4.86ms | 14.94ms | 4.14ms | 43.20ms | 4.51ms | 7.38ms | 3.05ms |
| update_1to4 | 1.64ms | 7.03ms | 2.10ms | 21.64ms | 2.54ms | 3.60ms | 1.57ms |
| update_1to1000 | 43μs | 172μs | 436μs | 155μs | 42μs | 153μs | 406μs |
| cellx1000 | 8.25ms | 66.97ms | 9.47ms | N/A | 9.57ms | 9.05ms | 8.80ms |
| cellx2500 | 15.80ms | 244.44ms | 25.14ms | N/A | 30.91ms | 26.24ms | 27.47ms |
| cellx5000 | 35.49ms | 537.82ms | 64.97ms | N/A | 61.37ms | 59.83ms | 88.19ms |
| 10x5 - 2 sources - read 20.0% (simple) | 179.47ms | 2.00s | 447.66ms | 2.17s | 506.22ms | 317.14ms | 256.12ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 155.90ms | 1.51s | 272.66ms | 1.46s (partial) | 280.08ms | 219.02ms | 206.01ms |
| 1000x12 - 4 sources - dynamic (large) | 264.31ms | 1.88s | 3.69s | 2.52s (partial) | 3.74s | 437.63ms | 358.41ms |
| 1000x5 - 25 sources (wide dense) | 518.34ms | 3.55s | 2.72s | 4.07s | 3.42s | 792.45ms | 502.94ms |
| 5x500 - 3 sources (deep) | 157.75ms | 1.12s | 232.72ms | 1.35s | 224.44ms | 226.06ms | 204.20ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 237.25ms | 1.70s | 458.44ms | 1.83s (partial) | 477.75ms | 334.93ms | 266.14ms |

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
