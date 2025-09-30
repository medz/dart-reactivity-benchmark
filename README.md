# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.93s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.59s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.27s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.89s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.62s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.37s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.62ms | 2.34s | 203.54ms | 1.42s | 216.18ms | 258.60ms | 167.40ms (fail) |
| broadPropagation | 316.77ms | 4.49s | 475.58ms | 82.53ms (fail) | 457.73ms | 466.65ms | 6.43ms (fail) |
| deepPropagation | 98.53ms | 1.57s | 179.24ms | 1.92s (fail) | 174.38ms | 142.51ms | 143.62ms (fail) |
| diamond | 225.71ms | 2.46s | 281.46ms | 2.58s (fail) | 299.61ms | 311.96ms | 181.05ms (fail) |
| mux | 348.08ms | 1.87s | 404.17ms | 555.40ms (fail) | 410.28ms | 411.40ms | 203.60ms (fail) |
| repeatedObservers | 50.43ms | 240.72ms | 40.45ms | 385.90ms (fail) | 45.03ms | 90.41ms | 52.86ms (fail) |
| triangle | 76.80ms | 776.09ms | 102.42ms | 859.27ms (fail) | 102.74ms | 96.20ms | 78.94ms (fail) |
| unstable | 141.42ms | 352.40ms | 74.42ms | 617.40ms (fail) | 76.64ms | 170.76ms | 339.59ms (fail) |
| molBench | 488.17ms | 583.09ms | 476.15ms | 11.21ms | 485.74ms | 501.19ms | 952μs |
| create_signals | 28.00ms | 75.47ms | 5.27ms | 24.04ms | 27.03ms | 79.55ms | 76.33ms |
| comp_0to1 | 11.21ms | 25.99ms | 24.01ms | 16.12ms | 12.53ms | 30.82ms | 64.12ms |
| comp_1to1 | 29.01ms | 29.97ms | 12.68ms | 27.02ms | 30.14ms | 43.54ms | 63.63ms |
| comp_2to1 | 17.11ms | 11.88ms | 17.22ms | 27.38ms | 14.07ms | 18.17ms | 42.04ms |
| comp_4to1 | 7.63ms | 29.65ms | 8.93ms | 4.61ms | 9.73ms | 13.29ms | 18.81ms |
| comp_1000to1 | 6μs | 18μs | 7μs | 3μs | 9μs | 14μs | 49μs |
| comp_1to2 | 11.55ms | 41.96ms | 13.82ms | 12.49ms | 23.77ms | 36.83ms | 55.12ms |
| comp_1to4 | 15.65ms | 23.89ms | 22.25ms | 28.38ms | 20.12ms | 22.25ms | 55.29ms |
| comp_1to8 | 5.10ms | 26.25ms | 9.27ms | 8.31ms | 9.61ms | 20.18ms | 51.54ms |
| comp_1to1000 | 3.88ms | 15.49ms | 7.04ms | 5.13ms | 4.38ms | 14.58ms | 46.41ms |
| update_1to1 | 5.57ms | 26.06ms | 9.33ms | 81.62ms | 10.27ms | 17.02ms | 6.06ms |
| update_2to1 | 2.80ms | 13.87ms | 5.32ms | 41.86ms | 4.53ms | 8.47ms | 3.12ms |
| update_4to1 | 1.41ms | 6.64ms | 2.33ms | 19.77ms | 2.53ms | 4.26ms | 1.57ms |
| update_1000to1 | 14μs | 62μs | 32μs | 176μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.75ms | 12.45ms | 4.70ms | 40.98ms | 4.49ms | 8.63ms | 3.05ms |
| update_1to4 | 1.40ms | 6.40ms | 2.36ms | 19.88ms | 2.50ms | 4.28ms | 1.56ms |
| update_1to1000 | 31μs | 170μs | 586μs | 94μs | 45μs | 146μs | 459μs |
| cellx1000 | 9.28ms | 83.85ms | 10.25ms | N/A | 10.32ms | 16.48ms | 9.72ms |
| cellx2500 | 22.96ms | 301.56ms | 31.73ms | N/A | 37.90ms | 41.78ms | 31.96ms |
| cellx5000 | 58.32ms | 610.05ms | 94.70ms | N/A | 86.20ms | 131.52ms | 84.73ms |
| 10x5 - 2 sources - read 20.0% (simple) | 252.26ms | 2.02s | 517.46ms | 2.17s | 507.69ms | 324.59ms | 258.48ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 192.11ms | 1.52s | 294.77ms | 1.45s (partial) | 281.12ms | 219.67ms | 207.74ms |
| 1000x12 - 4 sources - dynamic (large) | 356.76ms | 1.94s | 3.79s | 2.51s (partial) | 3.77s | 447.98ms | 363.24ms |
| 1000x5 - 25 sources (wide dense) | 504.55ms | 3.54s | 2.74s | 4.27s | 3.44s | 814.62ms | 514.80ms |
| 5x500 - 3 sources (deep) | 200.75ms | 1.15s | 249.24ms | 1.41s | 225.50ms | 232.49ms | 215.26ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 289.59ms | 1.70s | 479.34ms | 1.76s (partial) | 474.97ms | 344.74ms | 269.41ms |

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
