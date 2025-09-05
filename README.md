# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.51s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.43s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.91s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 159.08ms | 2.38s | 200.40ms | 1.51s | 213.70ms | 263.34ms | 164.21ms (fail) |
| broadPropagation | 322.58ms | 4.44s | 464.99ms | 91.15ms (fail) | 463.08ms | 454.86ms | 6.31ms (fail) |
| deepPropagation | 98.60ms | 1.52s | 178.68ms | 2.10s (fail) | 169.83ms | 141.74ms | 144.36ms (fail) |
| diamond | 227.22ms | 2.42s | 278.98ms | 3.04s (fail) | 282.14ms | 318.72ms | 206.50ms (fail) |
| mux | 338.32ms | 1.82s | 390.96ms | 585.80ms (fail) | 410.36ms | 393.96ms | 195.18ms (fail) |
| repeatedObservers | 50.32ms | 234.74ms | 40.89ms | 407.68ms (fail) | 47.01ms | 91.95ms | 52.62ms (fail) |
| triangle | 79.15ms | 762.72ms | 98.25ms | 967.01ms (fail) | 99.70ms | 114.95ms | 77.50ms (fail) |
| unstable | 140.37ms | 349.59ms | 73.80ms | 661.01ms (fail) | 76.08ms | 168.90ms | 341.59ms (fail) |
| molBench | 487.84ms | 583.26ms | 485.35ms | 11.98ms | 487.31ms | 501.80ms | 944μs |
| create_signals | 26.73ms | 57.53ms | 5.41ms | 24.77ms | 25.54ms | 56.84ms | 62.45ms |
| comp_0to1 | 11.01ms | 18.91ms | 17.42ms | 15.31ms | 11.78ms | 24.38ms | 55.01ms |
| comp_1to1 | 17.06ms | 25.05ms | 13.09ms | 23.60ms | 28.07ms | 52.10ms | 56.90ms |
| comp_2to1 | 12.32ms | 9.05ms | 17.45ms | 29.33ms | 13.21ms | 21.93ms | 37.42ms |
| comp_4to1 | 1.68ms | 17.04ms | 12.57ms | 7.51ms | 6.53ms | 4.34ms | 17.20ms |
| comp_1000to1 | 4μs | 33μs | 6μs | 4μs | 8μs | 15μs | 44μs |
| comp_1to2 | 12.38ms | 37.41ms | 22.41ms | 11.85ms | 20.98ms | 35.79ms | 47.38ms |
| comp_1to4 | 21.51ms | 22.79ms | 25.35ms | 27.61ms | 12.63ms | 21.78ms | 45.98ms |
| comp_1to8 | 7.28ms | 25.21ms | 6.01ms | 8.70ms | 7.04ms | 19.23ms | 46.49ms |
| comp_1to1000 | 9.15ms | 15.45ms | 7.04ms | 4.79ms | 5.11ms | 14.38ms | 40.90ms |
| update_1to1 | 5.59ms | 27.80ms | 8.38ms | 83.78ms | 10.23ms | 16.75ms | 6.10ms |
| update_2to1 | 2.81ms | 14.55ms | 4.41ms | 43.07ms | 4.56ms | 8.39ms | 3.08ms |
| update_4to1 | 1.53ms | 7.42ms | 2.12ms | 20.61ms | 2.54ms | 4.49ms | 1.53ms |
| update_1000to1 | 21μs | 86μs | 20μs | 186μs | 25μs | 42μs | 15μs |
| update_1to2 | 4.66ms | 13.75ms | 4.37ms | 43.08ms | 4.51ms | 8.53ms | 3.03ms |
| update_1to4 | 1.50ms | 7.22ms | 2.11ms | 20.36ms | 2.53ms | 4.19ms | 1.54ms |
| update_1to1000 | 58μs | 174μs | 932μs | 115μs | 42μs | 144μs | 404μs |
| cellx1000 | 7.29ms | 71.58ms | 9.91ms | N/A | 10.23ms | 10.33ms | 5.83ms |
| cellx2500 | 20.21ms | 258.05ms | 27.12ms | N/A | 26.47ms | 33.67ms | 23.68ms |
| cellx5000 | 47.93ms | 578.91ms | 69.24ms | N/A | 67.39ms | 91.34ms | 59.03ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.75ms | 2.02s | 518.15ms | 2.38s | 507.47ms | 327.08ms | 238.93ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 201.58ms | 1.53s | 303.40ms | 1.56s (partial) | 279.70ms | 219.74ms | 196.45ms |
| 1000x12 - 4 sources - dynamic (large) | 349.29ms | 1.86s | 3.74s | 2.70s (partial) | 3.77s | 434.21ms | 352.57ms |
| 1000x5 - 25 sources (wide dense) | 494.00ms | 3.46s | 2.76s | 4.19s | 3.43s | 794.55ms | 510.59ms |
| 5x500 - 3 sources (deep) | 198.93ms | 1.13s | 247.45ms | 1.51s | 220.21ms | 227.32ms | 204.32ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 282.40ms | 1.71s | 472.94ms | 1.84s (partial) | 474.53ms | 340.38ms | 259.79ms |

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
