# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.59s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.28s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.91s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.84s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.84ms | 2.35s | 197.67ms | 1.37s | 208.39ms | 290.59ms | 167.49ms (fail) |
| broadPropagation | 318.25ms | 4.50s | 451.57ms | 82.82ms (fail) | 454.50ms | 524.50ms | 5.90ms (fail) |
| deepPropagation | 96.49ms | 1.57s | 181.20ms | 1.94s (fail) | 175.28ms | 169.86ms | 142.00ms (fail) |
| diamond | 222.00ms | 2.46s | 287.00ms | 2.63s (fail) | 285.82ms | 360.14ms | 180.46ms (fail) |
| mux | 348.61ms | 1.84s | 425.91ms | 580.87ms (fail) | 413.48ms | 439.78ms | 198.31ms (fail) |
| repeatedObservers | 51.96ms | 232.51ms | 39.57ms | 379.55ms (fail) | 45.32ms | 87.03ms | 52.62ms (fail) |
| triangle | 77.49ms | 771.46ms | 100.66ms | 930.55ms (fail) | 105.14ms | 116.40ms | 79.95ms (fail) |
| unstable | 72.93ms | 347.44ms | 69.84ms | 618.19ms (fail) | 79.83ms | 102.70ms | 338.01ms (fail) |
| molBench | 485.27ms | 571.86ms | 485.53ms | 11.92ms | 486.59ms | 497.88ms | 928μs |
| create_signals | 27.25ms | 69.14ms | 5.32ms | 29.91ms | 26.65ms | 49.48ms | 60.60ms |
| comp_0to1 | 10.98ms | 27.92ms | 17.60ms | 18.59ms | 12.00ms | 47.05ms | 55.35ms |
| comp_1to1 | 23.42ms | 43.97ms | 12.46ms | 31.19ms | 23.01ms | 39.62ms | 56.19ms |
| comp_2to1 | 15.70ms | 35.50ms | 19.14ms | 36.09ms | 12.52ms | 21.05ms | 37.52ms |
| comp_4to1 | 3.68ms | 13.92ms | 7.23ms | 7.56ms | 3.98ms | 20.95ms | 17.22ms |
| comp_1000to1 | 6μs | 28μs | 11μs | 3μs | 5μs | 19μs | 42μs |
| comp_1to2 | 11.31ms | 35.76ms | 16.46ms | 12.07ms | 20.08ms | 21.94ms | 45.97ms |
| comp_1to4 | 20.43ms | 18.72ms | 24.52ms | 23.93ms | 18.75ms | 25.92ms | 44.26ms |
| comp_1to8 | 5.31ms | 21.23ms | 6.92ms | 9.12ms | 6.59ms | 23.53ms | 43.79ms |
| comp_1to1000 | 5.04ms | 16.44ms | 4.59ms | 4.99ms | 4.35ms | 16.02ms | 40.37ms |
| update_1to1 | 5.79ms | 27.39ms | 8.63ms | 87.89ms | 8.88ms | 15.45ms | 5.67ms |
| update_2to1 | 2.84ms | 12.31ms | 4.28ms | 44.77ms | 4.50ms | 7.87ms | 2.86ms |
| update_4to1 | 1.48ms | 7.22ms | 2.13ms | 21.73ms | 2.26ms | 3.88ms | 1.43ms |
| update_1000to1 | 14μs | 70μs | 21μs | 208μs | 22μs | 39μs | 14μs |
| update_1to2 | 2.89ms | 11.44ms | 5.03ms | 44.81ms | 4.47ms | 7.70ms | 3.04ms |
| update_1to4 | 1.48ms | 6.44ms | 3.09ms | 22.22ms | 2.24ms | 3.85ms | 1.43ms |
| update_1to1000 | 32μs | 174μs | 153μs | 128μs | 43μs | 168μs | 375μs |
| cellx1000 | 10.70ms | 79.70ms | 9.87ms | N/A | 10.40ms | 13.22ms | 6.47ms |
| cellx2500 | 21.64ms | 264.69ms | 29.13ms | N/A | 39.68ms | 48.24ms | 30.84ms |
| cellx5000 | 56.48ms | 582.72ms | 75.65ms | N/A | 88.82ms | 130.21ms | 76.23ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.08ms | 2.03s | 440.00ms | 2.17s | 540.72ms | 363.99ms | 248.15ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.37ms | 1.55s | 269.01ms | 1.43s (partial) | 292.53ms | 251.72ms | 198.30ms |
| 1000x12 - 4 sources - dynamic (large) | 346.37ms | 1.91s | 3.72s | 2.49s (partial) | 3.75s | 480.01ms | 365.87ms |
| 1000x5 - 25 sources (wide dense) | 493.93ms | 3.61s | 2.69s | 4.25s | 3.44s | 746.35ms | 497.46ms |
| 5x500 - 3 sources (deep) | 198.30ms | 1.19s | 234.40ms | 1.62s | 227.41ms | 271.77ms | 205.52ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.96ms | 1.71s | 451.73ms | 1.93s (partial) | 488.13ms | 390.52ms | 257.46ms |

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
