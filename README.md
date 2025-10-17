# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.50s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.09s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.47s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.21s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.66s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.55s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.59ms | 2.29s | 200.29ms | 1.43s | 212.01ms | 235.58ms | 168.76ms (fail) |
| broadPropagation | 268.58ms | 4.33s | 463.45ms | 81.18ms (fail) | 465.28ms | 432.85ms | 6.79ms (fail) |
| deepPropagation | 80.97ms | 1.52s | 179.58ms | 1.94s (fail) | 172.70ms | 130.90ms | 150.21ms (fail) |
| diamond | 178.85ms | 2.39s | 288.38ms | 2.61s (fail) | 284.24ms | 308.31ms | 185.73ms (fail) |
| mux | 332.27ms | 1.84s | 385.11ms | 588.80ms (fail) | 412.44ms | 400.29ms | 195.77ms (fail) |
| repeatedObservers | 49.19ms | 231.87ms | 41.59ms | 386.67ms (fail) | 46.28ms | 87.14ms | 52.54ms (fail) |
| triangle | 67.15ms | 773.51ms | 100.25ms | 866.86ms (fail) | 100.88ms | 95.57ms | 78.81ms (fail) |
| unstable | 62.02ms | 344.25ms | 74.64ms | 624.30ms (fail) | 75.88ms | 100.99ms | 340.56ms (fail) |
| molBench | 484.73ms | 581.97ms | 491.14ms | 10.47ms | 487.71ms | 494.67ms | 1.03ms |
| create_signals | 31.44ms | 50.26ms | 4.53ms | 22.69ms | 24.89ms | 71.59ms | 62.89ms |
| comp_0to1 | 16.11ms | 19.09ms | 18.32ms | 14.91ms | 10.99ms | 29.91ms | 56.97ms |
| comp_1to1 | 24.94ms | 28.11ms | 12.51ms | 25.97ms | 21.48ms | 48.45ms | 57.58ms |
| comp_2to1 | 12.18ms | 21.96ms | 17.15ms | 26.09ms | 7.84ms | 8.36ms | 38.85ms |
| comp_4to1 | 14.12ms | 14.65ms | 15.61ms | 3.77ms | 2.81ms | 4.28ms | 18.30ms |
| comp_1000to1 | 3μs | 22μs | 6μs | 3μs | 5μs | 14μs | 44μs |
| comp_1to2 | 11.12ms | 38.81ms | 16.08ms | 14.97ms | 17.40ms | 26.60ms | 50.68ms |
| comp_1to4 | 14.24ms | 25.48ms | 23.20ms | 25.50ms | 7.05ms | 20.02ms | 46.76ms |
| comp_1to8 | 7.12ms | 22.20ms | 6.79ms | 7.29ms | 6.60ms | 22.58ms | 46.60ms |
| comp_1to1000 | 4.10ms | 14.99ms | 6.93ms | 4.43ms | 4.31ms | 13.71ms | 41.64ms |
| update_1to1 | 11.91ms | 24.34ms | 8.36ms | 80.65ms | 11.11ms | 19.90ms | 6.26ms |
| update_2to1 | 5.91ms | 11.82ms | 4.32ms | 40.41ms | 5.22ms | 10.06ms | 3.24ms |
| update_4to1 | 2.82ms | 6.09ms | 2.09ms | 19.59ms | 2.79ms | 4.98ms | 1.56ms |
| update_1000to1 | 13μs | 65μs | 20μs | 172μs | 39μs | 36μs | 16μs |
| update_1to2 | 5.78ms | 12.12ms | 4.15ms | 41.34ms | 5.08ms | 10.74ms | 3.15ms |
| update_1to4 | 2.94ms | 6.44ms | 2.07ms | 21.12ms | 2.86ms | 4.91ms | 1.60ms |
| update_1to1000 | 54μs | 173μs | 877μs | 127μs | 45μs | 149μs | 427μs |
| cellx1000 | 7.48ms | 77.16ms | 9.52ms | N/A | 9.61ms | 10.51ms | 5.56ms |
| cellx2500 | 17.58ms | 271.69ms | 25.68ms | N/A | 31.26ms | 30.42ms | 28.90ms |
| cellx5000 | 36.30ms | 581.94ms | 69.07ms | N/A | 63.40ms | 97.99ms | 69.40ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.94ms | 2.01s | 513.82ms | 2.24s | 514.68ms | 316.76ms | 272.51ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 165.69ms | 1.52s | 304.14ms | 1.53s (partial) | 280.82ms | 218.41ms | 219.53ms |
| 1000x12 - 4 sources - dynamic (large) | 275.75ms | 1.86s | 3.72s | 2.48s (partial) | 3.76s | 450.92ms | 377.21ms |
| 1000x5 - 25 sources (wide dense) | 547.10ms | 3.49s | 2.74s | 4.15s | 3.42s | 810.97ms | 579.51ms |
| 5x500 - 3 sources (deep) | 177.99ms | 1.12s | 245.92ms | 1.46s | 225.25ms | 229.21ms | 210.73ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.65ms | 1.68s | 469.77ms | 1.81s (partial) | 474.31ms | 339.32ms | 283.90ms |

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
