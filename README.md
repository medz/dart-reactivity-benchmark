# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.84s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.16s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.25s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.04s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.33ms | 2.38s | 195.56ms | 1.36s | 208.44ms | 256.51ms | 148.75ms (fail) |
| broadPropagation | 319.84ms | 4.52s | 451.01ms | 80.48ms (fail) | 450.81ms | 453.12ms | 5.93ms (fail) |
| deepPropagation | 96.40ms | 1.58s | 176.18ms | 1.92s (fail) | 174.05ms | 140.37ms | 142.29ms (fail) |
| diamond | 216.67ms | 2.48s | 279.68ms | 2.59s (fail) | 277.13ms | 315.53ms | 185.21ms (fail) |
| mux | 339.32ms | 1.87s | 403.82ms | 563.78ms (fail) | 451.42ms | 394.38ms | 196.28ms (fail) |
| repeatedObservers | 50.49ms | 238.04ms | 39.63ms | 387.74ms (fail) | 44.83ms | 89.04ms | 52.42ms (fail) |
| triangle | 74.32ms | 766.96ms | 100.44ms | 896.10ms (fail) | 103.64ms | 93.87ms | 76.13ms (fail) |
| unstable | 137.41ms | 361.00ms | 70.48ms | 616.23ms (fail) | 79.03ms | 169.97ms | 337.91ms (fail) |
| molBench | 493.47ms | 575.36ms | 488.45ms | 11.64ms | 487.38ms | 490.39ms | 1.13ms |
| create_signals | 27.25ms | 72.22ms | 4.56ms | 23.26ms | 26.28ms | 52.50ms | 65.35ms |
| comp_0to1 | 10.22ms | 29.50ms | 17.27ms | 13.44ms | 11.83ms | 25.92ms | 69.20ms |
| comp_1to1 | 20.60ms | 33.67ms | 11.52ms | 23.17ms | 28.06ms | 43.92ms | 61.78ms |
| comp_2to1 | 15.43ms | 36.25ms | 16.13ms | 32.48ms | 9.15ms | 8.81ms | 43.13ms |
| comp_4to1 | 3.97ms | 24.20ms | 27.55ms | 11.22ms | 1.97ms | 17.86ms | 18.72ms |
| comp_1000to1 | 4μs | 16μs | 9μs | 6μs | 9μs | 14μs | 41μs |
| comp_1to2 | 16.18ms | 36.98ms | 23.99ms | 13.48ms | 13.47ms | 34.67ms | 47.85ms |
| comp_1to4 | 12.89ms | 31.68ms | 34.95ms | 24.93ms | 11.34ms | 14.50ms | 47.54ms |
| comp_1to8 | 8.19ms | 21.62ms | 7.82ms | 6.71ms | 6.13ms | 19.35ms | 43.32ms |
| comp_1to1000 | 11.40ms | 15.85ms | 5.52ms | 5.58ms | 4.15ms | 14.11ms | 38.60ms |
| update_1to1 | 6.64ms | 22.29ms | 8.57ms | 83.07ms | 9.04ms | 16.35ms | 5.68ms |
| update_2to1 | 2.79ms | 11.00ms | 4.24ms | 43.39ms | 4.50ms | 8.15ms | 2.85ms |
| update_4to1 | 1.43ms | 5.48ms | 2.15ms | 20.37ms | 2.49ms | 4.12ms | 1.47ms |
| update_1000to1 | 25μs | 54μs | 21μs | 169μs | 22μs | 41μs | 15μs |
| update_1to2 | 3.02ms | 11.33ms | 4.63ms | 41.61ms | 4.49ms | 8.37ms | 2.86ms |
| update_1to4 | 1.57ms | 5.47ms | 2.15ms | 20.51ms | 2.30ms | 4.14ms | 1.51ms |
| update_1to1000 | 56μs | 167μs | 60μs | 98μs | 42μs | 146μs | 375μs |
| cellx1000 | 7.29ms | 104.27ms | 9.92ms | N/A | 9.84ms | 10.68ms | 5.55ms |
| cellx2500 | 20.35ms | 291.28ms | 28.13ms | N/A | 33.57ms | 35.24ms | 24.62ms |
| cellx5000 | 49.54ms | 660.59ms | 85.37ms | N/A | 70.34ms | 103.03ms | 62.02ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.34ms | 2.04s | 440.04ms | 2.21s | 509.31ms | 322.18ms | 248.59ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.06ms | 1.59s | 267.62ms | 1.45s (partial) | 285.61ms | 220.60ms | 197.41ms |
| 1000x12 - 4 sources - dynamic (large) | 343.26ms | 1.97s | 3.68s | 2.46s (partial) | 3.74s | 439.18ms | 340.57ms |
| 1000x5 - 25 sources (wide dense) | 489.85ms | 3.71s | 2.68s | 4.03s | 3.45s | 793.81ms | 505.23ms |
| 5x500 - 3 sources (deep) | 194.53ms | 1.20s | 229.20ms | 1.37s | 223.82ms | 227.27ms | 202.14ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 281.43ms | 1.72s | 450.48ms | 1.72s (partial) | 476.29ms | 333.74ms | 256.26ms |

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
