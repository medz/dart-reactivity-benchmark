# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.54s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.55s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.53s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.26s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.27ms | 2.36s | 202.24ms | 1.42s | 204.59ms | 286.53ms | 187.89ms (fail) |
| broadPropagation | 317.53ms | 4.40s | 496.30ms | 83.05ms (fail) | 447.17ms | 525.91ms | 6.39ms (fail) |
| deepPropagation | 96.57ms | 1.56s | 175.34ms | 1.93s (fail) | 171.56ms | 170.16ms | 143.80ms (fail) |
| diamond | 216.05ms | 2.43s | 297.74ms | 2.62s (fail) | 276.93ms | 358.20ms | 184.41ms (fail) |
| mux | 340.85ms | 1.85s | 404.99ms | 570.18ms (fail) | 406.35ms | 443.32ms | 189.28ms (fail) |
| repeatedObservers | 50.91ms | 236.00ms | 41.82ms | 384.74ms (fail) | 44.34ms | 86.94ms | 52.65ms (fail) |
| triangle | 75.03ms | 765.60ms | 102.94ms | 953.26ms (fail) | 102.75ms | 119.47ms | 80.85ms (fail) |
| unstable | 71.33ms | 353.70ms | 74.09ms | 616.31ms (fail) | 79.47ms | 102.61ms | 336.17ms (fail) |
| molBench | 485.33ms | 572.31ms | 490.79ms | 11.02ms | 487.12ms | 500.93ms | 972μs |
| create_signals | 24.83ms | 72.62ms | 5.09ms | 23.57ms | 26.29ms | 71.74ms | 66.30ms |
| comp_0to1 | 11.22ms | 29.75ms | 17.09ms | 13.12ms | 11.60ms | 33.24ms | 53.11ms |
| comp_1to1 | 18.43ms | 33.36ms | 14.49ms | 21.55ms | 29.56ms | 38.16ms | 56.25ms |
| comp_2to1 | 18.61ms | 35.28ms | 16.11ms | 34.38ms | 13.31ms | 25.71ms | 39.94ms |
| comp_4to1 | 3.93ms | 17.24ms | 11.04ms | 7.18ms | 3.21ms | 26.63ms | 17.36ms |
| comp_1000to1 | 4μs | 22μs | 7μs | 3μs | 4μs | 22μs | 41μs |
| comp_1to2 | 10.75ms | 37.63ms | 26.88ms | 11.62ms | 13.50ms | 34.23ms | 47.18ms |
| comp_1to4 | 13.89ms | 18.41ms | 30.83ms | 20.94ms | 18.01ms | 28.61ms | 49.30ms |
| comp_1to8 | 4.31ms | 20.62ms | 7.22ms | 4.85ms | 8.08ms | 23.20ms | 43.44ms |
| comp_1to1000 | 3.65ms | 15.87ms | 6.09ms | 4.07ms | 3.89ms | 16.05ms | 38.22ms |
| update_1to1 | 6.15ms | 24.70ms | 8.63ms | 83.77ms | 8.86ms | 15.59ms | 5.64ms |
| update_2to1 | 2.85ms | 12.03ms | 4.22ms | 43.39ms | 4.47ms | 7.69ms | 2.85ms |
| update_4to1 | 1.49ms | 6.82ms | 2.16ms | 20.39ms | 2.22ms | 3.86ms | 1.47ms |
| update_1000to1 | 26μs | 65μs | 30μs | 213μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.88ms | 10.85ms | 4.60ms | 43.41ms | 4.51ms | 7.68ms | 2.87ms |
| update_1to4 | 1.45ms | 5.60ms | 2.18ms | 20.95ms | 2.23ms | 3.84ms | 1.60ms |
| update_1to1000 | 32μs | 169μs | 851μs | 120μs | 43μs | 165μs | 377μs |
| cellx1000 | 7.24ms | 77.55ms | 9.76ms | N/A | 9.76ms | 12.53ms | 5.43ms |
| cellx2500 | 20.15ms | 259.21ms | 28.71ms | N/A | 28.52ms | 43.70ms | 27.86ms |
| cellx5000 | 50.44ms | 577.92ms | 87.75ms | N/A | 77.37ms | 118.94ms | 70.89ms |
| 10x5 - 2 sources - read 20.0% (simple) | 245.67ms | 2.02s | 434.93ms | 2.20s | 514.98ms | 354.65ms | 267.52ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 196.49ms | 1.52s | 270.04ms | 1.46s (partial) | 283.69ms | 244.50ms | 216.00ms |
| 1000x12 - 4 sources - dynamic (large) | 347.44ms | 1.85s | 3.68s | 2.47s (partial) | 3.96s | 466.42ms | 356.70ms |
| 1000x5 - 25 sources (wide dense) | 498.73ms | 3.49s | 2.68s | 4.04s | 3.59s | 725.38ms | 523.46ms |
| 5x500 - 3 sources (deep) | 197.59ms | 1.16s | 228.33ms | 1.38s | 223.52ms | 265.41ms | 204.61ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.81ms | 1.72s | 450.04ms | 1.76s (partial) | 488.61ms | 380.09ms | 261.67ms |

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
