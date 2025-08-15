# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.24s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.40s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.67s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.48s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.26s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.47ms | 2.39s | 200.40ms | 1.42s | 214.36ms | 256.57ms | 153.51ms (fail) |
| broadPropagation | 317.31ms | 4.34s | 454.88ms | 82.57ms (fail) | 461.66ms | 456.12ms | 6.54ms (fail) |
| deepPropagation | 99.54ms | 1.53s | 177.90ms | 1.95s (fail) | 176.00ms | 141.57ms | 141.19ms (fail) |
| diamond | 218.35ms | 2.42s | 286.43ms | 2.58s (fail) | 282.85ms | 310.62ms | 187.72ms (fail) |
| mux | 344.10ms | 1.84s | 397.66ms | 561.71ms (fail) | 407.65ms | 404.30ms | 194.55ms (fail) |
| repeatedObservers | 50.40ms | 235.86ms | 40.52ms | 390.22ms (fail) | 46.30ms | 90.22ms | 52.63ms (fail) |
| triangle | 78.54ms | 775.26ms | 102.59ms | 936.50ms (fail) | 101.11ms | 95.98ms | 77.35ms (fail) |
| unstable | 140.86ms | 342.47ms | 74.48ms | 609.98ms (fail) | 77.24ms | 166.49ms | 345.03ms (fail) |
| molBench | 487.45ms | 588.16ms | 487.27ms | 11.31ms | 487.71ms | 500.95ms | 1.16ms |
| create_signals | 26.19ms | 75.77ms | 10.41ms | 23.91ms | 25.84ms | 52.55ms | 64.50ms |
| comp_0to1 | 10.86ms | 20.25ms | 32.18ms | 13.70ms | 11.49ms | 25.80ms | 60.77ms |
| comp_1to1 | 25.02ms | 40.73ms | 7.10ms | 27.86ms | 28.07ms | 50.59ms | 59.78ms |
| comp_2to1 | 19.02ms | 25.13ms | 11.87ms | 32.23ms | 9.13ms | 30.89ms | 40.72ms |
| comp_4to1 | 1.91ms | 18.55ms | 16.84ms | 7.33ms | 2.16ms | 12.24ms | 18.71ms |
| comp_1000to1 | 4μs | 15μs | 9μs | 6μs | 8μs | 14μs | 45μs |
| comp_1to2 | 9.71ms | 43.27ms | 18.54ms | 19.99ms | 21.18ms | 26.74ms | 50.06ms |
| comp_1to4 | 19.84ms | 25.75ms | 28.90ms | 23.09ms | 9.55ms | 14.71ms | 47.73ms |
| comp_1to8 | 9.82ms | 24.19ms | 6.96ms | 9.20ms | 9.00ms | 19.95ms | 47.75ms |
| comp_1to1000 | 8.13ms | 15.36ms | 6.86ms | 8.33ms | 6.93ms | 14.44ms | 42.37ms |
| update_1to1 | 6.74ms | 23.48ms | 8.75ms | 82.24ms | 10.92ms | 16.76ms | 6.01ms |
| update_2to1 | 3.68ms | 11.42ms | 4.40ms | 41.37ms | 5.21ms | 8.42ms | 3.10ms |
| update_4to1 | 1.87ms | 5.79ms | 2.08ms | 20.00ms | 2.75ms | 4.18ms | 1.56ms |
| update_1000to1 | 28μs | 93μs | 21μs | 204μs | 27μs | 42μs | 15μs |
| update_1to2 | 3.57ms | 11.66ms | 4.06ms | 42.90ms | 5.22ms | 8.57ms | 3.05ms |
| update_1to4 | 1.91ms | 5.91ms | 2.10ms | 20.25ms | 2.79ms | 4.21ms | 1.57ms |
| update_1to1000 | 55μs | 205μs | 703μs | 155μs | 46μs | 145μs | 439μs |
| cellx1000 | 8.89ms | 76.36ms | 9.76ms | N/A | 9.87ms | 12.04ms | 5.58ms |
| cellx2500 | 19.40ms | 248.86ms | 29.28ms | N/A | 34.60ms | 34.26ms | 25.30ms |
| cellx5000 | 45.78ms | 564.90ms | 79.65ms | N/A | 70.62ms | 104.20ms | 69.38ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.08ms | 2.03s | 448.14ms | 2.14s | 504.22ms | 327.86ms | 247.48ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 194.82ms | 1.51s | 273.59ms | 1.46s (partial) | 282.13ms | 218.33ms | 196.14ms |
| 1000x12 - 4 sources - dynamic (large) | 346.32ms | 1.92s | 3.74s | 2.52s (partial) | 4.04s | 461.30ms | 345.68ms |
| 1000x5 - 25 sources (wide dense) | 493.75ms | 3.52s | 2.74s | 4.08s | 3.60s | 803.42ms | 512.21ms |
| 5x500 - 3 sources (deep) | 201.82ms | 1.13s | 234.58ms | 1.38s | 226.87ms | 227.79ms | 206.55ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 278.03ms | 1.68s | 460.73ms | 1.76s (partial) | 491.81ms | 338.10ms | 260.40ms |

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
