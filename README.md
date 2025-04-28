# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.67s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.26s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.04s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.35s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.38s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.37s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.88s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.61ms | 2.31s | 199.72ms | 1.25s | 1.41s | 207.64ms | 273.48ms | 157.86ms (fail) |
| broadPropagation | 352.04ms | 4.32s | 450.60ms | 4.99s | 81.35ms (fail) | 458.62ms | 507.21ms | 5.98ms (fail) |
| deepPropagation | 124.19ms | 1.52s | 181.78ms | 4.00s | 1.93s (fail) | 177.28ms | 176.35ms | 141.25ms (fail) |
| diamond | 233.61ms | 2.44s | 283.40ms | 14.03s (fail) | 2.65s (fail) | 291.18ms | 348.04ms | 190.39ms (fail) |
| mux | 369.36ms | 1.83s | 381.86ms | 1.02s | 586.97ms (fail) | 404.92ms | 441.83ms | 193.45ms (fail) |
| repeatedObservers | 44.91ms | 225.75ms | 38.44ms | 9.74s | 390.68ms (fail) | 48.54ms | 79.22ms | 52.36ms (fail) |
| triangle | 86.48ms | 773.13ms | 99.34ms | 4.52s | 938.22ms (fail) | 114.18ms | 116.07ms | 78.37ms (fail) |
| unstable | 59.99ms | 355.47ms | 70.43ms | 7.64s | 649.96ms (fail) | 73.72ms | 94.30ms | 334.82ms (fail) |
| molBench | 490.30ms | 580.42ms | 490.30ms | 5.90s | 12.47ms | 485.13ms | 492.51ms | 1.05ms |
| create_signals | 28.79ms | 71.43ms | 5.56ms | 13.34ms | 23.62ms | 26.82ms | 73.13ms | 59.57ms |
| comp_0to1 | 7.05ms | 32.10ms | 18.11ms | 13.68ms | 13.68ms | 12.40ms | 27.47ms | 52.08ms |
| comp_1to1 | 4.31ms | 27.59ms | 11.80ms | 99.56ms | 20.45ms | 26.89ms | 47.94ms | 52.73ms |
| comp_2to1 | 2.34ms | 18.89ms | 18.19ms | 72.37ms | 23.93ms | 9.96ms | 24.82ms | 35.16ms |
| comp_4to1 | 8.60ms | 17.86ms | 3.44ms | 85.23ms | 6.97ms | 2.02ms | 13.76ms | 15.91ms |
| comp_1000to1 | 4μs | 16μs | 4μs | 59.32ms | 3μs | 5μs | 15μs | 42μs |
| comp_1to2 | 18.93ms | 38.28ms | 10.82ms | 66.89ms | 11.25ms | 18.83ms | 31.65ms | 44.49ms |
| comp_1to4 | 6.00ms | 22.47ms | 18.34ms | 99.18ms | 25.35ms | 13.45ms | 33.70ms | 43.66ms |
| comp_1to8 | 6.04ms | 24.31ms | 8.08ms | 116.37ms | 5.01ms | 6.98ms | 22.39ms | 42.34ms |
| comp_1to1000 | 3.32ms | 15.21ms | 4.51ms | 47.90ms | 4.30ms | 4.53ms | 15.23ms | 37.92ms |
| update_1to1 | 11.27ms | 23.84ms | 8.97ms | N/A | 87.48ms | 9.37ms | 16.31ms | 5.73ms |
| update_2to1 | 5.18ms | 10.72ms | 4.10ms | N/A | 45.05ms | 4.63ms | 7.97ms | 3.31ms |
| update_4to1 | 2.89ms | 6.25ms | 2.10ms | N/A | 21.00ms | 2.30ms | 4.01ms | 1.46ms |
| update_1000to1 | 12μs | 64μs | 20μs | N/A | 192μs | 23μs | 40μs | 14μs |
| update_1to2 | 4.39ms | 11.59ms | 4.17ms | N/A | 44.79ms | 4.87ms | 7.91ms | 2.96ms |
| update_1to4 | 2.46ms | 6.08ms | 2.08ms | N/A | 21.19ms | 2.29ms | 4.03ms | 1.46ms |
| update_1to1000 | 48μs | 180μs | 66μs | N/A | 95μs | 44μs | 150μs | 368μs |
| cellx1000 | 8.16ms | 67.08ms | 9.72ms | N/A | N/A | 9.48ms | 11.04ms | 5.14ms |
| cellx2500 | 18.88ms | 257.67ms | 26.48ms | N/A | N/A | 32.70ms | 32.02ms | 26.73ms |
| cellx5000 | 41.49ms | 563.81ms | 64.13ms | N/A | N/A | 63.01ms | 74.96ms | 61.41ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.73ms | 2.00s | 441.93ms | N/A | 2.25s | 502.98ms | 349.24ms | 235.62ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.97ms | 1.55s | 320.25ms | N/A | 1.48s (partial) | 281.40ms | 245.20ms | 197.54ms |
| 1000x12 - 4 sources - dynamic (large) | 281.84ms | 1.86s | 3.53s | N/A | 2.60s (partial) | 3.78s | 459.07ms | 338.44ms |
| 1000x5 - 25 sources (wide dense) | 401.93ms | 3.53s | 2.63s | N/A | 4.37s | 3.57s | 599.65ms | 486.88ms |
| 5x500 - 3 sources (deep) | 189.21ms | 1.14s | 230.19ms | N/A | 1.39s | 229.27ms | 251.92ms | 204.96ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.40ms | 1.73s | 471.96ms | N/A | 1.79s (partial) | 472.69ms | 381.89ms | 256.55ms |

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
