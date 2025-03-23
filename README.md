# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.30s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.04s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.42s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.37s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.37s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.10ms | 2.31s | 203.98ms | 1.25s | 1.48s | 208.52ms | 273.17ms | 149.44ms (fail) |
| broadPropagation | 353.93ms | 4.23s | 465.10ms | 4.99s | 85.50ms (fail) | 449.40ms | 499.56ms | 5.90ms (fail) |
| deepPropagation | 126.83ms | 1.50s | 179.83ms | 4.00s | 2.04s (fail) | 177.78ms | 168.18ms | 139.87ms (fail) |
| diamond | 239.09ms | 2.40s | 285.13ms | 14.03s (fail) | 2.76s (fail) | 290.39ms | 365.07ms | 183.85ms (fail) |
| mux | 371.27ms | 1.82s | 389.90ms | 1.02s | 570.88ms (fail) | 411.66ms | 436.11ms | 190.73ms (fail) |
| repeatedObservers | 44.97ms | 231.95ms | 38.84ms | 9.74s | 397.15ms (fail) | 46.12ms | 77.79ms | 52.23ms (fail) |
| triangle | 86.04ms | 762.51ms | 99.73ms | 4.52s | 902.93ms (fail) | 105.28ms | 118.27ms | 78.20ms (fail) |
| unstable | 61.47ms | 349.91ms | 70.81ms | 7.64s | 683.31ms (fail) | 71.91ms | 94.70ms | 337.34ms (fail) |
| molBench | 491.78ms | 578.91ms | 491.91ms | 5.90s | 12.43ms | 489.86ms | 494.05ms | 1.11ms |
| create_signals | 26.21ms | 78.95ms | 4.52ms | 13.34ms | 23.17ms | 24.30ms | 85.30ms | 58.19ms |
| comp_0to1 | 10.82ms | 47.01ms | 23.26ms | 13.68ms | 14.42ms | 11.09ms | 41.86ms | 51.68ms |
| comp_1to1 | 7.78ms | 18.14ms | 14.32ms | 99.56ms | 29.98ms | 25.77ms | 31.81ms | 52.45ms |
| comp_2to1 | 14.15ms | 23.16ms | 17.55ms | 72.37ms | 33.32ms | 10.07ms | 37.34ms | 35.68ms |
| comp_4to1 | 1.65ms | 18.29ms | 14.98ms | 85.23ms | 9.60ms | 2.13ms | 4.56ms | 16.07ms |
| comp_1000to1 | 5μs | 15μs | 4μs | 59.32ms | 7μs | 5μs | 15μs | 44μs |
| comp_1to2 | 9.00ms | 33.20ms | 18.68ms | 66.89ms | 13.42ms | 20.89ms | 31.42ms | 44.57ms |
| comp_1to4 | 8.14ms | 23.48ms | 29.96ms | 99.18ms | 26.02ms | 10.72ms | 15.36ms | 43.86ms |
| comp_1to8 | 9.01ms | 20.28ms | 6.70ms | 116.37ms | 9.35ms | 7.48ms | 20.23ms | 42.78ms |
| comp_1to1000 | 3.58ms | 14.79ms | 6.95ms | 47.90ms | 6.34ms | 4.52ms | 14.29ms | 38.39ms |
| update_1to1 | 11.40ms | 26.22ms | 8.15ms | N/A | 85.92ms | 11.01ms | 16.14ms | 5.74ms |
| update_2to1 | 5.08ms | 12.14ms | 4.06ms | N/A | 41.15ms | 5.18ms | 7.92ms | 3.45ms |
| update_4to1 | 2.75ms | 6.52ms | 2.09ms | N/A | 20.14ms | 2.60ms | 4.12ms | 1.46ms |
| update_1000to1 | 15μs | 61μs | 20μs | N/A | 176μs | 25μs | 41μs | 15μs |
| update_1to2 | 4.30ms | 12.35ms | 4.13ms | N/A | 42.00ms | 5.15ms | 8.12ms | 2.94ms |
| update_1to4 | 2.45ms | 6.34ms | 2.04ms | N/A | 20.71ms | 2.58ms | 4.04ms | 1.46ms |
| update_1to1000 | 46μs | 166μs | 1.08ms | N/A | 153μs | 45μs | 149μs | 383μs |
| cellx1000 | 7.17ms | 71.20ms | 11.55ms | N/A | N/A | 9.71ms | 11.82ms | 4.99ms |
| cellx2500 | 19.27ms | 246.51ms | 27.18ms | N/A | N/A | 31.33ms | 41.20ms | 24.15ms |
| cellx5000 | 40.75ms | 540.52ms | 69.22ms | N/A | N/A | 58.97ms | 94.43ms | 62.71ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.53ms | 2.02s | 439.85ms | N/A | 2.48s | 503.50ms | 361.65ms | 241.37ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.33ms | 1.54s | 269.86ms | N/A | 1.58s (partial) | 277.02ms | 247.03ms | 199.77ms |
| 1000x12 - 4 sources - dynamic (large) | 280.22ms | 1.91s | 3.56s | N/A | 2.61s (partial) | 3.75s | 460.31ms | 334.79ms |
| 1000x5 - 25 sources (wide dense) | 408.13ms | 3.65s | 2.59s | N/A | 4.12s | 3.45s | 589.14ms | 502.30ms |
| 5x500 - 3 sources (deep) | 190.87ms | 1.16s | 232.80ms | N/A | 1.44s | 230.56ms | 269.31ms | 202.59ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.94ms | 1.75s | 452.13ms | N/A | 1.84s (partial) | 477.61ms | 379.66ms | 255.85ms |

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
