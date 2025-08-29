# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.19s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.31s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.55s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.72s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.63s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 167.99ms | 2.32s | 199.53ms | 1.35s | 210.43ms | 258.97ms | 160.04ms (fail) |
| broadPropagation | 317.33ms | 4.52s | 466.61ms | 81.32ms (fail) | 454.36ms | 451.63ms | 6.91ms (fail) |
| deepPropagation | 98.05ms | 1.56s | 177.62ms | 1.94s (fail) | 174.58ms | 145.03ms | 143.99ms (fail) |
| diamond | 226.12ms | 2.45s | 280.10ms | 2.66s (fail) | 287.08ms | 330.20ms | 204.81ms (fail) |
| mux | 342.10ms | 1.86s | 388.31ms | 560.88ms (fail) | 409.24ms | 403.27ms | 197.66ms (fail) |
| repeatedObservers | 50.67ms | 228.69ms | 40.15ms | 387.03ms (fail) | 46.12ms | 90.65ms | 52.62ms (fail) |
| triangle | 77.69ms | 784.55ms | 100.08ms | 924.29ms (fail) | 104.98ms | 93.92ms | 80.67ms (fail) |
| unstable | 139.69ms | 340.10ms | 74.61ms | 622.59ms (fail) | 76.38ms | 165.73ms | 340.16ms (fail) |
| molBench | 487.92ms | 585.02ms | 487.29ms | 11.31ms | 485.27ms | 500.99ms | 995μs |
| create_signals | 26.44ms | 69.72ms | 5.13ms | 24.26ms | 25.34ms | 76.97ms | 67.35ms |
| comp_0to1 | 10.78ms | 28.41ms | 17.21ms | 13.62ms | 14.41ms | 33.01ms | 58.94ms |
| comp_1to1 | 23.07ms | 38.41ms | 10.91ms | 21.61ms | 27.39ms | 39.90ms | 58.72ms |
| comp_2to1 | 16.91ms | 21.61ms | 11.38ms | 24.96ms | 8.97ms | 11.07ms | 44.79ms |
| comp_4to1 | 3.53ms | 23.11ms | 10.72ms | 5.90ms | 1.98ms | 4.60ms | 19.02ms |
| comp_1000to1 | 9μs | 21μs | 9μs | 3μs | 4μs | 18μs | 45μs |
| comp_1to2 | 9.69ms | 30.22ms | 19.27ms | 11.52ms | 23.54ms | 40.62ms | 48.03ms |
| comp_1to4 | 25.43ms | 25.04ms | 32.52ms | 22.71ms | 9.56ms | 21.29ms | 46.37ms |
| comp_1to8 | 11.68ms | 24.50ms | 6.53ms | 4.93ms | 8.96ms | 19.07ms | 45.54ms |
| comp_1to1000 | 5.29ms | 15.74ms | 6.92ms | 4.29ms | 7.23ms | 14.43ms | 41.64ms |
| update_1to1 | 5.45ms | 27.86ms | 8.31ms | 81.50ms | 10.15ms | 16.82ms | 6.01ms |
| update_2to1 | 2.81ms | 13.76ms | 4.30ms | 40.47ms | 4.58ms | 8.44ms | 3.09ms |
| update_4to1 | 1.46ms | 7.41ms | 2.06ms | 19.31ms | 2.58ms | 4.20ms | 1.51ms |
| update_1000to1 | 24μs | 68μs | 20μs | 186μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.83ms | 12.20ms | 4.06ms | 40.56ms | 4.52ms | 8.55ms | 3.02ms |
| update_1to4 | 1.47ms | 7.16ms | 2.08ms | 19.84ms | 2.59ms | 4.20ms | 1.51ms |
| update_1to1000 | 51μs | 173μs | 739μs | 152μs | 44μs | 158μs | 439μs |
| cellx1000 | 7.29ms | 75.06ms | 9.81ms | N/A | 9.60ms | 10.05ms | 5.50ms |
| cellx2500 | 20.66ms | 265.08ms | 32.00ms | N/A | 36.20ms | 29.91ms | 25.38ms |
| cellx5000 | 54.87ms | 598.23ms | 93.40ms | N/A | 75.78ms | 72.16ms | 67.44ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.42ms | 2.04s | 448.95ms | 2.20s | 510.88ms | 333.64ms | 247.90ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.07ms | 1.49s | 273.65ms | 1.50s (partial) | 282.40ms | 217.31ms | 198.06ms |
| 1000x12 - 4 sources - dynamic (large) | 346.28ms | 1.89s | 3.68s | 2.57s (partial) | 3.99s | 429.64ms | 353.31ms |
| 1000x5 - 25 sources (wide dense) | 490.70ms | 3.48s | 2.72s | 4.29s | 3.54s | 792.86ms | 508.88ms |
| 5x500 - 3 sources (deep) | 199.21ms | 1.14s | 230.98ms | 1.41s | 219.58ms | 223.54ms | 206.75ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 289.20ms | 1.74s | 462.21ms | 1.80s (partial) | 484.04ms | 337.36ms | 260.33ms |

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
