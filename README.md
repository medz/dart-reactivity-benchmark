# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.56s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.25s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.23s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.29s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.62s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.18ms | 2.40s | 195.67ms | 1.41s | 213.40ms | 304.46ms | 166.85ms (fail) |
| broadPropagation | 324.90ms | 4.51s | 450.76ms | 80.61ms (fail) | 453.26ms | 525.16ms | 6.61ms (fail) |
| deepPropagation | 96.73ms | 1.58s | 174.92ms | 1.88s (fail) | 172.93ms | 170.40ms | 147.49ms (fail) |
| diamond | 221.13ms | 2.46s | 291.01ms | 2.52s (fail) | 281.96ms | 360.01ms | 190.79ms (fail) |
| mux | 347.32ms | 1.84s | 404.22ms | 578.72ms (fail) | 405.74ms | 457.38ms | 196.62ms (fail) |
| repeatedObservers | 51.83ms | 240.71ms | 40.02ms | 362.55ms (fail) | 44.40ms | 87.22ms | 55.05ms (fail) |
| triangle | 79.17ms | 774.51ms | 98.77ms | 923.29ms (fail) | 102.91ms | 117.94ms | 77.47ms (fail) |
| unstable | 72.06ms | 356.59ms | 70.18ms | 592.66ms (fail) | 79.78ms | 103.10ms | 336.34ms (fail) |
| molBench | 486.85ms | 574.61ms | 488.21ms | 13.11ms | 485.70ms | 505.13ms | 920μs |
| create_signals | 24.57ms | 88.01ms | 5.36ms | 24.07ms | 25.14ms | 51.61ms | 60.37ms |
| comp_0to1 | 12.64ms | 16.15ms | 17.30ms | 14.01ms | 11.34ms | 29.88ms | 53.04ms |
| comp_1to1 | 18.09ms | 39.40ms | 13.91ms | 21.47ms | 21.01ms | 33.97ms | 55.67ms |
| comp_2to1 | 12.51ms | 35.31ms | 13.26ms | 24.34ms | 14.68ms | 21.22ms | 36.06ms |
| comp_4to1 | 1.63ms | 22.86ms | 11.04ms | 6.02ms | 2.02ms | 14.68ms | 16.17ms |
| comp_1000to1 | 6μs | 17μs | 10μs | 3μs | 5μs | 16μs | 42μs |
| comp_1to2 | 14.91ms | 35.22ms | 14.51ms | 12.10ms | 18.46ms | 28.10ms | 45.47ms |
| comp_1to4 | 17.35ms | 18.08ms | 18.91ms | 23.29ms | 9.43ms | 28.89ms | 44.01ms |
| comp_1to8 | 6.27ms | 20.47ms | 6.88ms | 5.19ms | 6.30ms | 30.90ms | 42.83ms |
| comp_1to1000 | 4.15ms | 15.87ms | 4.10ms | 4.26ms | 4.21ms | 16.11ms | 38.74ms |
| update_1to1 | 5.80ms | 24.86ms | 8.95ms | 85.31ms | 8.96ms | 15.59ms | 5.64ms |
| update_2to1 | 2.86ms | 13.36ms | 4.25ms | 43.08ms | 4.47ms | 7.66ms | 2.83ms |
| update_4to1 | 1.50ms | 6.14ms | 2.24ms | 20.58ms | 2.26ms | 3.83ms | 1.41ms |
| update_1000to1 | 26μs | 71μs | 21μs | 186μs | 22μs | 37μs | 14μs |
| update_1to2 | 2.92ms | 11.36ms | 4.68ms | 41.86ms | 4.50ms | 7.67ms | 2.88ms |
| update_1to4 | 1.54ms | 6.17ms | 2.13ms | 21.13ms | 2.25ms | 3.85ms | 1.41ms |
| update_1to1000 | 64μs | 217μs | 40μs | 128μs | 70μs | 168μs | 390μs |
| cellx1000 | 7.17ms | 68.49ms | 9.75ms | N/A | 9.51ms | 11.29ms | 5.13ms |
| cellx2500 | 19.22ms | 244.78ms | 25.62ms | N/A | 30.96ms | 30.88ms | 21.64ms |
| cellx5000 | 40.80ms | 573.57ms | 63.41ms | N/A | 59.36ms | 154.65ms | 66.66ms |
| 10x5 - 2 sources - read 20.0% (simple) | 239.92ms | 2.01s | 439.03ms | 2.30s | 518.33ms | 360.80ms | 248.44ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 191.20ms | 1.59s | 278.31ms | 1.50s (partial) | 281.43ms | 246.85ms | 198.50ms |
| 1000x12 - 4 sources - dynamic (large) | 335.89ms | 2.11s | 3.71s | 2.49s (partial) | 3.75s | 461.96ms | 343.34ms |
| 1000x5 - 25 sources (wide dense) | 496.72ms | 3.67s | 2.70s | 4.38s | 3.51s | 717.91ms | 507.53ms |
| 5x500 - 3 sources (deep) | 196.56ms | 1.17s | 231.84ms | 1.46s | 223.85ms | 267.22ms | 205.08ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 287.40ms | 1.75s | 453.82ms | 1.78s (partial) | 474.43ms | 384.01ms | 259.50ms |

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
