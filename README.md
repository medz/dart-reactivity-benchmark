# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.09s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.81s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 8.73s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.41s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.51s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.13s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.54s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 145.05ms | 2.30s | 194.30ms | 1.38s | 200.13ms | 229.03ms | 141.74ms (fail) |
| broadPropagation | 238.40ms | 4.21s | 423.83ms | 76.10ms (fail) | 393.00ms | 418.11ms | 5.48ms (fail) |
| deepPropagation | 89.53ms | 1.48s | 178.90ms | 2.19s (fail) | 172.33ms | 133.04ms | 158.24ms (fail) |
| diamond | 176.19ms | 2.34s | 250.26ms | 2.90s (fail) | 254.38ms | 310.92ms | 181.11ms (fail) |
| mux | 317.16ms | 1.88s | 350.76ms | 561.59ms (fail) | 354.00ms | 382.76ms | 172.09ms (fail) |
| repeatedObservers | 43.12ms | 230.33ms | 33.81ms | 385.60ms (fail) | 38.53ms | 86.25ms | 46.71ms (fail) |
| triangle | 61.97ms | 793.46ms | 92.52ms | 909.73ms (fail) | 91.51ms | 101.31ms | 76.61ms (fail) |
| unstable | 55.77ms | 326.52ms | 58.23ms | 649.17ms (fail) | 64.06ms | 103.41ms | 324.73ms (fail) |
| molBench | 361.94ms | 461.94ms | 365.39ms | 12.69ms | 366.83ms | 371.34ms | 839μs |
| create_signals | 28.73ms | 62.91ms | 16.39ms | 27.37ms | 24.61ms | 57.80ms | 59.74ms |
| comp_0to1 | 6.65ms | 17.84ms | 18.52ms | 15.97ms | 12.20ms | 44.72ms | 51.97ms |
| comp_1to1 | 17.64ms | 48.59ms | 20.31ms | 25.85ms | 25.44ms | 39.71ms | 53.73ms |
| comp_2to1 | 11.03ms | 23.19ms | 20.64ms | 35.23ms | 8.87ms | 20.96ms | 40.26ms |
| comp_4to1 | 2.15ms | 14.31ms | 10.18ms | 3.65ms | 2.64ms | 20.70ms | 16.49ms |
| comp_1000to1 | 5μs | 17μs | 5μs | 8μs | 6μs | 16μs | 40μs |
| comp_1to2 | 17.46ms | 30.67ms | 16.45ms | 18.50ms | 12.09ms | 42.86ms | 45.55ms |
| comp_1to4 | 25.01ms | 38.74ms | 22.00ms | 28.91ms | 16.81ms | 33.57ms | 45.69ms |
| comp_1to8 | 7.77ms | 27.26ms | 8.68ms | 6.37ms | 8.82ms | 23.40ms | 45.09ms |
| comp_1to1000 | 5.71ms | 17.42ms | 5.65ms | 5.82ms | 5.94ms | 15.94ms | 39.07ms |
| update_1to1 | 5.54ms | 22.27ms | 9.59ms | 78.57ms | 10.77ms | 15.81ms | 4.83ms |
| update_2to1 | 2.71ms | 11.53ms | 4.74ms | 39.68ms | 5.50ms | 7.72ms | 2.45ms |
| update_4to1 | 1.47ms | 5.59ms | 2.26ms | 19.36ms | 2.77ms | 4.04ms | 1.28ms |
| update_1000to1 | 12μs | 53μs | 27μs | 174μs | 28μs | 39μs | 12μs |
| update_1to2 | 2.91ms | 11.19ms | 4.64ms | 39.62ms | 5.35ms | 7.82ms | 2.45ms |
| update_1to4 | 1.47ms | 5.70ms | 2.41ms | 19.77ms | 2.91ms | 3.87ms | 1.32ms |
| update_1to1000 | 52μs | 175μs | 64μs | 114μs | 60μs | 290μs | 378μs |
| cellx1000 | 8.72ms | 103.36ms | 10.24ms | N/A | 10.52ms | 16.64ms | 8.84ms |
| cellx2500 | 26.18ms | 314.42ms | 27.79ms | N/A | 34.84ms | 52.25ms | 36.95ms |
| cellx5000 | 70.46ms | 690.99ms | 81.68ms | N/A | 82.94ms | 137.12ms | 74.07ms |
| 10x5 - 2 sources - read 20.0% (simple) | 191.52ms | 2.15s | 396.22ms | 2.26s | 426.79ms | 318.88ms | 234.28ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 152.33ms | 1.58s | 235.32ms | 1.43s (partial) | 236.81ms | 234.72ms | 175.45ms |
| 1000x12 - 4 sources - dynamic (large) | 247.63ms | 1.80s | 3.01s | 2.83s (partial) | 3.25s | 390.65ms | 276.25ms |
| 1000x5 - 25 sources (wide dense) | 394.09ms | 3.62s | 2.26s | 4.24s | 2.68s | 629.23ms | 383.65ms |
| 5x500 - 3 sources (deep) | 170.85ms | 1.20s | 222.36ms | 1.47s | 210.61ms | 265.16ms | 202.11ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 198.83ms | 1.71s | 377.91ms | 1.89s (partial) | 391.59ms | 290.01ms | 218.91ms |

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
