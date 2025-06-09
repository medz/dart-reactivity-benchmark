# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.77s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.29s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.24s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.48s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.54s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.39s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.45s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 173.83ms | 162.97ms | 2.34s | 199.94ms | 1.37s | 207.37ms | 270.18ms | 2.19s | 167.85ms (fail) |
| broadPropagation | 375.01ms | 317.51ms | 4.40s | 500.83ms | 81.84ms (fail) | 454.59ms | 507.10ms | 5.71s | 6.68ms (fail) |
| deepPropagation | 127.29ms | 98.05ms | 1.55s | 179.08ms | 1.94s (fail) | 177.55ms | 166.56ms | 2.07s | 144.03ms (fail) |
| diamond | 238.75ms | 215.24ms | 2.45s | 295.15ms | 2.63s (fail) | 279.62ms | 349.89ms | 3.55s | 186.49ms (fail) |
| mux | 378.36ms | 348.53ms | 1.87s | 401.43ms | 554.82ms (fail) | 452.18ms | 438.21ms | 2.09s | 193.33ms (fail) |
| repeatedObservers | 47.17ms | 50.69ms | 231.19ms | 38.91ms | 370.13ms (fail) | 44.74ms | 81.12ms | 221.90ms | 54.62ms (fail) |
| triangle | 87.23ms | 80.60ms | 768.26ms | 106.58ms | 844.54ms (fail) | 102.34ms | 117.01ms | 1.17s | 80.05ms (fail) |
| unstable | 61.27ms | 70.11ms | 352.69ms | 68.75ms | 608.13ms (fail) | 79.42ms | 97.25ms | 355.17ms | 337.15ms (fail) |
| molBench | 493.45ms | 491.68ms | 575.61ms | 488.46ms | 11.26ms | 486.51ms | 492.61ms | 1.72s | 927μs |
| create_signals | 7.69ms | 27.19ms | 81.62ms | 17.01ms | 24.28ms | 25.89ms | 58.09ms | 84.85ms | 59.52ms |
| comp_0to1 | 23.46ms | 11.05ms | 30.16ms | 37.58ms | 13.66ms | 11.31ms | 27.22ms | 41.20ms | 61.74ms |
| comp_1to1 | 20.75ms | 22.30ms | 39.71ms | 6.98ms | 22.50ms | 18.13ms | 41.26ms | 44.25ms | 55.21ms |
| comp_2to1 | 13.85ms | 15.35ms | 22.37ms | 11.60ms | 24.08ms | 8.90ms | 29.94ms | 25.39ms | 35.83ms |
| comp_4to1 | 1.61ms | 3.73ms | 17.11ms | 11.56ms | 5.52ms | 3.08ms | 5.36ms | 27.33ms | 16.24ms |
| comp_1000to1 | 4μs | 4μs | 16μs | 9μs | 3μs | 4μs | 17μs | 2.81ms | 42μs |
| comp_1to2 | 11.24ms | 23.72ms | 34.97ms | 20.67ms | 11.78ms | 13.04ms | 37.05ms | 40.57ms | 44.79ms |
| comp_1to4 | 8.19ms | 11.96ms | 18.17ms | 28.19ms | 25.29ms | 12.06ms | 22.34ms | 29.13ms | 43.58ms |
| comp_1to8 | 3.95ms | 5.37ms | 20.97ms | 5.56ms | 4.88ms | 6.99ms | 25.21ms | 23.71ms | 42.80ms |
| comp_1to1000 | 3.31ms | 3.64ms | 15.79ms | 5.52ms | 4.28ms | 4.26ms | 17.28ms | 18.21ms | 38.39ms |
| update_1to1 | 4.50ms | 5.43ms | 26.14ms | 8.93ms | 85.98ms | 8.94ms | 15.98ms | 43.26ms | 5.67ms |
| update_2to1 | 2.41ms | 2.77ms | 12.54ms | 4.26ms | 43.59ms | 4.47ms | 7.80ms | 21.41ms | 2.83ms |
| update_4to1 | 1.19ms | 1.42ms | 6.71ms | 2.23ms | 20.61ms | 2.26ms | 4.01ms | 10.81ms | 1.44ms |
| update_1000to1 | 11μs | 24μs | 71μs | 21μs | 178μs | 22μs | 40μs | 118μs | 15μs |
| update_1to2 | 2.32ms | 2.72ms | 13.25ms | 4.68ms | 43.03ms | 4.47ms | 8.03ms | 21.15ms | 2.84ms |
| update_1to4 | 1.19ms | 1.44ms | 5.92ms | 2.18ms | 21.00ms | 2.27ms | 4.00ms | 10.82ms | 1.43ms |
| update_1to1000 | 37μs | 58μs | 184μs | 915μs | 138μs | 41μs | 173μs | 209μs | 376μs |
| cellx1000 | 7.20ms | 29.95ms | 69.38ms | 9.69ms | N/A | 9.71ms | 12.13ms | 161.66ms | 5.35ms |
| cellx2500 | 22.32ms | 126.60ms | 247.92ms | 25.84ms | N/A | 31.78ms | 32.84ms | 467.44ms | 23.15ms |
| cellx5000 | 44.36ms | 405.06ms | 568.04ms | 67.06ms | N/A | 62.74ms | 74.42ms | 1.11s | 59.28ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.34ms | 233.49ms | 2.04s | 442.17ms | 2.22s | 527.58ms | 359.42ms | 2.74s (partial) | 246.33ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.69ms | 197.07ms | 1.52s | 273.03ms | 1.45s (partial) | 298.06ms | 250.55ms | 2.40s (partial) | 200.61ms |
| 1000x12 - 4 sources - dynamic (large) | 297.73ms | 340.27ms | 1.88s | 3.77s | 2.51s (partial) | 3.75s | 463.14ms | 4.10s (partial) | 336.32ms |
| 1000x5 - 25 sources (wide dense) | 442.18ms | 490.88ms | 3.54s | 2.75s | 4.35s | 3.41s | 582.46ms | 5.13s (partial) | 501.76ms |
| 5x500 - 3 sources (deep) | 202.09ms | 198.01ms | 1.13s | 227.78ms | 1.36s | 228.22ms | 260.02ms | 2.02s (partial) | 206.46ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.27ms | 290.64ms | 1.66s | 467.13ms | 1.74s (partial) | 493.01ms | 381.38ms | 2.80s (partial) | 259.13ms |

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
