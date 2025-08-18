# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.91s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.35s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.42s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.78s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.45s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 166.92ms | 2.32s | 200.21ms | 1.45s | 213.64ms | 258.85ms | 148.95ms (fail) |
| broadPropagation | 313.82ms | 4.37s | 455.43ms | 82.63ms (fail) | 465.79ms | 462.84ms | 6.64ms (fail) |
| deepPropagation | 97.86ms | 1.54s | 180.72ms | 1.92s (fail) | 179.13ms | 145.14ms | 144.80ms (fail) |
| diamond | 227.01ms | 2.41s | 280.64ms | 2.54s (fail) | 287.52ms | 331.64ms | 184.78ms (fail) |
| mux | 343.16ms | 1.85s | 393.82ms | 565.08ms (fail) | 400.83ms | 399.55ms | 198.00ms (fail) |
| repeatedObservers | 50.41ms | 232.08ms | 40.42ms | 407.07ms (fail) | 46.31ms | 92.71ms | 52.46ms (fail) |
| triangle | 78.43ms | 783.65ms | 98.81ms | 911.01ms (fail) | 104.66ms | 98.91ms | 80.41ms (fail) |
| unstable | 140.82ms | 344.49ms | 73.97ms | 618.30ms (fail) | 77.95ms | 166.34ms | 382.04ms (fail) |
| molBench | 487.10ms | 582.97ms | 487.41ms | 11.15ms | 486.67ms | 500.89ms | 1.06ms |
| create_signals | 27.78ms | 70.48ms | 5.15ms | 24.80ms | 26.92ms | 51.58ms | 62.37ms |
| comp_0to1 | 11.00ms | 28.33ms | 18.27ms | 15.03ms | 12.24ms | 25.84ms | 56.02ms |
| comp_1to1 | 24.16ms | 40.33ms | 15.18ms | 26.63ms | 30.45ms | 42.88ms | 57.87ms |
| comp_2to1 | 16.25ms | 34.57ms | 17.40ms | 27.01ms | 9.94ms | 17.46ms | 39.21ms |
| comp_4to1 | 3.75ms | 21.48ms | 13.04ms | 2.95ms | 2.27ms | 15.94ms | 16.83ms |
| comp_1000to1 | 7μs | 15μs | 7μs | 4μs | 5μs | 15μs | 44μs |
| comp_1to2 | 9.87ms | 36.31ms | 15.26ms | 14.94ms | 21.14ms | 26.59ms | 48.12ms |
| comp_1to4 | 21.74ms | 21.78ms | 22.15ms | 27.49ms | 10.23ms | 15.13ms | 46.15ms |
| comp_1to8 | 10.46ms | 23.93ms | 7.63ms | 9.12ms | 7.22ms | 19.67ms | 45.52ms |
| comp_1to1000 | 5.21ms | 15.43ms | 7.20ms | 4.83ms | 4.46ms | 14.71ms | 41.19ms |
| update_1to1 | 5.72ms | 28.35ms | 8.39ms | 80.76ms | 9.84ms | 18.63ms | 6.03ms |
| update_2to1 | 2.85ms | 11.27ms | 4.50ms | 41.01ms | 4.61ms | 9.26ms | 3.15ms |
| update_4to1 | 1.45ms | 7.58ms | 2.19ms | 19.77ms | 2.45ms | 4.65ms | 1.55ms |
| update_1000to1 | 22μs | 69μs | 22μs | 170μs | 26μs | 45μs | 15μs |
| update_1to2 | 2.75ms | 14.22ms | 4.08ms | 42.29ms | 4.49ms | 9.40ms | 3.06ms |
| update_1to4 | 1.40ms | 6.74ms | 2.10ms | 19.48ms | 2.42ms | 4.61ms | 1.56ms |
| update_1to1000 | 49μs | 173μs | 562μs | 136μs | 44μs | 149μs | 414μs |
| cellx1000 | 7.16ms | 79.47ms | 10.68ms | N/A | 10.76ms | 10.12ms | 6.16ms |
| cellx2500 | 19.88ms | 275.00ms | 34.37ms | N/A | 45.77ms | 34.78ms | 34.80ms |
| cellx5000 | 56.88ms | 570.78ms | 104.20ms | N/A | 98.13ms | 99.86ms | 73.64ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.38ms | 2.05s | 447.56ms | 2.13s | 509.00ms | 328.80ms | 234.80ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.61ms | 1.57s | 278.84ms | 1.44s (partial) | 280.15ms | 220.68ms | 196.31ms |
| 1000x12 - 4 sources - dynamic (large) | 360.15ms | 1.97s | 3.71s | 2.51s (partial) | 3.78s | 436.30ms | 352.68ms |
| 1000x5 - 25 sources (wide dense) | 498.56ms | 3.56s | 2.71s | 4.21s | 3.58s | 792.08ms | 512.29ms |
| 5x500 - 3 sources (deep) | 204.73ms | 1.18s | 233.15ms | 1.50s | 221.65ms | 225.01ms | 205.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.97ms | 1.74s | 461.93ms | 1.78s (partial) | 486.54ms | 334.27ms | 260.99ms |

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
