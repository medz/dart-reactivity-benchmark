# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.37s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.05s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.51s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.32s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.38s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.59s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.25ms | 2.32s | 199.99ms | 1.42s | 209.75ms | 241.15ms | 176.93ms (fail) |
| broadPropagation | 267.29ms | 4.43s | 460.16ms | 82.52ms (fail) | 460.00ms | 444.80ms | 6.33ms (fail) |
| deepPropagation | 80.72ms | 1.55s | 180.36ms | 1.97s (fail) | 181.66ms | 132.28ms | 144.89ms (fail) |
| diamond | 194.64ms | 2.40s | 279.05ms | 2.70s (fail) | 282.23ms | 307.38ms | 188.60ms (fail) |
| mux | 332.96ms | 1.84s | 422.37ms | 570.78ms (fail) | 419.09ms | 398.89ms | 191.88ms (fail) |
| repeatedObservers | 49.39ms | 225.81ms | 40.07ms | 403.31ms (fail) | 46.27ms | 87.13ms | 52.54ms (fail) |
| triangle | 68.06ms | 759.50ms | 99.11ms | 986.84ms (fail) | 101.61ms | 95.95ms | 79.83ms (fail) |
| unstable | 61.19ms | 335.35ms | 74.15ms | 643.65ms (fail) | 75.31ms | 101.22ms | 346.63ms (fail) |
| molBench | 485.49ms | 582.32ms | 488.83ms | 11.53ms | 487.91ms | 497.24ms | 922μs |
| create_signals | 27.36ms | 71.08ms | 5.40ms | 24.50ms | 25.54ms | 50.44ms | 64.47ms |
| comp_0to1 | 7.89ms | 28.05ms | 17.97ms | 15.45ms | 10.96ms | 23.05ms | 61.07ms |
| comp_1to1 | 15.71ms | 46.51ms | 14.36ms | 28.75ms | 29.25ms | 35.98ms | 57.43ms |
| comp_2to1 | 8.78ms | 23.37ms | 23.84ms | 29.31ms | 17.37ms | 30.50ms | 38.32ms |
| comp_4to1 | 6.78ms | 17.23ms | 16.50ms | 7.31ms | 3.82ms | 29.72ms | 16.84ms |
| comp_1000to1 | 5μs | 19μs | 9μs | 3μs | 4μs | 26μs | 44μs |
| comp_1to2 | 10.83ms | 34.91ms | 25.25ms | 11.47ms | 12.93ms | 26.22ms | 47.84ms |
| comp_1to4 | 17.76ms | 21.74ms | 35.21ms | 19.62ms | 10.95ms | 27.28ms | 46.33ms |
| comp_1to8 | 4.43ms | 23.54ms | 8.38ms | 5.39ms | 7.52ms | 21.34ms | 45.66ms |
| comp_1to1000 | 4.21ms | 15.17ms | 7.49ms | 4.53ms | 6.45ms | 14.85ms | 41.32ms |
| update_1to1 | 5.28ms | 22.87ms | 8.33ms | 87.11ms | 11.25ms | 14.57ms | 6.02ms |
| update_2to1 | 5.88ms | 12.55ms | 4.39ms | 41.55ms | 5.14ms | 7.17ms | 3.04ms |
| update_4to1 | 1.32ms | 6.40ms | 2.10ms | 20.75ms | 2.88ms | 3.59ms | 1.52ms |
| update_1000to1 | 13μs | 61μs | 20μs | 174μs | 27μs | 36μs | 15μs |
| update_1to2 | 2.62ms | 12.39ms | 4.19ms | 45.02ms | 4.93ms | 7.29ms | 3.00ms |
| update_1to4 | 1.57ms | 5.82ms | 2.09ms | 20.32ms | 2.83ms | 3.59ms | 1.51ms |
| update_1to1000 | 30μs | 172μs | 807μs | 96μs | 58μs | 143μs | 416μs |
| cellx1000 | 6.42ms | 73.72ms | 9.65ms | N/A | 9.64ms | 9.26ms | 5.28ms |
| cellx2500 | 18.67ms | 257.13ms | 26.38ms | N/A | 34.52ms | 27.25ms | 22.96ms |
| cellx5000 | 56.79ms | 570.50ms | 68.85ms | N/A | 67.09ms | 65.80ms | 56.97ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.62ms | 2.03s | 447.92ms | 2.22s | 502.03ms | 316.63ms | 243.38ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.64ms | 1.51s | 277.99ms | 1.47s (partial) | 282.20ms | 219.94ms | 204.44ms |
| 1000x12 - 4 sources - dynamic (large) | 295.15ms | 1.89s | 3.79s | 2.48s (partial) | 3.76s | 445.94ms | 347.06ms |
| 1000x5 - 25 sources (wide dense) | 411.10ms | 3.46s | 2.76s | 4.06s | 3.54s | 805.00ms | 493.57ms |
| 5x500 - 3 sources (deep) | 179.46ms | 1.13s | 239.35ms | 1.37s | 224.78ms | 227.33ms | 209.45ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.48ms | 1.68s | 464.29ms | 1.85s (partial) | 484.56ms | 333.56ms | 261.80ms |

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
