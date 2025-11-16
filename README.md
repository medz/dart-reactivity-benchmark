# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.32s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.62s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.13s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.52s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.35s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.05s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 125.05ms | 2.36s | 201.28ms | 1.42s | 211.52ms | 264.78ms | 171.17ms |
| broadPropagation | 241.44ms | 4.38s | 463.03ms | 83.94ms (fail) | 460.47ms | 461.29ms | 396.30ms |
| deepPropagation | 79.53ms | 1.51s | 175.77ms | 1.99s (fail) | 171.85ms | 133.71ms | 157.03ms |
| diamond | 160.01ms | 2.37s | 285.90ms | 2.76s (fail) | 285.65ms | 327.82ms | 209.70ms |
| mux | 303.02ms | 1.87s | 374.84ms | 547.57ms (fail) | 388.88ms | 375.61ms | 354.15ms |
| repeatedObservers | 26.97ms | 225.70ms | 40.99ms | 390.69ms (fail) | 46.10ms | 89.22ms | 58.83ms |
| triangle | 63.88ms | 758.47ms | 100.79ms | 903.03ms (fail) | 102.60ms | 102.61ms | 90.06ms |
| unstable | 47.38ms | 338.66ms | 69.87ms | 619.77ms (fail) | 78.36ms | 104.47ms | 343.63ms |
| molBench | 484.48ms | 589.42ms | 483.92ms | 11.00ms | 494.88ms | 493.41ms | 493.60ms |
| create_signals | 10.67ms | 78.19ms | 4.83ms | 25.92ms | 28.47ms | 78.96ms | 62.20ms |
| comp_0to1 | 9.83ms | 25.58ms | 18.61ms | 14.39ms | 13.40ms | 24.95ms | 51.46ms |
| comp_1to1 | 19.32ms | 28.33ms | 11.89ms | 22.19ms | 22.03ms | 36.00ms | 54.55ms |
| comp_2to1 | 8.70ms | 11.75ms | 13.29ms | 25.05ms | 9.31ms | 31.54ms | 40.49ms |
| comp_4to1 | 1.67ms | 30.32ms | 13.25ms | 4.51ms | 2.97ms | 41.48ms | 16.84ms |
| comp_1000to1 | 6μs | 18μs | 5μs | 5μs | 5μs | 18μs | 39μs |
| comp_1to2 | 23.45ms | 33.05ms | 18.83ms | 16.08ms | 22.48ms | 23.95ms | 44.41ms |
| comp_1to4 | 18.00ms | 26.52ms | 36.79ms | 28.73ms | 10.88ms | 36.11ms | 44.35ms |
| comp_1to8 | 8.18ms | 25.47ms | 8.16ms | 5.00ms | 7.96ms | 24.91ms | 42.12ms |
| comp_1to1000 | 4.02ms | 15.26ms | 5.32ms | 4.03ms | 5.77ms | 14.40ms | 37.48ms |
| update_1to1 | 6.60ms | 27.57ms | 8.87ms | 78.39ms | 9.29ms | 14.25ms | 6.14ms |
| update_2to1 | 3.86ms | 13.68ms | 4.38ms | 41.68ms | 4.70ms | 7.03ms | 3.09ms |
| update_4to1 | 2.35ms | 7.00ms | 2.20ms | 19.11ms | 2.35ms | 3.89ms | 1.60ms |
| update_1000to1 | 20μs | 67μs | 22μs | 199μs | 24μs | 35μs | 15μs |
| update_1to2 | 3.31ms | 13.74ms | 4.40ms | 39.66ms | 4.66ms | 7.08ms | 3.10ms |
| update_1to4 | 2.36ms | 6.92ms | 2.24ms | 19.20ms | 2.64ms | 3.52ms | 1.57ms |
| update_1to1000 | 44μs | 158μs | 183μs | 149μs | 60μs | 295μs | 405μs |
| cellx1000 | 5.88ms | 75.43ms | 10.70ms | N/A | 9.97ms | 11.58ms | 11.31ms |
| cellx2500 | 21.57ms | 270.93ms | 34.69ms | N/A | 34.42ms | 37.23ms | 37.93ms |
| cellx5000 | 47.72ms | 644.53ms | 101.50ms | N/A | 75.08ms | 136.36ms | 121.16ms |
| 10x5 - 2 sources - read 20.0% (simple) | 181.12ms | 1.96s | 434.89ms | 2.27s | 516.12ms | 322.90ms | 243.66ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.72ms | 1.48s | 273.21ms | 1.49s (partial) | 278.00ms | 222.81ms | 197.39ms |
| 1000x12 - 4 sources - dynamic (large) | 296.09ms | 1.94s | 3.70s | 2.60s (partial) | 4.00s | 449.40ms | 367.57ms |
| 1000x5 - 25 sources (wide dense) | 551.60ms | 3.47s | 2.55s | 4.23s | 3.51s | 826.98ms | 483.25ms |
| 5x500 - 3 sources (deep) | 161.90ms | 1.11s | 229.83ms | 1.55s | 225.95ms | 227.10ms | 213.81ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.19ms | 1.66s | 452.11ms | 1.83s (partial) | 483.01ms | 339.06ms | 260.35ms |

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
