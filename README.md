# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.00s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.49s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.18s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.76s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.01s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 213.30ms | 2.32s | 200.52ms | 1.38s | 211.00ms | 295.04ms | 158.46ms (fail) |
| broadPropagation | 389.72ms | 4.41s | 447.37ms | 80.89ms (fail) | 450.58ms | 523.49ms | 5.85ms (fail) |
| deepPropagation | 96.97ms | 1.56s | 180.87ms | 1.93s (fail) | 170.54ms | 173.36ms | 142.14ms (fail) |
| diamond | 224.61ms | 2.41s | 278.31ms | 2.53s (fail) | 279.40ms | 353.51ms | 189.59ms (fail) |
| mux | 407.00ms | 1.88s | 404.23ms | 568.24ms (fail) | 406.10ms | 441.93ms | 194.68ms (fail) |
| repeatedObservers | 48.90ms | 230.95ms | 39.73ms | 398.28ms (fail) | 45.09ms | 86.69ms | 52.67ms (fail) |
| triangle | 80.80ms | 771.73ms | 99.05ms | 881.24ms (fail) | 101.48ms | 116.12ms | 75.21ms (fail) |
| unstable | 65.88ms | 350.50ms | 70.45ms | 606.93ms (fail) | 79.68ms | 102.14ms | 339.47ms (fail) |
| molBench | 485.11ms | 576.44ms | 390.62ms | 10.90ms | 485.26ms | 500.79ms | 940μs |
| create_signals | 28.00ms | 70.70ms | 5.11ms | 24.20ms | 26.17ms | 48.41ms | 64.34ms |
| comp_0to1 | 10.89ms | 28.56ms | 16.98ms | 15.44ms | 11.16ms | 46.31ms | 53.93ms |
| comp_1to1 | 30.77ms | 38.88ms | 11.05ms | 30.91ms | 23.70ms | 38.23ms | 55.20ms |
| comp_2to1 | 19.91ms | 23.97ms | 18.02ms | 34.53ms | 8.15ms | 9.60ms | 37.21ms |
| comp_4to1 | 1.82ms | 21.79ms | 9.53ms | 9.57ms | 9.71ms | 12.48ms | 16.25ms |
| comp_1000to1 | 6μs | 17μs | 4μs | 9μs | 5μs | 19μs | 40μs |
| comp_1to2 | 12.64ms | 36.84ms | 30.68ms | 13.79ms | 14.65ms | 34.57ms | 44.84ms |
| comp_1to4 | 13.34ms | 19.59ms | 20.13ms | 23.83ms | 6.73ms | 25.49ms | 43.39ms |
| comp_1to8 | 6.99ms | 24.46ms | 12.34ms | 10.23ms | 6.20ms | 29.29ms | 42.28ms |
| comp_1to1000 | 3.55ms | 16.27ms | 10.00ms | 6.41ms | 4.20ms | 15.65ms | 38.56ms |
| update_1to1 | 5.00ms | 25.32ms | 8.62ms | 87.79ms | 8.99ms | 15.54ms | 5.75ms |
| update_2to1 | 2.59ms | 12.80ms | 4.42ms | 42.74ms | 4.51ms | 7.75ms | 2.89ms |
| update_4to1 | 1.66ms | 6.72ms | 2.21ms | 19.97ms | 2.27ms | 3.83ms | 1.49ms |
| update_1000to1 | 21μs | 71μs | 21μs | 216μs | 22μs | 38μs | 15μs |
| update_1to2 | 4.85ms | 12.32ms | 4.78ms | 42.88ms | 4.49ms | 7.70ms | 2.88ms |
| update_1to4 | 1.56ms | 6.09ms | 2.19ms | 20.69ms | 2.28ms | 3.83ms | 1.51ms |
| update_1to1000 | 51μs | 172μs | 1.85ms | 142μs | 43μs | 167μs | 377μs |
| cellx1000 | 10.69ms | 74.14ms | 9.88ms | N/A | 9.69ms | 12.22ms | 5.34ms |
| cellx2500 | 29.76ms | 264.56ms | 27.64ms | N/A | 32.50ms | 35.10ms | 24.70ms |
| cellx5000 | 78.35ms | 584.88ms | 69.90ms | N/A | 67.93ms | 89.09ms | 55.13ms |
| 10x5 - 2 sources - read 20.0% (simple) | 221.95ms | 2.04s | 445.00ms | 2.22s | 517.81ms | 363.20ms | 235.72ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.32ms | 1.55s | 272.86ms | 1.41s (partial) | 286.16ms | 244.30ms | 197.65ms |
| 1000x12 - 4 sources - dynamic (large) | 319.74ms | 1.97s | 3.70s | 2.50s (partial) | 3.74s | 473.82ms | 341.95ms |
| 1000x5 - 25 sources (wide dense) | 558.11ms | 3.57s | 2.72s | 4.01s | 3.44s | 728.01ms | 500.18ms |
| 5x500 - 3 sources (deep) | 193.60ms | 1.15s | 225.24ms | 1.36s | 224.00ms | 268.55ms | 204.52ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.49ms | 1.68s | 446.77ms | 1.73s (partial) | 475.64ms | 386.14ms | 253.19ms |

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
