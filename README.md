# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.50s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.10s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.31s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.37s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.62s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.62s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.39s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 138.49ms | 2.43s | 199.83ms | 1.42s | 212.18ms | 236.69ms | 169.21ms (fail) |
| broadPropagation | 267.49ms | 4.36s | 459.37ms | 80.56ms (fail) | 467.19ms | 446.96ms | 6.69ms (fail) |
| deepPropagation | 80.40ms | 1.55s | 180.08ms | 1.89s (fail) | 172.73ms | 131.02ms | 149.55ms (fail) |
| diamond | 189.04ms | 2.43s | 281.71ms | 2.60s (fail) | 283.39ms | 312.89ms | 225.06ms (fail) |
| mux | 326.83ms | 1.85s | 390.87ms | 566.10ms (fail) | 412.13ms | 393.53ms | 190.44ms (fail) |
| repeatedObservers | 49.40ms | 242.66ms | 39.95ms | 396.95ms (fail) | 46.45ms | 88.51ms | 52.66ms (fail) |
| triangle | 67.83ms | 772.18ms | 99.11ms | 960.01ms (fail) | 100.96ms | 94.53ms | 81.86ms (fail) |
| unstable | 62.49ms | 360.13ms | 74.27ms | 649.13ms (fail) | 76.54ms | 102.98ms | 375.41ms (fail) |
| molBench | 482.95ms | 586.60ms | 488.80ms | 11.35ms | 485.65ms | 498.23ms | 986μs |
| create_signals | 25.51ms | 69.01ms | 5.13ms | 24.61ms | 25.12ms | 80.33ms | 61.27ms |
| comp_0to1 | 8.08ms | 28.03ms | 18.03ms | 14.34ms | 12.04ms | 26.91ms | 55.55ms |
| comp_1to1 | 12.97ms | 40.99ms | 14.66ms | 21.47ms | 24.66ms | 29.81ms | 57.73ms |
| comp_2to1 | 8.53ms | 34.79ms | 20.14ms | 32.25ms | 18.87ms | 32.72ms | 38.02ms |
| comp_4to1 | 8.22ms | 21.88ms | 11.03ms | 10.43ms | 6.51ms | 4.32ms | 16.64ms |
| comp_1000to1 | 5μs | 16μs | 8μs | 9μs | 8μs | 19μs | 56μs |
| comp_1to2 | 13.74ms | 34.82ms | 22.95ms | 13.49ms | 20.43ms | 37.87ms | 47.70ms |
| comp_1to4 | 16.68ms | 17.52ms | 17.97ms | 21.92ms | 13.38ms | 21.76ms | 45.75ms |
| comp_1to8 | 6.12ms | 20.95ms | 5.54ms | 5.39ms | 6.97ms | 18.89ms | 45.45ms |
| comp_1to1000 | 3.37ms | 15.34ms | 4.88ms | 4.75ms | 4.49ms | 13.65ms | 41.05ms |
| update_1to1 | 5.28ms | 26.27ms | 8.53ms | 82.26ms | 10.14ms | 14.69ms | 6.03ms |
| update_2to1 | 5.86ms | 12.64ms | 4.41ms | 41.76ms | 4.51ms | 7.17ms | 3.08ms |
| update_4to1 | 1.38ms | 6.53ms | 2.08ms | 20.20ms | 2.53ms | 3.59ms | 1.53ms |
| update_1000to1 | 39μs | 61μs | 20μs | 189μs | 35μs | 36μs | 15μs |
| update_1to2 | 2.64ms | 12.43ms | 4.06ms | 40.17ms | 4.54ms | 7.47ms | 3.02ms |
| update_1to4 | 1.46ms | 6.44ms | 2.10ms | 19.54ms | 2.57ms | 3.58ms | 1.53ms |
| update_1to1000 | 45μs | 173μs | 52μs | 104μs | 43μs | 150μs | 425μs |
| cellx1000 | 6.54ms | 74.80ms | 9.63ms | N/A | 9.82ms | 9.87ms | 5.32ms |
| cellx2500 | 18.95ms | 252.50ms | 27.75ms | N/A | 33.55ms | 32.65ms | 23.79ms |
| cellx5000 | 57.91ms | 575.99ms | 77.02ms | N/A | 73.68ms | 89.59ms | 63.02ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.65ms | 2.00s | 447.15ms | 2.14s | 510.43ms | 328.95ms | 277.73ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.15ms | 1.53s | 273.64ms | 1.47s (partial) | 279.10ms | 218.44ms | 214.09ms |
| 1000x12 - 4 sources - dynamic (large) | 292.94ms | 1.91s | 3.72s | 2.66s (partial) | 3.93s | 439.55ms | 360.46ms |
| 1000x5 - 25 sources (wide dense) | 548.98ms | 3.50s | 2.72s | 4.03s | 3.42s | 811.17ms | 515.99ms |
| 5x500 - 3 sources (deep) | 181.01ms | 1.14s | 228.76ms | 1.39s | 223.20ms | 226.26ms | 213.25ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 245.91ms | 1.72s | 459.38ms | 1.77s (partial) | 473.75ms | 337.05ms | 270.16ms |

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
