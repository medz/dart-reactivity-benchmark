# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.17s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.35s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.68s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.92s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.92s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.20ms | 2.37s | 199.20ms | 1.42s | 207.98ms | 276.16ms | 147.94ms (fail) |
| broadPropagation | 317.45ms | 4.54s | 457.50ms | 85.07ms (fail) | 474.25ms | 453.33ms | 6.00ms (fail) |
| deepPropagation | 96.49ms | 1.58s | 177.38ms | 2.00s (fail) | 168.81ms | 144.28ms | 140.50ms (fail) |
| diamond | 216.82ms | 2.46s | 277.76ms | 2.72s (fail) | 282.29ms | 313.24ms | 189.77ms (fail) |
| mux | 337.21ms | 1.88s | 403.34ms | 555.03ms (fail) | 449.60ms | 390.73ms | 191.21ms (fail) |
| repeatedObservers | 50.72ms | 241.64ms | 39.60ms | 401.20ms (fail) | 45.85ms | 90.39ms | 52.43ms (fail) |
| triangle | 75.36ms | 770.82ms | 98.39ms | 958.03ms (fail) | 114.02ms | 96.59ms | 77.00ms (fail) |
| unstable | 138.19ms | 352.89ms | 70.29ms | 610.81ms (fail) | 71.53ms | 173.69ms | 336.43ms (fail) |
| molBench | 493.96ms | 571.46ms | 488.78ms | 11.51ms | 487.23ms | 491.93ms | 927μs |
| create_signals | 27.67ms | 70.16ms | 17.98ms | 23.96ms | 26.20ms | 52.41ms | 65.35ms |
| comp_0to1 | 9.43ms | 28.93ms | 14.87ms | 13.58ms | 11.94ms | 26.16ms | 56.29ms |
| comp_1to1 | 23.03ms | 38.73ms | 7.24ms | 22.59ms | 23.67ms | 39.37ms | 55.39ms |
| comp_2to1 | 17.96ms | 23.20ms | 9.90ms | 24.59ms | 13.70ms | 21.70ms | 36.57ms |
| comp_4to1 | 4.10ms | 23.21ms | 8.88ms | 4.49ms | 8.37ms | 4.26ms | 16.85ms |
| comp_1000to1 | 4μs | 17μs | 4μs | 3μs | 5μs | 14μs | 58μs |
| comp_1to2 | 16.25ms | 36.60ms | 23.88ms | 11.40ms | 16.81ms | 36.64ms | 45.07ms |
| comp_1to4 | 12.87ms | 20.06ms | 14.10ms | 25.85ms | 15.95ms | 22.90ms | 43.51ms |
| comp_1to8 | 8.37ms | 23.80ms | 5.14ms | 5.01ms | 6.43ms | 22.80ms | 42.41ms |
| comp_1to1000 | 8.92ms | 15.83ms | 4.20ms | 4.77ms | 4.20ms | 16.10ms | 38.54ms |
| update_1to1 | 5.62ms | 23.65ms | 8.66ms | 84.20ms | 8.91ms | 16.38ms | 5.66ms |
| update_2to1 | 2.90ms | 12.20ms | 4.26ms | 41.90ms | 4.52ms | 8.16ms | 2.83ms |
| update_4to1 | 1.45ms | 6.81ms | 2.19ms | 20.56ms | 2.30ms | 4.10ms | 1.44ms |
| update_1000to1 | 13μs | 70μs | 28μs | 170μs | 22μs | 40μs | 15μs |
| update_1to2 | 3.65ms | 11.38ms | 4.62ms | 41.65ms | 4.46ms | 8.28ms | 2.86ms |
| update_1to4 | 1.45ms | 9.00ms | 2.20ms | 20.33ms | 2.25ms | 4.09ms | 1.44ms |
| update_1to1000 | 51μs | 176μs | 62μs | 129μs | 42μs | 146μs | 374μs |
| cellx1000 | 7.39ms | 73.28ms | 9.90ms | N/A | 9.66ms | 10.15ms | 5.39ms |
| cellx2500 | 19.92ms | 252.92ms | 27.46ms | N/A | 33.21ms | 32.42ms | 29.54ms |
| cellx5000 | 57.84ms | 556.17ms | 78.24ms | N/A | 66.72ms | 72.78ms | 87.09ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.13ms | 2.05s | 473.48ms | 2.26s | 515.85ms | 323.37ms | 240.44ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 186.89ms | 1.54s | 276.13ms | 1.50s (partial) | 283.01ms | 224.18ms | 199.19ms |
| 1000x12 - 4 sources - dynamic (large) | 346.94ms | 1.92s | 3.75s | 2.57s (partial) | 4.01s | 437.95ms | 348.74ms |
| 1000x5 - 25 sources (wide dense) | 491.76ms | 3.53s | 2.72s | 4.30s | 3.59s | 795.16ms | 499.20ms |
| 5x500 - 3 sources (deep) | 196.22ms | 1.16s | 227.37ms | 1.40s | 226.78ms | 229.64ms | 209.96ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.94ms | 1.74s | 452.53ms | 1.80s (partial) | 485.71ms | 334.87ms | 257.62ms |

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
