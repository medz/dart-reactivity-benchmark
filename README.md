# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.25s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.63s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.15s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.98s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.85s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.58s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.11s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 124.85ms | 2.38s | 206.75ms | 1.41s | 212.00ms | 265.39ms | 166.44ms |
| broadPropagation | 240.90ms | 4.40s | 467.76ms | 81.83ms (fail) | 466.91ms | 445.99ms | 397.02ms |
| deepPropagation | 80.26ms | 1.51s | 178.93ms | 1.85s (fail) | 184.54ms | 133.40ms | 158.15ms |
| diamond | 158.66ms | 2.42s | 282.17ms | 2.54s (fail) | 288.89ms | 321.42ms | 214.15ms |
| mux | 298.24ms | 1.84s | 376.29ms | 539.68ms (fail) | 391.50ms | 371.91ms | 371.71ms |
| repeatedObservers | 27.34ms | 229.62ms | 40.48ms | 393.74ms (fail) | 46.03ms | 89.73ms | 58.85ms |
| triangle | 64.45ms | 743.90ms | 100.18ms | 867.43ms (fail) | 99.30ms | 99.28ms | 88.84ms |
| unstable | 47.54ms | 345.41ms | 69.80ms | 601.45ms (fail) | 77.69ms | 104.44ms | 343.06ms |
| molBench | 485.61ms | 590.18ms | 483.29ms | 11.03ms | 495.55ms | 493.80ms | 493.23ms |
| create_signals | 11.23ms | 85.66ms | 5.71ms | 26.62ms | 28.80ms | 51.64ms | 63.38ms |
| comp_0to1 | 13.99ms | 16.05ms | 19.17ms | 16.14ms | 12.75ms | 23.14ms | 60.90ms |
| comp_1to1 | 19.41ms | 55.84ms | 12.32ms | 25.32ms | 20.96ms | 44.52ms | 62.01ms |
| comp_2to1 | 8.55ms | 25.71ms | 11.97ms | 27.58ms | 9.73ms | 48.14ms | 42.09ms |
| comp_4to1 | 1.90ms | 25.47ms | 15.24ms | 2.70ms | 9.82ms | 22.28ms | 16.61ms |
| comp_1000to1 | 3μs | 15μs | 5μs | 4μs | 8μs | 19μs | 39μs |
| comp_1to2 | 17.85ms | 34.81ms | 19.01ms | 14.31ms | 17.59ms | 33.19ms | 48.44ms |
| comp_1to4 | 16.90ms | 25.80ms | 29.33ms | 28.30ms | 12.88ms | 32.89ms | 47.17ms |
| comp_1to8 | 4.14ms | 23.98ms | 8.47ms | 9.31ms | 7.38ms | 22.49ms | 42.63ms |
| comp_1to1000 | 3.47ms | 15.49ms | 7.18ms | 4.64ms | 4.39ms | 14.34ms | 38.03ms |
| update_1to1 | 5.57ms | 23.07ms | 8.82ms | 78.81ms | 9.34ms | 14.11ms | 6.11ms |
| update_2to1 | 3.23ms | 12.65ms | 4.33ms | 40.04ms | 4.72ms | 6.96ms | 3.05ms |
| update_4to1 | 2.52ms | 6.59ms | 2.25ms | 19.16ms | 2.33ms | 3.62ms | 1.55ms |
| update_1000to1 | 23μs | 74μs | 22μs | 166μs | 23μs | 37μs | 15μs |
| update_1to2 | 2.94ms | 11.84ms | 4.35ms | 41.00ms | 5.13ms | 6.97ms | 3.06ms |
| update_1to4 | 2.34ms | 6.08ms | 2.25ms | 19.77ms | 2.61ms | 3.53ms | 1.53ms |
| update_1to1000 | 30μs | 156μs | 1.27ms | 94μs | 46μs | 261μs | 370μs |
| cellx1000 | 5.33ms | 83.51ms | 10.39ms | N/A | 10.45ms | 9.52ms | 9.58ms |
| cellx2500 | 16.00ms | 296.85ms | 38.32ms | N/A | 40.62ms | 33.69ms | 27.64ms |
| cellx5000 | 41.80ms | 700.54ms | 104.23ms | N/A | 81.23ms | 70.38ms | 89.18ms |
| 10x5 - 2 sources - read 20.0% (simple) | 179.44ms | 1.95s | 441.54ms | 2.09s | 507.90ms | 318.99ms | 246.92ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.43ms | 1.48s | 275.36ms | 1.40s (partial) | 280.23ms | 221.37ms | 196.61ms |
| 1000x12 - 4 sources - dynamic (large) | 279.69ms | 1.93s | 3.55s | 2.43s (partial) | 3.57s | 453.42ms | 365.39ms |
| 1000x5 - 25 sources (wide dense) | 534.85ms | 3.45s | 2.52s | 4.32s | 3.25s | 821.83ms | 496.92ms |
| 5x500 - 3 sources (deep) | 155.87ms | 1.16s | 229.51ms | 1.48s | 226.87ms | 229.91ms | 208.24ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 237.50ms | 1.68s | 453.69ms | 1.73s (partial) | 472.63ms | 338.03ms | 260.04ms |

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
