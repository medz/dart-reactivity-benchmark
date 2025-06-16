# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.83s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.43s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.40s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.24s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.92s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.65s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.40s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.37ms | 162.41ms | 2.42s | 197.30ms | 1.42s | 208.88ms | 283.85ms | 2.17s | 152.33ms (fail) |
| broadPropagation | 371.56ms | 319.65ms | 4.40s | 449.60ms | 86.83ms (fail) | 453.18ms | 507.97ms | 5.55s | 7.30ms (fail) |
| deepPropagation | 128.52ms | 99.04ms | 1.57s | 174.44ms | 2.06s (fail) | 174.10ms | 170.83ms | 1.98s | 142.64ms (fail) |
| diamond | 237.61ms | 213.07ms | 2.53s | 284.19ms | 2.86s (fail) | 288.53ms | 354.49ms | 3.44s | 182.65ms (fail) |
| mux | 385.27ms | 344.50ms | 1.87s | 402.61ms | 618.93ms (fail) | 453.38ms | 465.94ms | 2.05s | 195.32ms (fail) |
| repeatedObservers | 47.16ms | 50.25ms | 251.78ms | 40.34ms | 476.14ms (fail) | 44.74ms | 81.58ms | 218.44ms | 52.44ms (fail) |
| triangle | 88.74ms | 79.20ms | 796.05ms | 105.32ms | 999.10ms (fail) | 101.13ms | 118.61ms | 1.11s | 82.82ms (fail) |
| unstable | 61.87ms | 69.92ms | 360.87ms | 69.83ms | 765.88ms (fail) | 79.36ms | 99.00ms | 362.16ms | 337.51ms (fail) |
| molBench | 494.27ms | 491.42ms | 575.86ms | 485.72ms | 11.13ms | 487.16ms | 492.93ms | 1.71s | 928μs |
| create_signals | 7.39ms | 27.57ms | 59.35ms | 5.21ms | 23.79ms | 26.29ms | 88.79ms | 55.68ms | 59.69ms |
| comp_0to1 | 22.54ms | 11.21ms | 20.00ms | 17.38ms | 13.88ms | 11.83ms | 50.66ms | 23.43ms | 52.80ms |
| comp_1to1 | 19.20ms | 27.86ms | 32.68ms | 12.43ms | 21.35ms | 28.46ms | 47.76ms | 39.84ms | 56.24ms |
| comp_2to1 | 20.82ms | 15.38ms | 15.32ms | 17.18ms | 31.08ms | 11.36ms | 42.85ms | 25.80ms | 37.31ms |
| comp_4to1 | 2.17ms | 4.27ms | 14.58ms | 9.24ms | 9.23ms | 1.92ms | 5.05ms | 25.08ms | 16.57ms |
| comp_1000to1 | 3μs | 4μs | 23μs | 16μs | 6μs | 7μs | 17μs | 2.92ms | 42μs |
| comp_1to2 | 11.40ms | 10.18ms | 38.08ms | 29.01ms | 13.01ms | 21.58ms | 33.73ms | 21.45ms | 45.50ms |
| comp_1to4 | 4.73ms | 14.15ms | 25.18ms | 25.73ms | 23.29ms | 13.77ms | 23.24ms | 24.83ms | 44.17ms |
| comp_1to8 | 7.97ms | 7.06ms | 22.79ms | 6.09ms | 6.43ms | 6.12ms | 25.67ms | 23.36ms | 42.46ms |
| comp_1to1000 | 3.40ms | 3.92ms | 16.22ms | 5.65ms | 5.95ms | 4.20ms | 16.96ms | 18.93ms | 38.50ms |
| update_1to1 | 4.52ms | 5.54ms | 25.39ms | 8.70ms | 89.41ms | 8.89ms | 15.64ms | 43.32ms | 5.66ms |
| update_2to1 | 2.34ms | 4.26ms | 12.77ms | 4.36ms | 41.88ms | 4.48ms | 7.69ms | 21.35ms | 2.87ms |
| update_4to1 | 1.18ms | 2.61ms | 6.69ms | 2.22ms | 21.35ms | 2.31ms | 3.91ms | 11.09ms | 1.47ms |
| update_1000to1 | 11μs | 25μs | 69μs | 21μs | 176μs | 22μs | 51μs | 119μs | 15μs |
| update_1to2 | 2.35ms | 5.17ms | 12.66ms | 4.59ms | 42.04ms | 4.49ms | 7.81ms | 21.15ms | 4.85ms |
| update_1to4 | 1.20ms | 2.64ms | 6.21ms | 2.19ms | 20.47ms | 2.28ms | 3.93ms | 10.75ms | 1.51ms |
| update_1to1000 | 45μs | 61μs | 173μs | 888μs | 92μs | 43μs | 170μs | 219μs | 377μs |
| cellx1000 | 7.44ms | 30.49ms | 78.42ms | 9.77ms | N/A | 9.69ms | 14.49ms | 156.56ms | 5.80ms |
| cellx2500 | 24.03ms | 124.08ms | 268.51ms | 27.00ms | N/A | 32.00ms | 34.86ms | 487.88ms | 24.83ms |
| cellx5000 | 58.91ms | 402.18ms | 553.00ms | 80.91ms | N/A | 74.52ms | 90.84ms | 1.13s | 59.76ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.38ms | 238.23ms | 2.03s | 435.67ms | 2.48s | 527.09ms | 364.02ms | 2.59s (partial) | 240.41ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.75ms | 183.39ms | 1.53s | 273.38ms | 1.69s (partial) | 281.76ms | 246.88ms | 2.33s (partial) | 199.10ms |
| 1000x12 - 4 sources - dynamic (large) | 303.80ms | 353.07ms | 1.94s | 3.69s | 2.70s (partial) | 3.79s | 470.19ms | 4.01s (partial) | 340.08ms |
| 1000x5 - 25 sources (wide dense) | 452.13ms | 634.95ms | 3.60s | 2.72s | 4.67s | 3.39s | 588.56ms | 5.05s (partial) | 498.68ms |
| 5x500 - 3 sources (deep) | 207.34ms | 199.70ms | 1.15s | 230.61ms | 1.50s | 224.04ms | 255.63ms | 1.94s (partial) | 204.88ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.08ms | 288.18ms | 1.68s | 452.25ms | 1.94s (partial) | 475.77ms | 388.71ms | 2.75s (partial) | 256.68ms |

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
