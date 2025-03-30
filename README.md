# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.72s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.22s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.94s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.37s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.51s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.04s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.86ms | 2.29s | 202.39ms | 1.25s | 1.42s | 209.76ms | 279.45ms | 156.95ms (fail) |
| broadPropagation | 362.06ms | 4.26s | 460.22ms | 4.99s | 83.82ms (fail) | 458.53ms | 506.66ms | 6.19ms (fail) |
| deepPropagation | 124.58ms | 1.51s | 179.93ms | 4.00s | 1.98s (fail) | 178.14ms | 176.70ms | 140.33ms (fail) |
| diamond | 236.86ms | 2.40s | 279.52ms | 14.03s (fail) | 2.68s (fail) | 291.54ms | 354.77ms | 181.74ms (fail) |
| mux | 373.43ms | 1.81s | 383.09ms | 1.02s | 565.24ms (fail) | 408.18ms | 442.01ms | 188.93ms (fail) |
| repeatedObservers | 45.51ms | 225.21ms | 38.47ms | 9.74s | 387.87ms (fail) | 46.33ms | 78.53ms | 52.42ms (fail) |
| triangle | 83.84ms | 758.04ms | 98.52ms | 4.52s | 961.77ms (fail) | 104.90ms | 116.13ms | 80.10ms (fail) |
| unstable | 60.02ms | 349.79ms | 70.54ms | 7.64s | 617.59ms (fail) | 71.44ms | 94.73ms | 337.03ms (fail) |
| molBench | 493.44ms | 586.60ms | 490.15ms | 5.90s | 11.71ms | 483.02ms | 492.22ms | 1.18ms |
| create_signals | 28.17ms | 73.39ms | 4.53ms | 13.34ms | 24.35ms | 25.83ms | 51.39ms | 61.25ms |
| comp_0to1 | 8.69ms | 20.48ms | 21.44ms | 13.68ms | 14.03ms | 11.84ms | 25.63ms | 52.77ms |
| comp_1to1 | 4.43ms | 36.51ms | 11.63ms | 99.56ms | 25.63ms | 27.35ms | 33.35ms | 53.46ms |
| comp_2to1 | 2.30ms | 30.21ms | 20.10ms | 72.37ms | 34.28ms | 12.63ms | 36.81ms | 35.96ms |
| comp_4to1 | 7.91ms | 17.37ms | 11.62ms | 85.23ms | 11.40ms | 3.72ms | 4.56ms | 16.53ms |
| comp_1000to1 | 3μs | 21μs | 8μs | 59.32ms | 3μs | 6μs | 15μs | 41μs |
| comp_1to2 | 11.24ms | 34.15ms | 17.70ms | 66.89ms | 13.65ms | 14.00ms | 31.59ms | 44.36ms |
| comp_1to4 | 13.85ms | 24.17ms | 29.44ms | 99.18ms | 24.60ms | 12.64ms | 15.70ms | 43.37ms |
| comp_1to8 | 4.17ms | 23.15ms | 8.15ms | 116.37ms | 6.34ms | 9.17ms | 21.39ms | 42.71ms |
| comp_1to1000 | 3.31ms | 15.35ms | 6.92ms | 47.90ms | 5.88ms | 5.24ms | 15.57ms | 38.11ms |
| update_1to1 | 11.29ms | 23.68ms | 8.15ms | N/A | 83.09ms | 9.26ms | 17.62ms | 5.74ms |
| update_2to1 | 3.98ms | 11.98ms | 4.04ms | N/A | 42.50ms | 4.59ms | 7.96ms | 2.92ms |
| update_4to1 | 2.82ms | 6.49ms | 2.07ms | N/A | 20.62ms | 2.36ms | 4.07ms | 1.49ms |
| update_1000to1 | 10μs | 68μs | 20μs | N/A | 178μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.64ms | 11.83ms | 4.11ms | N/A | 42.97ms | 4.90ms | 8.07ms | 2.94ms |
| update_1to4 | 1.32ms | 6.34ms | 2.04ms | N/A | 20.65ms | 2.34ms | 4.02ms | 1.43ms |
| update_1to1000 | 48μs | 169μs | 817μs | N/A | 96μs | 45μs | 149μs | 376μs |
| cellx1000 | 7.63ms | 82.28ms | 9.37ms | N/A | N/A | 10.97ms | 11.18ms | 5.52ms |
| cellx2500 | 21.99ms | 279.03ms | 24.89ms | N/A | N/A | 33.89ms | 33.66ms | 29.71ms |
| cellx5000 | 56.20ms | 612.16ms | 63.20ms | N/A | N/A | 69.39ms | 63.18ms | 71.59ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.79ms | 2.02s | 438.04ms | N/A | 2.36s | 502.94ms | 353.18ms | 235.25ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.31ms | 1.56s | 270.21ms | N/A | 1.53s (partial) | 276.84ms | 245.02ms | 202.02ms |
| 1000x12 - 4 sources - dynamic (large) | 283.63ms | 1.93s | 3.51s | N/A | 2.69s (partial) | 4.02s | 460.58ms | 350.13ms |
| 1000x5 - 25 sources (wide dense) | 411.24ms | 3.58s | 2.59s | N/A | 4.12s | 3.34s | 595.39ms | 506.21ms |
| 5x500 - 3 sources (deep) | 189.05ms | 1.16s | 229.83ms | N/A | 1.41s | 229.69ms | 253.71ms | 202.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.21ms | 1.76s | 443.95ms | N/A | 1.86s (partial) | 489.94ms | 382.80ms | 256.56ms |

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
