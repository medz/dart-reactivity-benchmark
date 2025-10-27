# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.59s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.16s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.57s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.27s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.44s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.55s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.34s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.99ms | 2.36s | 200.47ms | 1.48s | 211.21ms | 239.69ms | 164.48ms (fail) |
| broadPropagation | 266.10ms | 4.54s | 460.78ms | 85.55ms (fail) | 467.34ms | 433.28ms | 6.51ms (fail) |
| deepPropagation | 80.53ms | 1.56s | 177.52ms | 1.96s (fail) | 179.98ms | 129.60ms | 144.34ms (fail) |
| diamond | 180.70ms | 2.44s | 280.69ms | 2.67s (fail) | 282.98ms | 307.86ms | 186.91ms (fail) |
| mux | 337.85ms | 1.85s | 401.92ms | 584.61ms (fail) | 416.89ms | 401.44ms | 194.02ms (fail) |
| repeatedObservers | 49.13ms | 239.80ms | 40.69ms | 404.37ms (fail) | 46.08ms | 88.44ms | 52.73ms (fail) |
| triangle | 67.70ms | 793.63ms | 98.82ms | 936.02ms (fail) | 102.30ms | 93.70ms | 79.29ms (fail) |
| unstable | 61.97ms | 352.05ms | 74.52ms | 646.60ms (fail) | 75.53ms | 101.63ms | 343.00ms (fail) |
| molBench | 486.36ms | 587.56ms | 486.20ms | 11.99ms | 485.62ms | 498.47ms | 1.03ms |
| create_signals | 28.59ms | 84.79ms | 5.48ms | 25.33ms | 26.98ms | 54.58ms | 67.86ms |
| comp_0to1 | 8.57ms | 22.03ms | 18.59ms | 14.43ms | 12.21ms | 24.08ms | 60.64ms |
| comp_1to1 | 13.41ms | 32.60ms | 14.97ms | 25.07ms | 30.10ms | 51.13ms | 58.63ms |
| comp_2to1 | 2.52ms | 23.12ms | 18.04ms | 25.92ms | 14.20ms | 21.39ms | 39.40ms |
| comp_4to1 | 5.57ms | 29.30ms | 14.04ms | 7.24ms | 4.42ms | 9.45ms | 17.59ms |
| comp_1000to1 | 3μs | 17μs | 4μs | 4μs | 6μs | 15μs | 45μs |
| comp_1to2 | 16.16ms | 40.44ms | 33.11ms | 11.06ms | 22.95ms | 35.71ms | 48.91ms |
| comp_1to4 | 21.12ms | 27.16ms | 13.16ms | 27.51ms | 12.55ms | 15.02ms | 46.95ms |
| comp_1to8 | 5.95ms | 26.90ms | 8.33ms | 6.01ms | 7.18ms | 21.01ms | 45.97ms |
| comp_1to1000 | 3.56ms | 15.66ms | 5.28ms | 5.27ms | 4.37ms | 14.24ms | 41.52ms |
| update_1to1 | 5.28ms | 26.50ms | 8.28ms | 84.31ms | 10.11ms | 14.74ms | 6.01ms |
| update_2to1 | 5.61ms | 14.30ms | 4.40ms | 43.00ms | 4.51ms | 7.18ms | 3.09ms |
| update_4to1 | 1.37ms | 7.14ms | 2.14ms | 21.26ms | 2.56ms | 3.64ms | 1.56ms |
| update_1000to1 | 13μs | 73μs | 21μs | 223μs | 25μs | 36μs | 15μs |
| update_1to2 | 2.68ms | 13.13ms | 4.08ms | 43.27ms | 4.53ms | 7.49ms | 3.07ms |
| update_1to4 | 1.93ms | 6.58ms | 2.21ms | 22.00ms | 3.13ms | 3.61ms | 1.56ms |
| update_1to1000 | 48μs | 176μs | 64μs | 167μs | 45μs | 147μs | 409μs |
| cellx1000 | 6.60ms | 93.68ms | 11.13ms | N/A | 10.87ms | 12.97ms | 7.18ms |
| cellx2500 | 29.43ms | 302.67ms | 48.22ms | N/A | 44.85ms | 47.60ms | 36.73ms |
| cellx5000 | 113.67ms | 650.51ms | 132.74ms | N/A | 96.84ms | 141.83ms | 88.28ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.69ms | 2.08s | 446.04ms | 2.30s | 512.61ms | 313.43ms | 259.70ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 160.05ms | 1.57s | 276.84ms | 1.55s (partial) | 280.10ms | 218.78ms | 199.90ms |
| 1000x12 - 4 sources - dynamic (large) | 292.05ms | 2.04s | 3.83s | 2.50s (partial) | 3.71s | 467.41ms | 351.51ms |
| 1000x5 - 25 sources (wide dense) | 560.35ms | 3.62s | 2.74s | 4.43s | 3.47s | 811.35ms | 517.58ms |
| 5x500 - 3 sources (deep) | 179.04ms | 1.20s | 236.62ms | 1.60s | 222.03ms | 232.97ms | 206.40ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 256.05ms | 1.79s | 468.91ms | 1.83s (partial) | 488.27ms | 337.45ms | 264.71ms |

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
