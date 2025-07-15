# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.52s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.34s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.39s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.80s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.56ms | 2.40s | 200.25ms | 1.44s | 206.06ms | 288.32ms | 166.50ms (fail) |
| broadPropagation | 320.93ms | 4.43s | 454.90ms | 82.82ms (fail) | 451.43ms | 535.15ms | 6.11ms (fail) |
| deepPropagation | 95.97ms | 1.54s | 176.95ms | 2.00s (fail) | 174.02ms | 170.81ms | 144.22ms (fail) |
| diamond | 208.59ms | 2.49s | 277.63ms | 2.70s (fail) | 278.15ms | 358.10ms | 188.21ms (fail) |
| mux | 344.44ms | 1.86s | 399.89ms | 557.71ms (fail) | 403.33ms | 442.69ms | 196.50ms (fail) |
| repeatedObservers | 50.66ms | 240.22ms | 40.18ms | 379.65ms (fail) | 44.49ms | 86.96ms | 55.98ms (fail) |
| triangle | 74.81ms | 772.58ms | 98.18ms | 973.55ms (fail) | 110.05ms | 114.68ms | 77.09ms (fail) |
| unstable | 71.08ms | 354.50ms | 70.13ms | 625.06ms (fail) | 80.26ms | 102.49ms | 335.97ms (fail) |
| molBench | 482.40ms | 573.50ms | 487.85ms | 11.75ms | 486.61ms | 500.32ms | 1.17ms |
| create_signals | 26.65ms | 85.52ms | 4.62ms | 23.96ms | 27.40ms | 48.38ms | 61.09ms |
| comp_0to1 | 9.87ms | 42.71ms | 17.57ms | 13.91ms | 12.19ms | 46.61ms | 53.95ms |
| comp_1to1 | 17.53ms | 26.18ms | 12.41ms | 24.12ms | 19.49ms | 30.39ms | 57.31ms |
| comp_2to1 | 15.75ms | 12.94ms | 19.89ms | 24.64ms | 16.55ms | 23.39ms | 37.47ms |
| comp_4to1 | 3.99ms | 29.30ms | 12.51ms | 4.09ms | 9.63ms | 18.12ms | 17.06ms |
| comp_1000to1 | 4μs | 16μs | 6μs | 3μs | 5μs | 33μs | 45μs |
| comp_1to2 | 12.31ms | 35.88ms | 14.88ms | 11.71ms | 15.91ms | 31.14ms | 46.66ms |
| comp_1to4 | 16.11ms | 24.25ms | 25.74ms | 23.16ms | 7.23ms | 30.88ms | 45.05ms |
| comp_1to8 | 6.64ms | 26.89ms | 6.70ms | 5.09ms | 6.34ms | 24.73ms | 44.22ms |
| comp_1to1000 | 4.26ms | 16.24ms | 4.51ms | 4.48ms | 4.26ms | 15.79ms | 40.23ms |
| update_1to1 | 5.79ms | 24.52ms | 8.66ms | 86.03ms | 8.89ms | 15.44ms | 5.65ms |
| update_2to1 | 2.81ms | 13.16ms | 4.23ms | 43.27ms | 4.48ms | 7.67ms | 2.85ms |
| update_4to1 | 1.47ms | 6.83ms | 2.18ms | 20.85ms | 2.22ms | 3.83ms | 1.46ms |
| update_1000to1 | 14μs | 58μs | 21μs | 190μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.86ms | 12.03ms | 4.83ms | 45.19ms | 4.47ms | 7.76ms | 2.90ms |
| update_1to4 | 1.47ms | 6.34ms | 2.21ms | 21.35ms | 2.22ms | 3.86ms | 1.47ms |
| update_1to1000 | 39μs | 174μs | 156μs | 117μs | 42μs | 169μs | 391μs |
| cellx1000 | 7.02ms | 86.50ms | 9.78ms | N/A | 10.17ms | 11.52ms | 5.99ms |
| cellx2500 | 19.65ms | 275.54ms | 26.57ms | N/A | 37.87ms | 34.04ms | 29.94ms |
| cellx5000 | 49.30ms | 617.55ms | 79.04ms | N/A | 80.37ms | 84.72ms | 69.35ms |
| 10x5 - 2 sources - read 20.0% (simple) | 246.75ms | 2.04s | 474.27ms | 2.26s | 508.25ms | 362.16ms | 256.79ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.12ms | 1.62s | 282.96ms | 1.48s (partial) | 280.86ms | 256.72ms | 227.41ms |
| 1000x12 - 4 sources - dynamic (large) | 339.04ms | 2.14s | 3.74s | 2.55s (partial) | 3.95s | 470.77ms | 346.93ms |
| 1000x5 - 25 sources (wide dense) | 504.01ms | 3.67s | 2.70s | 4.21s | 3.39s | 734.26ms | 505.34ms |
| 5x500 - 3 sources (deep) | 195.76ms | 1.17s | 225.42ms | 1.38s | 223.42ms | 271.21ms | 206.39ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 285.56ms | 1.75s | 459.89ms | 1.78s (partial) | 478.12ms | 389.75ms | 283.38ms |

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
