# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.92s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.49s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.25s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.49s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.84s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.55s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 196.20ms | 2.42s | 195.68ms | 1.40s | 204.88ms | 294.96ms | 165.62ms (fail) |
| broadPropagation | 389.81ms | 4.42s | 455.37ms | 78.30ms (fail) | 456.52ms | 527.32ms | 5.97ms (fail) |
| deepPropagation | 96.75ms | 1.57s | 177.88ms | 1.88s (fail) | 170.78ms | 170.73ms | 142.05ms (fail) |
| diamond | 211.64ms | 2.52s | 280.10ms | 2.52s (fail) | 279.31ms | 357.84ms | 185.30ms (fail) |
| mux | 413.34ms | 1.84s | 396.90ms | 554.31ms (fail) | 408.26ms | 447.64ms | 190.89ms (fail) |
| repeatedObservers | 47.99ms | 244.04ms | 39.38ms | 376.17ms (fail) | 44.89ms | 87.43ms | 54.96ms (fail) |
| triangle | 77.40ms | 777.76ms | 98.58ms | 881.70ms (fail) | 102.61ms | 114.62ms | 76.52ms (fail) |
| unstable | 65.74ms | 356.31ms | 69.96ms | 617.38ms (fail) | 79.25ms | 102.34ms | 339.04ms (fail) |
| molBench | 483.34ms | 572.99ms | 489.27ms | 12.18ms | 486.42ms | 502.34ms | 931μs |
| create_signals | 26.18ms | 88.59ms | 5.22ms | 25.50ms | 26.64ms | 48.80ms | 68.49ms |
| comp_0to1 | 10.03ms | 40.26ms | 17.14ms | 16.02ms | 12.32ms | 48.05ms | 57.38ms |
| comp_1to1 | 25.79ms | 31.74ms | 14.30ms | 24.17ms | 28.93ms | 39.90ms | 61.73ms |
| comp_2to1 | 18.06ms | 24.34ms | 15.88ms | 27.14ms | 9.53ms | 16.90ms | 40.34ms |
| comp_4to1 | 1.68ms | 18.59ms | 13.38ms | 2.50ms | 2.08ms | 13.04ms | 19.00ms |
| comp_1000to1 | 6μs | 17μs | 4μs | 4μs | 4μs | 17μs | 41μs |
| comp_1to2 | 11.54ms | 41.23ms | 26.46ms | 15.88ms | 24.35ms | 21.94ms | 47.91ms |
| comp_1to4 | 15.80ms | 24.23ms | 15.84ms | 28.77ms | 9.81ms | 26.94ms | 48.45ms |
| comp_1to8 | 9.60ms | 25.16ms | 5.14ms | 9.21ms | 8.89ms | 23.83ms | 43.15ms |
| comp_1to1000 | 4.38ms | 15.93ms | 3.47ms | 4.51ms | 6.91ms | 15.81ms | 38.88ms |
| update_1to1 | 4.83ms | 23.87ms | 8.94ms | 84.38ms | 9.09ms | 15.89ms | 5.66ms |
| update_2to1 | 2.43ms | 12.33ms | 4.24ms | 41.96ms | 4.59ms | 7.87ms | 2.87ms |
| update_4to1 | 2.29ms | 7.06ms | 2.18ms | 20.84ms | 2.20ms | 3.84ms | 1.47ms |
| update_1000to1 | 22μs | 70μs | 22μs | 192μs | 22μs | 38μs | 14μs |
| update_1to2 | 3.79ms | 11.27ms | 4.76ms | 42.09ms | 4.48ms | 7.66ms | 2.88ms |
| update_1to4 | 1.20ms | 5.93ms | 2.13ms | 20.91ms | 2.21ms | 3.83ms | 1.49ms |
| update_1to1000 | 52μs | 185μs | 38μs | 114μs | 42μs | 165μs | 379μs |
| cellx1000 | 10.79ms | 69.71ms | 12.06ms | N/A | 9.87ms | 11.68ms | 5.83ms |
| cellx2500 | 28.47ms | 239.25ms | 25.78ms | N/A | 35.64ms | 40.51ms | 26.47ms |
| cellx5000 | 71.41ms | 563.09ms | 63.50ms | N/A | 79.35ms | 102.90ms | 100.99ms |
| 10x5 - 2 sources - read 20.0% (simple) | 214.65ms | 2.01s | 439.87ms | 2.17s | 514.50ms | 355.50ms | 237.91ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 165.14ms | 1.58s | 273.15ms | 1.49s (partial) | 280.61ms | 243.88ms | 195.73ms |
| 1000x12 - 4 sources - dynamic (large) | 308.43ms | 1.90s | 3.72s | 2.53s (partial) | 3.88s | 465.81ms | 349.34ms |
| 1000x5 - 25 sources (wide dense) | 558.61ms | 3.49s | 2.70s | 4.39s | 3.59s | 725.25ms | 478.42ms |
| 5x500 - 3 sources (deep) | 187.46ms | 1.16s | 230.49ms | 1.50s | 228.66ms | 265.60ms | 206.45ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 255.15ms | 1.75s | 447.96ms | 1.79s (partial) | 478.34ms | 380.02ms | 257.23ms |

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
