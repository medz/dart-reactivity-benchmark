# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.54s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.56s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.02s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 155.55ms | 2.29s | 197.22ms | 1.33s | 211.27ms | 299.15ms | 171.34ms (fail) |
| broadPropagation | 317.30ms | 4.37s | 452.72ms | 79.32ms (fail) | 452.33ms | 534.08ms | 6.06ms (fail) |
| deepPropagation | 95.97ms | 1.56s | 176.22ms | 1.87s (fail) | 174.59ms | 174.82ms | 144.08ms (fail) |
| diamond | 216.65ms | 2.42s | 278.90ms | 2.45s (fail) | 280.55ms | 365.58ms | 181.09ms (fail) |
| mux | 349.36ms | 1.84s | 405.73ms | 546.48ms (fail) | 445.06ms | 443.24ms | 196.11ms (fail) |
| repeatedObservers | 50.39ms | 231.96ms | 39.85ms | 363.68ms (fail) | 44.65ms | 86.74ms | 52.83ms (fail) |
| triangle | 75.42ms | 768.34ms | 99.08ms | 891.97ms (fail) | 102.14ms | 118.80ms | 77.23ms (fail) |
| unstable | 70.78ms | 349.38ms | 70.47ms | 597.14ms (fail) | 79.12ms | 102.79ms | 335.55ms (fail) |
| molBench | 484.47ms | 568.52ms | 488.19ms | 12.82ms | 486.44ms | 502.11ms | 1.00ms |
| create_signals | 26.38ms | 72.56ms | 4.63ms | 23.69ms | 25.28ms | 74.77ms | 59.70ms |
| comp_0to1 | 10.75ms | 26.74ms | 17.67ms | 13.38ms | 11.10ms | 36.24ms | 53.64ms |
| comp_1to1 | 24.78ms | 38.51ms | 12.57ms | 26.62ms | 27.46ms | 40.93ms | 55.68ms |
| comp_2to1 | 15.51ms | 23.54ms | 17.29ms | 23.08ms | 8.66ms | 12.52ms | 36.08ms |
| comp_4to1 | 3.57ms | 18.12ms | 7.99ms | 7.08ms | 2.87ms | 14.09ms | 16.46ms |
| comp_1000to1 | 6μs | 16μs | 4μs | 3μs | 5μs | 25μs | 59μs |
| comp_1to2 | 15.34ms | 36.06ms | 15.21ms | 9.50ms | 18.64ms | 33.76ms | 44.49ms |
| comp_1to4 | 23.37ms | 18.06ms | 20.61ms | 23.95ms | 5.85ms | 40.75ms | 43.62ms |
| comp_1to8 | 6.89ms | 20.75ms | 6.82ms | 4.89ms | 7.10ms | 20.19ms | 42.13ms |
| comp_1to1000 | 4.13ms | 16.23ms | 3.84ms | 4.46ms | 4.89ms | 15.89ms | 38.21ms |
| update_1to1 | 5.75ms | 25.26ms | 8.65ms | 82.11ms | 8.87ms | 15.33ms | 5.69ms |
| update_2to1 | 2.92ms | 11.78ms | 4.26ms | 41.92ms | 4.46ms | 7.86ms | 2.83ms |
| update_4to1 | 1.50ms | 6.41ms | 3.76ms | 20.14ms | 2.25ms | 3.85ms | 1.44ms |
| update_1000to1 | 14μs | 71μs | 36μs | 173μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.87ms | 12.15ms | 4.67ms | 41.97ms | 4.48ms | 7.68ms | 2.84ms |
| update_1to4 | 1.45ms | 5.95ms | 2.18ms | 20.35ms | 2.30ms | 3.83ms | 1.45ms |
| update_1to1000 | 30μs | 176μs | 50μs | 107μs | 40μs | 166μs | 371μs |
| cellx1000 | 7.11ms | 75.39ms | 10.08ms | N/A | 10.32ms | 11.79ms | 5.69ms |
| cellx2500 | 19.04ms | 260.43ms | 31.25ms | N/A | 27.34ms | 32.16ms | 24.50ms |
| cellx5000 | 47.68ms | 575.90ms | 88.92ms | N/A | 68.72ms | 76.08ms | 61.59ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.65ms | 2.01s | 456.08ms | 2.16s | 518.52ms | 366.28ms | 235.99ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 188.19ms | 1.51s | 268.43ms | 1.51s (partial) | 282.20ms | 246.94ms | 195.35ms |
| 1000x12 - 4 sources - dynamic (large) | 348.60ms | 1.97s | 3.69s | 2.58s (partial) | 3.75s | 466.15ms | 349.49ms |
| 1000x5 - 25 sources (wide dense) | 497.31ms | 3.60s | 2.72s | 4.17s | 3.41s | 728.87ms | 482.96ms |
| 5x500 - 3 sources (deep) | 197.38ms | 1.14s | 229.59ms | 1.33s | 225.33ms | 270.25ms | 202.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 288.19ms | 1.69s | 454.08ms | 1.78s (partial) | 486.61ms | 387.57ms | 257.24ms |

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
