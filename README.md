# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.02s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.42s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.00s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.06s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.87s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 160.87ms | 2.32s | 199.73ms | 1.42s | 221.45ms | 265.29ms | 160.74ms (fail) |
| broadPropagation | 318.29ms | 4.45s | 460.04ms | 82.93ms (fail) | 459.39ms | 461.35ms | 6.76ms (fail) |
| deepPropagation | 98.80ms | 1.56s | 178.38ms | 1.93s (fail) | 179.57ms | 140.74ms | 148.28ms (fail) |
| diamond | 221.88ms | 2.44s | 281.27ms | 2.63s (fail) | 288.37ms | 312.57ms | 192.74ms (fail) |
| mux | 338.82ms | 1.85s | 394.75ms | 582.36ms (fail) | 413.65ms | 410.13ms | 195.75ms (fail) |
| repeatedObservers | 50.82ms | 233.41ms | 47.86ms | 391.69ms (fail) | 46.33ms | 90.85ms | 52.60ms (fail) |
| triangle | 77.12ms | 768.05ms | 100.77ms | 899.54ms (fail) | 103.05ms | 96.16ms | 77.31ms (fail) |
| unstable | 141.34ms | 344.21ms | 77.10ms | 637.86ms (fail) | 75.66ms | 167.05ms | 343.35ms (fail) |
| molBench | 488.75ms | 560.96ms | 488.76ms | 11.53ms | 486.97ms | 501.64ms | 931μs |
| create_signals | 25.89ms | 86.39ms | 5.33ms | 25.54ms | 26.41ms | 64.21ms | 63.50ms |
| comp_0to1 | 12.27ms | 21.07ms | 18.05ms | 14.49ms | 11.95ms | 45.37ms | 58.25ms |
| comp_1to1 | 19.70ms | 17.52ms | 14.87ms | 21.62ms | 28.77ms | 43.65ms | 60.68ms |
| comp_2to1 | 12.98ms | 21.43ms | 19.05ms | 25.46ms | 21.59ms | 10.79ms | 39.83ms |
| comp_4to1 | 6.59ms | 29.68ms | 10.60ms | 4.77ms | 3.95ms | 13.80ms | 17.69ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 3μs | 4μs | 16μs | 46μs |
| comp_1to2 | 10.37ms | 36.75ms | 15.46ms | 13.73ms | 21.55ms | 35.13ms | 50.45ms |
| comp_1to4 | 26.36ms | 26.36ms | 23.64ms | 24.49ms | 10.94ms | 21.44ms | 49.00ms |
| comp_1to8 | 8.52ms | 22.46ms | 9.38ms | 4.90ms | 6.51ms | 22.58ms | 48.49ms |
| comp_1to1000 | 4.96ms | 15.35ms | 6.73ms | 4.12ms | 4.40ms | 15.47ms | 43.50ms |
| update_1to1 | 5.75ms | 27.48ms | 8.35ms | 81.80ms | 10.24ms | 16.90ms | 6.01ms |
| update_2to1 | 2.87ms | 13.10ms | 4.22ms | 41.26ms | 4.58ms | 8.41ms | 3.11ms |
| update_4to1 | 1.50ms | 7.13ms | 2.10ms | 20.48ms | 2.58ms | 4.19ms | 1.56ms |
| update_1000to1 | 13μs | 68μs | 21μs | 170μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.92ms | 12.01ms | 4.06ms | 41.23ms | 4.56ms | 8.61ms | 3.04ms |
| update_1to4 | 3.23ms | 6.18ms | 2.11ms | 20.03ms | 2.55ms | 4.20ms | 1.55ms |
| update_1to1000 | 52μs | 181μs | 905μs | 159μs | 43μs | 144μs | 434μs |
| cellx1000 | 8.99ms | 101.39ms | 10.58ms | N/A | 10.63ms | 11.61ms | 5.94ms |
| cellx2500 | 29.00ms | 323.95ms | 34.13ms | N/A | 41.13ms | 41.79ms | 32.17ms |
| cellx5000 | 91.32ms | 666.96ms | 101.01ms | N/A | 99.73ms | 139.03ms | 86.75ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.30ms | 2.05s | 448.74ms | 2.22s | 507.88ms | 324.94ms | 234.06ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 192.89ms | 1.58s | 279.90ms | 1.50s (partial) | 281.68ms | 221.71ms | 200.24ms |
| 1000x12 - 4 sources - dynamic (large) | 379.25ms | 1.97s | 3.73s | 2.54s (partial) | 3.56s | 450.26ms | 357.45ms |
| 1000x5 - 25 sources (wide dense) | 526.76ms | 3.51s | 2.75s | 4.42s | 3.36s | 829.88ms | 511.24ms |
| 5x500 - 3 sources (deep) | 209.66ms | 1.19s | 233.68ms | 1.46s | 225.75ms | 231.31ms | 207.87ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 298.82ms | 1.80s | 454.95ms | 1.79s (partial) | 477.32ms | 339.13ms | 263.29ms |

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
