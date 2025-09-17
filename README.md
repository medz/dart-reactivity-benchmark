# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.91s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.27s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.40s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.74s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.50s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.68ms | 2.34s | 205.66ms | 1.45s | 212.43ms | 265.45ms | 147.63ms (fail) |
| broadPropagation | 316.94ms | 4.44s | 466.61ms | 82.55ms (fail) | 460.70ms | 452.18ms | 6.46ms (fail) |
| deepPropagation | 98.47ms | 1.55s | 179.95ms | 1.92s (fail) | 173.20ms | 140.43ms | 140.84ms (fail) |
| diamond | 223.27ms | 2.41s | 283.85ms | 2.62s (fail) | 288.20ms | 316.36ms | 190.77ms (fail) |
| mux | 350.90ms | 1.85s | 389.32ms | 567.97ms (fail) | 427.08ms | 403.60ms | 191.19ms (fail) |
| repeatedObservers | 50.37ms | 236.34ms | 41.25ms | 401.95ms (fail) | 46.05ms | 90.68ms | 52.78ms (fail) |
| triangle | 77.27ms | 781.52ms | 99.20ms | 917.45ms (fail) | 98.77ms | 98.36ms | 78.50ms (fail) |
| unstable | 141.76ms | 349.50ms | 74.55ms | 627.98ms (fail) | 76.50ms | 168.88ms | 338.44ms (fail) |
| molBench | 487.50ms | 586.87ms | 487.84ms | 12.10ms | 486.85ms | 501.26ms | 973μs |
| create_signals | 26.50ms | 72.50ms | 5.25ms | 24.53ms | 27.48ms | 78.12ms | 66.85ms |
| comp_0to1 | 12.49ms | 25.41ms | 17.67ms | 15.50ms | 12.22ms | 26.07ms | 58.77ms |
| comp_1to1 | 25.64ms | 29.64ms | 11.21ms | 27.36ms | 18.77ms | 44.73ms | 63.20ms |
| comp_2to1 | 21.42ms | 22.51ms | 18.61ms | 31.34ms | 10.06ms | 30.55ms | 41.65ms |
| comp_4to1 | 4.18ms | 24.55ms | 9.59ms | 7.45ms | 4.12ms | 17.39ms | 17.67ms |
| comp_1000to1 | 4μs | 15μs | 9μs | 3μs | 5μs | 16μs | 44μs |
| comp_1to2 | 11.91ms | 41.87ms | 22.97ms | 11.60ms | 20.70ms | 44.30ms | 50.36ms |
| comp_1to4 | 21.22ms | 22.79ms | 30.08ms | 26.71ms | 13.25ms | 14.82ms | 46.76ms |
| comp_1to8 | 4.78ms | 25.33ms | 5.61ms | 8.29ms | 6.41ms | 19.19ms | 46.00ms |
| comp_1to1000 | 3.72ms | 15.22ms | 6.62ms | 4.38ms | 4.56ms | 14.35ms | 41.25ms |
| update_1to1 | 5.50ms | 25.65ms | 8.67ms | 81.34ms | 10.21ms | 16.81ms | 6.01ms |
| update_2to1 | 2.80ms | 12.08ms | 4.42ms | 41.15ms | 4.50ms | 8.40ms | 3.08ms |
| update_4to1 | 1.45ms | 6.30ms | 2.10ms | 19.71ms | 2.59ms | 4.20ms | 1.50ms |
| update_1000to1 | 25μs | 66μs | 20μs | 218μs | 25μs | 42μs | 25μs |
| update_1to2 | 2.78ms | 13.44ms | 4.27ms | 40.99ms | 4.56ms | 8.58ms | 3.01ms |
| update_1to4 | 2.02ms | 6.59ms | 2.10ms | 19.80ms | 2.54ms | 4.20ms | 1.50ms |
| update_1to1000 | 55μs | 172μs | 859μs | 169μs | 44μs | 144μs | 423μs |
| cellx1000 | 8.03ms | 73.58ms | 9.87ms | N/A | 10.01ms | 11.21ms | 5.39ms |
| cellx2500 | 21.40ms | 269.36ms | 31.94ms | N/A | 39.01ms | 32.70ms | 24.24ms |
| cellx5000 | 50.32ms | 563.52ms | 82.19ms | N/A | 82.63ms | 82.61ms | 78.01ms |
| 10x5 - 2 sources - read 20.0% (simple) | 246.51ms | 2.02s | 450.56ms | 2.17s | 509.40ms | 323.47ms | 240.96ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.26ms | 1.57s | 275.34ms | 1.48s (partial) | 285.44ms | 219.76ms | 195.16ms |
| 1000x12 - 4 sources - dynamic (large) | 351.90ms | 1.94s | 3.73s | 2.49s (partial) | 3.75s | 447.99ms | 347.04ms |
| 1000x5 - 25 sources (wide dense) | 504.46ms | 3.45s | 2.74s | 4.14s | 3.45s | 822.20ms | 497.19ms |
| 5x500 - 3 sources (deep) | 199.51ms | 1.18s | 232.92ms | 1.51s | 224.96ms | 226.76ms | 206.57ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.25ms | 1.77s | 465.20ms | 1.76s (partial) | 487.77ms | 338.64ms | 264.51ms |

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
