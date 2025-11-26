# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.27s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.58s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.10s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.81s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.70s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.67s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 131.08ms | 2.45s | 208.45ms | 1.48s | 217.51ms | 256.22ms | 177.22ms |
| broadPropagation | 241.77ms | 4.46s | 448.40ms | 91.43ms (fail) | 453.20ms | 439.91ms | 398.44ms |
| deepPropagation | 83.19ms | 1.54s | 175.41ms | 2.11s (fail) | 172.25ms | 131.80ms | 157.76ms |
| diamond | 163.59ms | 2.48s | 286.80ms | 2.94s (fail) | 285.03ms | 313.37ms | 213.38ms |
| mux | 297.24ms | 1.88s | 376.15ms | 562.65ms (fail) | 385.35ms | 373.76ms | 367.06ms |
| repeatedObservers | 27.18ms | 235.92ms | 40.67ms | 432.19ms (fail) | 46.23ms | 90.60ms | 58.94ms |
| triangle | 70.55ms | 771.17ms | 102.54ms | 1.02s (fail) | 103.94ms | 97.13ms | 88.80ms |
| unstable | 47.84ms | 351.69ms | 69.44ms | 653.17ms (fail) | 78.04ms | 105.82ms | 343.75ms |
| molBench | 485.16ms | 593.92ms | 480.19ms | 12.09ms | 495.08ms | 497.00ms | 493.79ms |
| create_signals | 8.80ms | 80.13ms | 5.35ms | 24.54ms | 25.27ms | 73.86ms | 67.61ms |
| comp_0to1 | 9.39ms | 40.51ms | 18.30ms | 13.83ms | 11.13ms | 25.05ms | 54.98ms |
| comp_1to1 | 19.03ms | 17.23ms | 13.38ms | 26.04ms | 17.74ms | 34.10ms | 52.77ms |
| comp_2to1 | 8.23ms | 22.27ms | 9.65ms | 23.90ms | 17.98ms | 40.45ms | 34.76ms |
| comp_4to1 | 5.03ms | 17.65ms | 11.90ms | 6.85ms | 2.12ms | 21.63ms | 15.56ms |
| comp_1000to1 | 3μs | 15μs | 5μs | 4μs | 4μs | 25μs | 37μs |
| comp_1to2 | 22.82ms | 33.34ms | 27.33ms | 10.59ms | 17.43ms | 31.65ms | 43.51ms |
| comp_1to4 | 15.87ms | 25.05ms | 27.06ms | 23.29ms | 10.09ms | 30.01ms | 44.17ms |
| comp_1to8 | 4.06ms | 24.15ms | 5.79ms | 5.13ms | 6.37ms | 21.95ms | 41.81ms |
| comp_1to1000 | 3.37ms | 15.78ms | 5.94ms | 4.21ms | 4.20ms | 14.54ms | 37.62ms |
| update_1to1 | 5.88ms | 24.97ms | 8.74ms | 86.00ms | 9.51ms | 14.35ms | 6.10ms |
| update_2to1 | 2.95ms | 13.47ms | 4.35ms | 42.88ms | 4.80ms | 6.92ms | 3.05ms |
| update_4to1 | 2.19ms | 6.83ms | 2.29ms | 21.06ms | 2.42ms | 3.56ms | 1.55ms |
| update_1000to1 | 21μs | 68μs | 22μs | 200μs | 24μs | 35μs | 15μs |
| update_1to2 | 3.58ms | 10.55ms | 4.33ms | 44.80ms | 4.69ms | 7.21ms | 3.07ms |
| update_1to4 | 1.47ms | 6.91ms | 2.25ms | 20.98ms | 2.55ms | 3.48ms | 1.53ms |
| update_1to1000 | 48μs | 163μs | 65μs | 97μs | 44μs | 146μs | 368μs |
| cellx1000 | 5.68ms | 68.98ms | 10.45ms | N/A | 9.55ms | 9.02ms | 9.74ms |
| cellx2500 | 15.89ms | 245.63ms | 29.01ms | N/A | 31.50ms | 25.44ms | 24.71ms |
| cellx5000 | 35.08ms | 541.31ms | 71.22ms | N/A | 59.63ms | 61.25ms | 83.61ms |
| 10x5 - 2 sources - read 20.0% (simple) | 179.70ms | 2.03s | 429.37ms | 2.35s | 516.70ms | 322.88ms | 239.58ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.49ms | 1.49s | 270.87ms | 1.56s (partial) | 278.83ms | 223.05ms | 199.04ms |
| 1000x12 - 4 sources - dynamic (large) | 281.40ms | 1.92s | 3.68s | 2.57s (partial) | 3.57s | 449.18ms | 353.97ms |
| 1000x5 - 25 sources (wide dense) | 527.64ms | 3.50s | 2.52s | 4.30s | 3.27s | 803.25ms | 492.78ms |
| 5x500 - 3 sources (deep) | 157.87ms | 1.14s | 226.80ms | 1.43s | 229.25ms | 231.52ms | 207.81ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 245.99ms | 1.66s | 456.33ms | 1.80s (partial) | 477.79ms | 337.87ms | 263.70ms |

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
