# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.95s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.21s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.37s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.43s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.19ms | 2.32s | 207.40ms | 1.25s | 1.48s | 209.23ms | 278.43ms | 149.21ms (fail) |
| broadPropagation | 350.83ms | 4.28s | 455.17ms | 4.99s | 86.63ms (fail) | 455.91ms | 503.62ms | 6.21ms (fail) |
| deepPropagation | 124.53ms | 1.51s | 182.04ms | 4.00s | 1.93s (fail) | 179.50ms | 169.66ms | 146.13ms (fail) |
| diamond | 235.30ms | 2.38s | 274.75ms | 14.03s (fail) | 2.66s (fail) | 293.66ms | 364.50ms | 183.29ms (fail) |
| mux | 370.48ms | 1.85s | 387.12ms | 1.02s | 575.68ms (fail) | 409.63ms | 437.08ms | 191.78ms (fail) |
| repeatedObservers | 44.66ms | 228.79ms | 37.99ms | 9.74s | 396.14ms (fail) | 46.72ms | 78.00ms | 53.05ms (fail) |
| triangle | 84.09ms | 777.32ms | 99.17ms | 4.52s | 889.10ms (fail) | 103.12ms | 116.58ms | 75.63ms (fail) |
| unstable | 59.95ms | 355.25ms | 70.22ms | 7.64s | 593.76ms (fail) | 75.09ms | 94.17ms | 335.65ms (fail) |
| molBench | 491.85ms | 577.02ms | 490.87ms | 5.90s | 11.94ms | 486.89ms | 493.57ms | 1.07ms |
| create_signals | 27.76ms | 91.88ms | 5.22ms | 13.34ms | 24.63ms | 25.73ms | 72.79ms | 59.15ms |
| comp_0to1 | 7.89ms | 15.36ms | 17.42ms | 13.68ms | 15.43ms | 14.13ms | 26.34ms | 52.62ms |
| comp_1to1 | 4.13ms | 48.86ms | 11.44ms | 99.56ms | 22.92ms | 20.80ms | 27.26ms | 53.74ms |
| comp_2to1 | 2.27ms | 33.52ms | 16.68ms | 72.37ms | 24.98ms | 8.02ms | 43.33ms | 36.44ms |
| comp_4to1 | 7.70ms | 16.94ms | 8.64ms | 85.23ms | 5.52ms | 1.78ms | 8.71ms | 16.69ms |
| comp_1000to1 | 4μs | 21μs | 4μs | 59.32ms | 3μs | 9μs | 14μs | 41μs |
| comp_1to2 | 15.69ms | 34.05ms | 17.26ms | 66.89ms | 17.44ms | 15.47ms | 33.06ms | 46.60ms |
| comp_1to4 | 12.32ms | 20.01ms | 26.58ms | 99.18ms | 27.49ms | 7.36ms | 16.22ms | 47.08ms |
| comp_1to8 | 6.06ms | 22.23ms | 5.77ms | 116.37ms | 8.62ms | 7.27ms | 20.90ms | 43.45ms |
| comp_1to1000 | 3.56ms | 15.06ms | 6.49ms | 47.90ms | 4.28ms | 4.56ms | 14.69ms | 38.06ms |
| update_1to1 | 9.81ms | 21.79ms | 8.14ms | N/A | 82.44ms | 9.39ms | 16.13ms | 5.74ms |
| update_2to1 | 5.00ms | 10.55ms | 4.13ms | N/A | 41.90ms | 4.62ms | 7.91ms | 2.89ms |
| update_4to1 | 2.78ms | 6.46ms | 2.08ms | N/A | 20.86ms | 2.36ms | 4.04ms | 1.46ms |
| update_1000to1 | 20μs | 66μs | 21μs | N/A | 196μs | 24μs | 40μs | 15μs |
| update_1to2 | 5.62ms | 11.10ms | 4.14ms | N/A | 42.01ms | 4.93ms | 8.14ms | 2.93ms |
| update_1to4 | 2.44ms | 5.80ms | 2.09ms | N/A | 20.39ms | 2.36ms | 4.06ms | 1.46ms |
| update_1to1000 | 45μs | 172μs | 857μs | N/A | 149μs | 44μs | 148μs | 377μs |
| cellx1000 | 7.22ms | 69.49ms | 9.50ms | N/A | N/A | 9.88ms | 11.34ms | 5.06ms |
| cellx2500 | 20.55ms | 243.80ms | 26.07ms | N/A | N/A | 33.68ms | 32.17ms | 22.88ms |
| cellx5000 | 47.20ms | 554.37ms | 67.42ms | N/A | N/A | 63.09ms | 87.99ms | 77.09ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.15ms | 2.01s | 445.39ms | N/A | 2.21s | 515.34ms | 353.92ms | 243.91ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.39ms | 1.56s | 272.84ms | N/A | 1.46s (partial) | 287.26ms | 245.28ms | 201.52ms |
| 1000x12 - 4 sources - dynamic (large) | 278.87ms | 1.91s | 3.51s | N/A | 2.49s (partial) | 3.78s | 471.98ms | 342.84ms |
| 1000x5 - 25 sources (wide dense) | 412.51ms | 3.52s | 2.60s | N/A | 4.13s | 3.42s | 593.88ms | 506.32ms |
| 5x500 - 3 sources (deep) | 188.93ms | 1.16s | 225.97ms | N/A | 1.39s | 226.61ms | 258.81ms | 207.46ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.16ms | 1.72s | 447.89ms | N/A | 1.76s (partial) | 488.07ms | 386.66ms | 259.87ms |

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
