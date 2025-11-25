# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.25s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.65s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.11s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.00s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.15s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.98s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 124.97ms | 2.36s | 209.17ms | 1.41s | 211.29ms | 247.04ms | 171.49ms |
| broadPropagation | 240.84ms | 4.41s | 453.13ms | 83.18ms (fail) | 450.26ms | 452.76ms | 400.42ms |
| deepPropagation | 78.88ms | 1.50s | 176.79ms | 1.99s (fail) | 173.86ms | 131.48ms | 154.64ms |
| diamond | 152.95ms | 2.39s | 287.07ms | 2.75s (fail) | 288.60ms | 313.15ms | 225.11ms |
| mux | 293.47ms | 1.87s | 383.86ms | 539.02ms (fail) | 401.43ms | 375.85ms | 360.76ms |
| repeatedObservers | 26.88ms | 230.48ms | 40.77ms | 397.74ms (fail) | 46.71ms | 87.40ms | 60.17ms |
| triangle | 65.47ms | 742.55ms | 101.72ms | 935.15ms (fail) | 104.58ms | 100.80ms | 85.86ms |
| unstable | 47.09ms | 346.14ms | 71.19ms | 623.85ms (fail) | 79.91ms | 101.67ms | 367.50ms |
| molBench | 484.82ms | 590.35ms | 486.80ms | 11.21ms | 496.24ms | 490.44ms | 493.49ms |
| create_signals | 7.94ms | 50.20ms | 5.38ms | 24.46ms | 27.30ms | 76.30ms | 58.72ms |
| comp_0to1 | 10.96ms | 15.56ms | 18.04ms | 14.56ms | 12.30ms | 26.82ms | 51.70ms |
| comp_1to1 | 29.26ms | 55.52ms | 12.90ms | 20.55ms | 29.18ms | 32.15ms | 53.36ms |
| comp_2to1 | 2.47ms | 23.10ms | 23.69ms | 32.19ms | 22.93ms | 8.27ms | 35.48ms |
| comp_4to1 | 1.70ms | 31.38ms | 11.26ms | 12.05ms | 3.90ms | 4.40ms | 16.59ms |
| comp_1000to1 | 3μs | 25μs | 7μs | 6μs | 4μs | 14μs | 39μs |
| comp_1to2 | 22.61ms | 36.75ms | 16.07ms | 20.43ms | 13.32ms | 33.92ms | 44.21ms |
| comp_1to4 | 17.51ms | 22.62ms | 19.73ms | 23.14ms | 9.84ms | 21.50ms | 43.57ms |
| comp_1to8 | 7.25ms | 23.30ms | 6.79ms | 9.01ms | 6.35ms | 21.68ms | 42.33ms |
| comp_1to1000 | 3.48ms | 15.57ms | 3.92ms | 9.04ms | 4.34ms | 15.07ms | 38.80ms |
| update_1to1 | 5.76ms | 22.11ms | 8.84ms | 85.90ms | 9.39ms | 14.37ms | 6.10ms |
| update_2to1 | 4.88ms | 10.68ms | 4.33ms | 40.79ms | 4.72ms | 6.92ms | 3.12ms |
| update_4to1 | 1.48ms | 6.09ms | 2.21ms | 19.54ms | 2.37ms | 3.57ms | 1.58ms |
| update_1000to1 | 16μs | 52μs | 22μs | 179μs | 24μs | 34μs | 15μs |
| update_1to2 | 3.49ms | 10.51ms | 4.34ms | 40.23ms | 4.63ms | 7.13ms | 3.08ms |
| update_1to4 | 1.74ms | 5.26ms | 2.21ms | 19.72ms | 2.56ms | 3.51ms | 1.54ms |
| update_1to1000 | 46μs | 162μs | 40μs | 135μs | 43μs | 153μs | 387μs |
| cellx1000 | 5.57ms | 72.89ms | 9.63ms | N/A | 10.32ms | 10.04ms | 10.13ms |
| cellx2500 | 15.70ms | 259.27ms | 29.20ms | N/A | 40.51ms | 33.63ms | 25.85ms |
| cellx5000 | 35.18ms | 588.36ms | 77.91ms | N/A | 96.97ms | 82.65ms | 82.04ms |
| 10x5 - 2 sources - read 20.0% (simple) | 180.18ms | 1.96s | 432.20ms | 2.24s | 509.31ms | 320.99ms | 251.38ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.25ms | 1.47s | 279.81ms | 1.52s (partial) | 278.90ms | 223.94ms | 212.63ms |
| 1000x12 - 4 sources - dynamic (large) | 275.76ms | 1.85s | 3.62s | 2.59s (partial) | 3.61s | 447.32ms | 365.75ms |
| 1000x5 - 25 sources (wide dense) | 538.08ms | 3.42s | 2.50s | 4.17s | 3.56s | 856.43ms | 496.27ms |
| 5x500 - 3 sources (deep) | 159.57ms | 1.10s | 253.49ms | 1.55s | 226.05ms | 227.37ms | 211.08ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.77ms | 1.67s | 450.40ms | 1.81s (partial) | 483.32ms | 333.10ms | 274.48ms |

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
