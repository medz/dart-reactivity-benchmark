# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.73s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.06s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.23s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.76s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.42s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.27ms | 2.32s | 204.34ms | 1.25s | 1.47s | 215.55ms | 271.23ms | 158.12ms (fail) |
| broadPropagation | 357.06ms | 4.38s | 457.61ms | 4.99s | 86.14ms (fail) | 461.59ms | 496.02ms | 6.49ms (fail) |
| deepPropagation | 126.81ms | 1.56s | 181.83ms | 4.00s | 2.05s (fail) | 182.99ms | 171.62ms | 142.33ms (fail) |
| diamond | 236.00ms | 2.43s | 279.87ms | 14.03s (fail) | 2.75s (fail) | 288.54ms | 363.83ms | 191.35ms (fail) |
| mux | 371.64ms | 1.83s | 380.89ms | 1.02s | 585.92ms (fail) | 406.39ms | 437.58ms | 188.13ms (fail) |
| repeatedObservers | 45.64ms | 233.85ms | 38.12ms | 9.74s | 399.48ms (fail) | 46.95ms | 78.60ms | 53.20ms (fail) |
| triangle | 86.59ms | 774.26ms | 100.47ms | 4.52s | 932.08ms (fail) | 103.10ms | 118.77ms | 78.18ms (fail) |
| unstable | 61.90ms | 352.25ms | 71.30ms | 7.64s | 643.99ms (fail) | 75.21ms | 94.65ms | 337.21ms (fail) |
| molBench | 492.95ms | 582.32ms | 490.18ms | 5.90s | 12.13ms | 488.13ms | 493.89ms | 1.13ms |
| create_signals | 27.30ms | 54.50ms | 4.67ms | 13.34ms | 23.89ms | 25.70ms | 80.20ms | 61.97ms |
| comp_0to1 | 7.18ms | 15.45ms | 18.44ms | 13.68ms | 15.06ms | 12.32ms | 28.33ms | 53.73ms |
| comp_1to1 | 4.27ms | 41.81ms | 14.11ms | 99.56ms | 23.12ms | 29.61ms | 29.79ms | 54.73ms |
| comp_2to1 | 2.37ms | 35.34ms | 16.84ms | 72.37ms | 26.32ms | 15.02ms | 32.53ms | 36.82ms |
| comp_4to1 | 11.01ms | 13.91ms | 15.02ms | 85.23ms | 6.79ms | 6.61ms | 5.02ms | 16.89ms |
| comp_1000to1 | 5μs | 21μs | 5μs | 59.32ms | 4μs | 9μs | 17μs | 44μs |
| comp_1to2 | 19.35ms | 36.01ms | 18.01ms | 66.89ms | 12.76ms | 21.60ms | 34.14ms | 46.46ms |
| comp_1to4 | 11.36ms | 20.44ms | 33.94ms | 99.18ms | 32.44ms | 11.94ms | 21.68ms | 45.24ms |
| comp_1to8 | 4.14ms | 23.20ms | 8.08ms | 116.37ms | 9.02ms | 6.86ms | 23.89ms | 44.38ms |
| comp_1to1000 | 3.55ms | 15.19ms | 6.09ms | 47.90ms | 4.56ms | 4.55ms | 16.42ms | 39.20ms |
| update_1to1 | 11.29ms | 24.97ms | 8.19ms | 83.38ms | 9.24ms | 16.13ms | 5.73ms |
| update_2to1 | 5.06ms | 12.11ms | 4.07ms | 42.53ms | 4.65ms | 7.96ms | 3.48ms |
| update_4to1 | 2.77ms | 6.35ms | 2.16ms | 20.87ms | 2.28ms | 4.04ms | 1.50ms |
| update_1000to1 | 11μs | 56μs | 20μs | 224μs | 24μs | 40μs | 15μs |
| update_1to2 | 5.77ms | 12.27ms | 4.08ms | 44.06ms | 4.89ms | 8.10ms | 2.98ms |
| update_1to4 | 2.11ms | 6.11ms | 2.07ms | 20.68ms | 2.30ms | 4.04ms | 1.50ms |
| update_1to1000 | 34μs | 181μs | 192μs | 145μs | 44μs | 193μs | 379μs |
| cellx1000 | 7.42ms | 72.66ms | 9.64ms | 9.79ms | 12.08ms | 5.74ms |
| cellx2500 | 19.89ms | 265.38ms | 27.45ms | 32.35ms | 40.47ms | 28.47ms |
| cellx5000 | 45.45ms | 594.54ms | 71.11ms | 65.29ms | 125.57ms | 58.85ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.65ms | 2.04s | 443.88ms | 2.35s | 507.87ms | 362.70ms | 249.22ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.28ms | 1.59s | 279.25ms | 1.55s (partial) | 280.96ms | 248.50ms | 202.97ms |
| 1000x12 - 4 sources - dynamic (large) | 284.06ms | 1.90s | 3.56s | 2.68s (partial) | 3.76s | 485.38ms | 338.72ms |
| 1000x5 - 25 sources (wide dense) | 420.18ms | 3.59s | 2.62s | 4.25s | 3.43s | 602.71ms | 506.74ms |
| 5x500 - 3 sources (deep) | 193.37ms | 1.18s | 237.72ms | 1.45s | 229.55ms | 257.81ms | 206.44ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 269.13ms | 1.75s | 456.22ms | 1.84s (partial) | 491.70ms | 390.04ms | 257.22ms |

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
