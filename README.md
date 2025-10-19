# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.59s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.12s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.57s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.58s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.57s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.11s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.18ms | 2.34s | 201.58ms | 1.41s | 216.10ms | 233.91ms | 160.85ms (fail) |
| broadPropagation | 265.94ms | 4.40s | 456.22ms | 84.87ms (fail) | 467.97ms | 444.85ms | 6.91ms (fail) |
| deepPropagation | 80.52ms | 1.53s | 180.21ms | 1.96s (fail) | 176.95ms | 130.70ms | 145.92ms (fail) |
| diamond | 185.49ms | 2.38s | 279.42ms | 2.71s (fail) | 285.79ms | 306.20ms | 204.69ms (fail) |
| mux | 326.16ms | 1.81s | 394.96ms | 590.75ms (fail) | 408.47ms | 403.20ms | 193.70ms (fail) |
| repeatedObservers | 49.64ms | 234.62ms | 39.74ms | 422.24ms (fail) | 46.34ms | 86.29ms | 52.72ms (fail) |
| triangle | 68.88ms | 776.62ms | 99.21ms | 1.04s (fail) | 100.62ms | 95.75ms | 79.93ms (fail) |
| unstable | 62.64ms | 346.49ms | 75.07ms | 646.81ms (fail) | 76.60ms | 101.08ms | 346.26ms (fail) |
| molBench | 486.02ms | 582.21ms | 487.44ms | 11.29ms | 486.15ms | 497.57ms | 974μs |
| create_signals | 32.58ms | 82.70ms | 5.98ms | 24.42ms | 27.61ms | 71.99ms | 64.11ms |
| comp_0to1 | 6.94ms | 35.00ms | 18.25ms | 13.71ms | 12.09ms | 34.50ms | 56.64ms |
| comp_1to1 | 13.03ms | 29.34ms | 15.19ms | 21.91ms | 30.08ms | 30.31ms | 58.42ms |
| comp_2to1 | 2.70ms | 33.14ms | 20.21ms | 25.08ms | 9.75ms | 19.22ms | 39.69ms |
| comp_4to1 | 4.91ms | 19.81ms | 11.53ms | 4.92ms | 2.35ms | 4.29ms | 17.66ms |
| comp_1000to1 | 4μs | 16μs | 5μs | 4μs | 5μs | 24μs | 44μs |
| comp_1to2 | 11.07ms | 38.77ms | 17.96ms | 11.10ms | 20.62ms | 27.97ms | 48.94ms |
| comp_1to4 | 17.49ms | 23.77ms | 19.16ms | 24.14ms | 9.84ms | 23.82ms | 46.41ms |
| comp_1to8 | 10.96ms | 24.89ms | 7.34ms | 5.12ms | 7.13ms | 22.00ms | 46.02ms |
| comp_1to1000 | 6.60ms | 15.95ms | 5.06ms | 4.09ms | 4.44ms | 14.39ms | 42.78ms |
| update_1to1 | 5.29ms | 25.12ms | 9.33ms | 89.83ms | 10.14ms | 14.71ms | 6.08ms |
| update_2to1 | 5.54ms | 11.69ms | 5.34ms | 44.79ms | 4.61ms | 7.26ms | 3.11ms |
| update_4to1 | 1.37ms | 6.69ms | 2.34ms | 21.01ms | 2.54ms | 3.59ms | 1.57ms |
| update_1000to1 | 13μs | 62μs | 22μs | 201μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.70ms | 12.29ms | 4.73ms | 44.34ms | 4.54ms | 7.49ms | 3.05ms |
| update_1to4 | 1.36ms | 6.32ms | 2.35ms | 22.59ms | 2.54ms | 3.59ms | 1.57ms |
| update_1to1000 | 47μs | 185μs | 70μs | 96μs | 54μs | 143μs | 419μs |
| cellx1000 | 7.30ms | 82.79ms | 9.91ms | N/A | 10.62ms | 12.21ms | 5.98ms |
| cellx2500 | 26.55ms | 298.82ms | 34.57ms | N/A | 40.48ms | 39.50ms | 34.10ms |
| cellx5000 | 110.20ms | 625.74ms | 96.80ms | N/A | 92.50ms | 125.34ms | 95.35ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.29ms | 2.03s | 451.13ms | 2.21s | 512.04ms | 317.83ms | 256.45ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.21ms | 1.52s | 279.40ms | 1.49s (partial) | 287.11ms | 218.42ms | 197.59ms |
| 1000x12 - 4 sources - dynamic (large) | 289.43ms | 1.90s | 3.74s | 2.54s (partial) | 3.94s | 447.95ms | 359.82ms |
| 1000x5 - 25 sources (wide dense) | 573.46ms | 3.49s | 2.74s | 4.40s | 3.57s | 809.80ms | 511.86ms |
| 5x500 - 3 sources (deep) | 179.31ms | 1.14s | 233.10ms | 1.42s | 222.05ms | 230.24ms | 214.09ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 254.28ms | 1.72s | 462.88ms | 1.80s (partial) | 479.89ms | 331.70ms | 264.00ms |

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
