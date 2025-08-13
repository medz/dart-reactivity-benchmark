# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.84s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.40s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.46s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.66s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.16s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 160.23ms | 2.32s | 198.27ms | 1.35s | 207.63ms | 263.61ms | 149.03ms (fail) |
| broadPropagation | 321.15ms | 4.37s | 454.03ms | 82.08ms (fail) | 456.79ms | 458.21ms | 6.20ms (fail) |
| deepPropagation | 96.23ms | 1.57s | 177.78ms | 1.93s (fail) | 165.74ms | 146.54ms | 141.50ms (fail) |
| diamond | 224.78ms | 2.41s | 280.05ms | 2.59s (fail) | 279.45ms | 315.13ms | 182.42ms (fail) |
| mux | 340.89ms | 1.83s | 402.60ms | 562.79ms (fail) | 415.01ms | 405.25ms | 194.14ms (fail) |
| repeatedObservers | 50.43ms | 228.13ms | 40.12ms | 377.49ms (fail) | 44.99ms | 89.60ms | 53.07ms (fail) |
| triangle | 75.81ms | 760.07ms | 99.02ms | 876.37ms (fail) | 103.96ms | 97.74ms | 75.98ms (fail) |
| unstable | 136.32ms | 350.26ms | 69.77ms | 608.62ms (fail) | 79.48ms | 174.55ms | 339.06ms (fail) |
| molBench | 493.50ms | 437.92ms | 489.38ms | 11.00ms | 486.39ms | 493.28ms | 906μs |
| create_signals | 25.85ms | 86.69ms | 5.31ms | 25.30ms | 27.77ms | 75.22ms | 59.83ms |
| comp_0to1 | 9.67ms | 39.34ms | 21.98ms | 14.45ms | 12.44ms | 31.31ms | 53.52ms |
| comp_1to1 | 19.35ms | 18.54ms | 12.19ms | 23.14ms | 30.21ms | 49.71ms | 55.60ms |
| comp_2to1 | 15.51ms | 27.92ms | 17.34ms | 25.67ms | 8.85ms | 22.40ms | 37.34ms |
| comp_4to1 | 3.89ms | 19.73ms | 10.86ms | 3.25ms | 2.73ms | 16.49ms | 16.78ms |
| comp_1000to1 | 4μs | 36μs | 5μs | 5μs | 7μs | 14μs | 41μs |
| comp_1to2 | 13.05ms | 40.74ms | 27.07ms | 16.31ms | 22.24ms | 36.53ms | 45.00ms |
| comp_1to4 | 14.67ms | 28.29ms | 27.29ms | 31.20ms | 6.91ms | 15.85ms | 43.47ms |
| comp_1to8 | 5.64ms | 22.24ms | 5.70ms | 5.34ms | 7.31ms | 21.09ms | 42.55ms |
| comp_1to1000 | 3.09ms | 16.22ms | 5.71ms | 4.26ms | 4.28ms | 14.78ms | 37.93ms |
| update_1to1 | 5.54ms | 23.71ms | 8.57ms | 79.99ms | 8.96ms | 16.30ms | 5.69ms |
| update_2to1 | 2.79ms | 12.44ms | 4.28ms | 40.20ms | 4.45ms | 8.14ms | 2.90ms |
| update_4to1 | 1.43ms | 6.34ms | 2.19ms | 19.69ms | 2.23ms | 4.13ms | 1.47ms |
| update_1000to1 | 25μs | 70μs | 24μs | 225μs | 22μs | 40μs | 14μs |
| update_1to2 | 2.79ms | 11.34ms | 4.62ms | 40.28ms | 4.52ms | 8.31ms | 2.87ms |
| update_1to4 | 1.51ms | 6.30ms | 2.20ms | 20.00ms | 2.21ms | 4.09ms | 1.48ms |
| update_1to1000 | 51μs | 173μs | 885μs | 143μs | 44μs | 161μs | 378μs |
| cellx1000 | 7.10ms | 80.50ms | 10.21ms | N/A | 11.71ms | 13.73ms | 5.89ms |
| cellx2500 | 26.17ms | 282.58ms | 30.59ms | N/A | 37.75ms | 47.82ms | 32.09ms |
| cellx5000 | 41.54ms | 595.79ms | 92.14ms | N/A | 89.38ms | 158.75ms | 82.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.87ms | 2.01s | 438.68ms | 2.14s | 557.56ms | 325.37ms | 235.27ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 187.87ms | 1.56s | 270.02ms | 1.46s (partial) | 280.20ms | 225.60ms | 200.12ms |
| 1000x12 - 4 sources - dynamic (large) | 340.34ms | 2.04s | 3.66s | 2.45s (partial) | 3.95s | 458.56ms | 353.02ms |
| 1000x5 - 25 sources (wide dense) | 495.09ms | 3.60s | 2.73s | 4.16s | 3.43s | 820.83ms | 503.06ms |
| 5x500 - 3 sources (deep) | 199.18ms | 1.14s | 230.45ms | 1.48s | 226.00ms | 231.82ms | 207.93ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 280.86ms | 1.72s | 460.33ms | 1.73s (partial) | 486.24ms | 351.02ms | 261.44ms |

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
