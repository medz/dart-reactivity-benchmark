# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.51s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.11s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.61s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.95s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.60s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.64s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.65ms | 2.30s | 199.27ms | 1.38s | 210.22ms | 234.20ms | 162.11ms (fail) |
| broadPropagation | 268.14ms | 4.45s | 467.44ms | 80.86ms (fail) | 470.51ms | 440.60ms | 6.82ms (fail) |
| deepPropagation | 80.62ms | 1.56s | 178.26ms | 1.95s (fail) | 178.68ms | 130.88ms | 147.57ms (fail) |
| diamond | 180.63ms | 2.39s | 279.18ms | 2.57s (fail) | 287.34ms | 322.36ms | 217.57ms (fail) |
| mux | 333.55ms | 1.85s | 388.21ms | 577.12ms (fail) | 416.48ms | 390.90ms | 196.98ms (fail) |
| repeatedObservers | 49.53ms | 225.81ms | 40.14ms | 386.63ms (fail) | 46.55ms | 88.37ms | 52.50ms (fail) |
| triangle | 67.50ms | 765.78ms | 98.76ms | 913.64ms (fail) | 103.32ms | 94.07ms | 81.26ms (fail) |
| unstable | 61.74ms | 342.75ms | 74.90ms | 625.29ms (fail) | 75.73ms | 102.35ms | 387.15ms (fail) |
| molBench | 486.22ms | 583.61ms | 487.86ms | 11.34ms | 486.44ms | 496.58ms | 1.13ms |
| create_signals | 31.03ms | 83.60ms | 4.65ms | 28.68ms | 50.02ms | 52.21ms | 65.68ms |
| comp_0to1 | 17.34ms | 22.21ms | 18.15ms | 18.14ms | 14.39ms | 23.20ms | 61.82ms |
| comp_1to1 | 13.25ms | 38.77ms | 13.96ms | 21.55ms | 22.25ms | 46.12ms | 64.30ms |
| comp_2to1 | 3.13ms | 22.05ms | 17.75ms | 25.60ms | 8.59ms | 29.03ms | 45.17ms |
| comp_4to1 | 7.08ms | 13.24ms | 12.66ms | 3.82ms | 10.08ms | 26.07ms | 17.64ms |
| comp_1000to1 | 3μs | 21μs | 5μs | 3μs | 4μs | 30μs | 45μs |
| comp_1to2 | 13.52ms | 30.30ms | 27.05ms | 10.42ms | 21.56ms | 30.57ms | 49.87ms |
| comp_1to4 | 16.42ms | 25.13ms | 26.66ms | 26.92ms | 15.84ms | 29.05ms | 49.88ms |
| comp_1to8 | 7.36ms | 31.07ms | 6.21ms | 5.33ms | 6.98ms | 23.12ms | 46.08ms |
| comp_1to1000 | 7.36ms | 15.37ms | 7.13ms | 4.79ms | 4.32ms | 13.77ms | 41.22ms |
| update_1to1 | 5.79ms | 23.52ms | 8.28ms | 80.42ms | 10.13ms | 14.52ms | 6.02ms |
| update_2to1 | 5.82ms | 11.40ms | 4.35ms | 41.22ms | 4.53ms | 7.16ms | 3.07ms |
| update_4to1 | 1.68ms | 6.13ms | 2.11ms | 19.57ms | 2.51ms | 3.63ms | 1.50ms |
| update_1000to1 | 13μs | 62μs | 21μs | 170μs | 26μs | 36μs | 15μs |
| update_1to2 | 2.63ms | 11.02ms | 4.15ms | 41.23ms | 4.49ms | 7.34ms | 3.01ms |
| update_1to4 | 1.40ms | 5.59ms | 2.12ms | 19.84ms | 2.52ms | 3.60ms | 1.51ms |
| update_1to1000 | 46μs | 169μs | 850μs | 94μs | 47μs | 268μs | 419μs |
| cellx1000 | 6.42ms | 74.10ms | 10.13ms | N/A | 10.19ms | 9.85ms | 5.19ms |
| cellx2500 | 20.10ms | 267.23ms | 30.18ms | N/A | 39.42ms | 31.95ms | 33.05ms |
| cellx5000 | 63.93ms | 617.04ms | 87.58ms | N/A | 88.98ms | 79.20ms | 77.26ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.32ms | 2.05s | 442.69ms | 2.15s | 497.85ms | 315.78ms | 246.77ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 163.56ms | 1.59s | 270.98ms | 1.45s (partial) | 280.78ms | 217.22ms | 200.21ms |
| 1000x12 - 4 sources - dynamic (large) | 275.27ms | 2.07s | 3.76s | 2.52s (partial) | 3.88s | 448.94ms | 358.81ms |
| 1000x5 - 25 sources (wide dense) | 556.80ms | 3.58s | 2.75s | 4.42s | 3.64s | 826.66ms | 500.79ms |
| 5x500 - 3 sources (deep) | 178.89ms | 1.17s | 231.15ms | 1.47s | 225.11ms | 226.44ms | 207.35ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.08ms | 1.74s | 461.64ms | 1.79s (partial) | 486.96ms | 339.08ms | 261.21ms |

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
