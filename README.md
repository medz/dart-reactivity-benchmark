# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.25s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.67s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.24s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.08s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.30s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.39s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.93s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 128.96ms | 2.39s | 208.38ms | 1.44s | 214.64ms | 275.42ms | 172.92ms |
| broadPropagation | 246.56ms | 4.45s | 467.61ms | 84.26ms (fail) | 463.88ms | 444.45ms | 400.80ms |
| deepPropagation | 81.49ms | 1.51s | 178.52ms | 1.97s (fail) | 173.92ms | 130.24ms | 156.16ms |
| diamond | 159.97ms | 2.42s | 287.83ms | 2.63s (fail) | 283.14ms | 326.72ms | 220.89ms |
| mux | 295.77ms | 1.85s | 374.43ms | 551.53ms (fail) | 392.96ms | 379.10ms | 357.14ms |
| repeatedObservers | 27.20ms | 241.61ms | 41.28ms | 395.67ms (fail) | 46.35ms | 91.75ms | 58.84ms |
| triangle | 65.01ms | 742.53ms | 100.85ms | 962.80ms (fail) | 101.46ms | 99.95ms | 84.83ms |
| unstable | 48.72ms | 349.32ms | 70.44ms | 605.82ms (fail) | 78.22ms | 161.98ms | 345.99ms |
| molBench | 485.02ms | 590.81ms | 486.80ms | 10.54ms | 495.82ms | 497.86ms | 493.11ms |
| create_signals | 8.36ms | 70.68ms | 5.36ms | 25.99ms | 25.63ms | 69.06ms | 67.94ms |
| comp_0to1 | 10.85ms | 28.42ms | 18.28ms | 14.31ms | 11.85ms | 32.51ms | 57.31ms |
| comp_1to1 | 28.16ms | 43.81ms | 14.08ms | 23.66ms | 27.10ms | 56.18ms | 63.87ms |
| comp_2to1 | 2.29ms | 36.98ms | 17.52ms | 24.50ms | 8.83ms | 31.14ms | 38.81ms |
| comp_4to1 | 1.83ms | 23.58ms | 15.25ms | 3.23ms | 1.92ms | 4.39ms | 18.42ms |
| comp_1000to1 | 3μs | 18μs | 4μs | 5μs | 5μs | 15μs | 38μs |
| comp_1to2 | 20.82ms | 28.84ms | 18.58ms | 14.03ms | 18.17ms | 35.43ms | 47.54ms |
| comp_1to4 | 16.26ms | 29.28ms | 37.03ms | 26.38ms | 12.43ms | 20.85ms | 46.14ms |
| comp_1to8 | 4.44ms | 20.99ms | 10.14ms | 5.04ms | 6.75ms | 20.94ms | 42.64ms |
| comp_1to1000 | 3.36ms | 15.74ms | 5.34ms | 4.53ms | 4.34ms | 14.01ms | 37.25ms |
| update_1to1 | 5.68ms | 22.35ms | 9.01ms | 80.79ms | 9.26ms | 14.34ms | 6.11ms |
| update_2to1 | 3.53ms | 13.66ms | 4.43ms | 40.38ms | 4.75ms | 7.10ms | 3.05ms |
| update_4to1 | 2.03ms | 5.96ms | 2.25ms | 20.02ms | 2.32ms | 3.59ms | 1.53ms |
| update_1000to1 | 11μs | 68μs | 22μs | 195μs | 24μs | 34μs | 15μs |
| update_1to2 | 4.74ms | 13.90ms | 4.51ms | 41.18ms | 4.63ms | 7.16ms | 3.09ms |
| update_1to4 | 1.62ms | 6.85ms | 2.26ms | 19.67ms | 2.53ms | 3.49ms | 1.50ms |
| update_1to1000 | 44μs | 165μs | 180μs | 112μs | 43μs | 147μs | 360μs |
| cellx1000 | 5.55ms | 76.58ms | 10.03ms | N/A | 9.61ms | 10.67ms | 9.94ms |
| cellx2500 | 17.29ms | 252.56ms | 28.91ms | N/A | 32.40ms | 35.50ms | 31.37ms |
| cellx5000 | 39.91ms | 649.83ms | 90.33ms | N/A | 70.10ms | 106.75ms | 88.03ms |
| 10x5 - 2 sources - read 20.0% (simple) | 181.85ms | 1.94s | 434.35ms | 2.26s | 507.92ms | 320.95ms | 253.99ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.30ms | 1.50s | 265.30ms | 1.52s (partial) | 283.14ms | 218.95ms | 212.24ms |
| 1000x12 - 4 sources - dynamic (large) | 273.11ms | 1.79s | 3.67s | 2.58s (partial) | 3.80s | 442.03ms | 374.07ms |
| 1000x5 - 25 sources (wide dense) | 533.69ms | 3.49s | 2.52s | 4.30s | 3.51s | 814.05ms | 497.79ms |
| 5x500 - 3 sources (deep) | 151.89ms | 1.12s | 225.22ms | 1.46s | 227.70ms | 228.94ms | 209.90ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 237.65ms | 1.67s | 457.23ms | 1.81s (partial) | 474.89ms | 337.46ms | 263.95ms |

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
