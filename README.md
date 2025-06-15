# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.42s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.48s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.70s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.27s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.51s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.49ms | 161.97ms | 2.35s | 197.65ms | 1.42s | 208.72ms | 271.51ms | 2.25s | 147.14ms (fail) |
| broadPropagation | 373.47ms | 318.88ms | 4.46s | 446.62ms | 84.73ms (fail) | 451.13ms | 500.24ms | 5.70s | 6.53ms (fail) |
| deepPropagation | 123.41ms | 99.20ms | 1.58s | 177.34ms | 1.95s (fail) | 168.54ms | 167.85ms | 2.09s | 140.22ms (fail) |
| diamond | 239.13ms | 222.18ms | 2.48s | 279.41ms | 2.70s (fail) | 289.10ms | 351.93ms | 3.57s | 189.86ms (fail) |
| mux | 379.11ms | 352.40ms | 1.85s | 399.30ms | 552.58ms (fail) | 410.77ms | 441.41ms | 2.09s | 191.62ms (fail) |
| repeatedObservers | 46.99ms | 50.24ms | 234.18ms | 40.01ms | 381.63ms (fail) | 44.90ms | 81.37ms | 226.39ms | 52.65ms (fail) |
| triangle | 87.05ms | 78.21ms | 778.59ms | 98.83ms | 969.65ms (fail) | 103.92ms | 118.14ms | 1.17s | 76.34ms (fail) |
| unstable | 60.85ms | 70.08ms | 356.56ms | 70.16ms | 607.38ms (fail) | 79.94ms | 100.21ms | 357.20ms | 335.33ms (fail) |
| molBench | 493.99ms | 490.67ms | 571.61ms | 488.97ms | 11.68ms | 486.06ms | 492.27ms | 1.72s | 929μs |
| create_signals | 7.76ms | 25.70ms | 88.96ms | 5.40ms | 27.23ms | 26.16ms | 74.30ms | 88.72ms | 65.41ms |
| comp_0to1 | 22.33ms | 10.77ms | 16.24ms | 17.36ms | 17.37ms | 11.75ms | 27.84ms | 34.02ms | 61.99ms |
| comp_1to1 | 11.74ms | 18.96ms | 44.34ms | 14.62ms | 21.73ms | 20.77ms | 39.38ms | 43.63ms | 55.23ms |
| comp_2to1 | 16.92ms | 15.80ms | 35.22ms | 19.56ms | 37.50ms | 15.61ms | 25.82ms | 43.93ms | 36.74ms |
| comp_4to1 | 1.87ms | 4.04ms | 13.08ms | 13.94ms | 2.62ms | 8.01ms | 13.53ms | 37.68ms | 16.24ms |
| comp_1000to1 | 3μs | 4μs | 16μs | 4μs | 4μs | 5μs | 20μs | 2.99ms | 41μs |
| comp_1to2 | 15.49ms | 9.94ms | 35.69ms | 17.68ms | 12.08ms | 14.40ms | 40.38ms | 32.63ms | 45.17ms |
| comp_1to4 | 9.95ms | 14.17ms | 23.22ms | 42.10ms | 23.72ms | 10.86ms | 22.21ms | 28.23ms | 43.66ms |
| comp_1to8 | 6.70ms | 6.65ms | 24.40ms | 5.61ms | 5.22ms | 11.42ms | 23.82ms | 22.98ms | 42.19ms |
| comp_1to1000 | 6.99ms | 3.62ms | 16.34ms | 4.75ms | 4.10ms | 9.55ms | 17.03ms | 18.16ms | 38.28ms |
| update_1to1 | 4.56ms | 5.50ms | 23.98ms | 8.63ms | 87.49ms | 9.06ms | 15.96ms | 43.16ms | 5.70ms |
| update_2to1 | 2.37ms | 2.74ms | 12.19ms | 4.23ms | 44.08ms | 4.48ms | 7.85ms | 21.45ms | 2.94ms |
| update_4to1 | 1.12ms | 1.40ms | 6.83ms | 2.13ms | 20.94ms | 2.26ms | 4.11ms | 10.82ms | 1.48ms |
| update_1000to1 | 11μs | 13μs | 70μs | 21μs | 178μs | 22μs | 40μs | 119μs | 14μs |
| update_1to2 | 2.37ms | 2.69ms | 12.38ms | 4.67ms | 44.15ms | 4.54ms | 8.01ms | 21.13ms | 2.85ms |
| update_1to4 | 1.25ms | 1.40ms | 5.76ms | 2.20ms | 20.87ms | 2.24ms | 4.00ms | 10.78ms | 1.46ms |
| update_1to1000 | 31μs | 34μs | 185μs | 154μs | 95μs | 43μs | 173μs | 217μs | 384μs |
| cellx1000 | 7.45ms | 28.02ms | 81.32ms | 10.16ms | N/A | 9.73ms | 11.85ms | 163.84ms | 5.97ms |
| cellx2500 | 23.06ms | 126.95ms | 275.16ms | 34.26ms | N/A | 32.24ms | 34.65ms | 484.96ms | 31.77ms |
| cellx5000 | 50.46ms | 411.13ms | 575.70ms | 95.59ms | N/A | 67.28ms | 76.82ms | 1.16s | 78.68ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.48ms | 238.79ms | 2.06s | 438.80ms | 2.17s | 531.71ms | 353.84ms | 2.68s (partial) | 250.60ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.06ms | 187.55ms | 1.52s | 278.85ms | 1.45s (partial) | 287.84ms | 269.14ms | 2.36s (partial) | 200.96ms |
| 1000x12 - 4 sources - dynamic (large) | 306.42ms | 359.53ms | 1.83s | 3.71s | 2.42s (partial) | 3.83s | 459.85ms | 4.16s (partial) | 348.77ms |
| 1000x5 - 25 sources (wide dense) | 457.27ms | 617.03ms | 3.49s | 2.68s | 4.12s | 3.58s | 586.69ms | 5.08s (partial) | 499.65ms |
| 5x500 - 3 sources (deep) | 204.54ms | 197.69ms | 1.13s | 229.65ms | 1.33s | 237.85ms | 250.50ms | 2.00s (partial) | 206.24ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.28ms | 281.58ms | 1.71s | 450.09ms | 1.72s (partial) | 503.05ms | 377.57ms | 2.78s (partial) | 262.20ms |

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
