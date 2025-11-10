# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.48s |
| 🥈 | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.49s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.11s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.53s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.99s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 138.58ms | 131.43ms | 2.35s | 201.52ms | 1.47s | 212.64ms | 238.41ms | 164.33ms (fail) |
| broadPropagation | 272.09ms | 262.65ms | 4.35s | 457.72ms | 83.76ms (fail) | 458.31ms | 438.97ms | 6.66ms (fail) |
| deepPropagation | 80.73ms | 81.88ms | 1.54s | 177.88ms | 1.96s (fail) | 176.86ms | 131.30ms | 147.15ms (fail) |
| diamond | 179.33ms | 164.73ms | 2.40s | 280.06ms | 2.71s (fail) | 283.19ms | 312.92ms | 188.45ms (fail) |
| mux | 330.39ms | 323.77ms | 1.84s | 394.69ms | 569.90ms (fail) | 415.35ms | 402.06ms | 197.29ms (fail) |
| repeatedObservers | 49.03ms | 30.07ms | 240.48ms | 41.17ms | 397.09ms (fail) | 45.66ms | 86.84ms | 53.16ms (fail) |
| triangle | 67.32ms | 67.94ms | 773.57ms | 98.68ms | 952.30ms (fail) | 106.11ms | 96.21ms | 81.05ms (fail) |
| unstable | 62.08ms | 58.13ms | 347.56ms | 74.25ms | 649.91ms (fail) | 77.16ms | 100.30ms | 342.75ms (fail) |
| molBench | 484.18ms | 484.51ms | 584.63ms | 487.01ms | 12.23ms | 485.95ms | 497.91ms | 1.19ms |
| create_signals | 25.72ms | 22.41ms | 84.03ms | 5.17ms | 23.90ms | 25.62ms | 77.16ms | 61.91ms |
| comp_0to1 | 17.07ms | 17.03ms | 45.94ms | 17.63ms | 13.57ms | 11.48ms | 34.81ms | 56.57ms |
| comp_1to1 | 12.88ms | 12.19ms | 31.28ms | 15.04ms | 27.40ms | 29.16ms | 47.15ms | 57.71ms |
| comp_2to1 | 2.63ms | 2.57ms | 11.83ms | 13.11ms | 24.05ms | 16.63ms | 31.51ms | 38.21ms |
| comp_4to1 | 1.54ms | 5.81ms | 19.27ms | 11.38ms | 6.08ms | 6.45ms | 31.87ms | 16.80ms |
| comp_1000to1 | 5μs | 4μs | 23μs | 4μs | 3μs | 8μs | 14μs | 44μs |
| comp_1to2 | 16.30ms | 15.71ms | 38.80ms | 27.86ms | 11.19ms | 15.19ms | 33.79ms | 49.13ms |
| comp_1to4 | 17.66ms | 17.09ms | 24.91ms | 28.92ms | 23.70ms | 7.08ms | 26.35ms | 47.32ms |
| comp_1to8 | 6.20ms | 6.18ms | 21.22ms | 5.91ms | 5.23ms | 6.38ms | 16.88ms | 46.48ms |
| comp_1to1000 | 3.18ms | 3.38ms | 15.52ms | 6.81ms | 4.34ms | 4.28ms | 13.93ms | 42.39ms |
| update_1to1 | 5.58ms | 11.87ms | 24.65ms | 8.32ms | 90.11ms | 10.96ms | 14.56ms | 6.01ms |
| update_2to1 | 5.97ms | 5.72ms | 11.83ms | 4.44ms | 44.33ms | 5.10ms | 7.18ms | 3.08ms |
| update_4to1 | 1.42ms | 2.79ms | 6.74ms | 2.11ms | 21.18ms | 2.76ms | 3.59ms | 1.53ms |
| update_1000to1 | 13μs | 19μs | 61μs | 21μs | 205μs | 27μs | 36μs | 15μs |
| update_1to2 | 2.67ms | 5.67ms | 12.39ms | 4.19ms | 44.90ms | 5.20ms | 7.32ms | 3.04ms |
| update_1to4 | 1.73ms | 2.83ms | 5.89ms | 2.11ms | 21.62ms | 2.69ms | 3.60ms | 1.52ms |
| update_1to1000 | 47μs | 46μs | 183μs | 889μs | 167μs | 46μs | 146μs | 428μs |
| cellx1000 | 6.50ms | 6.02ms | 75.95ms | 9.63ms | N/A | 9.64ms | 10.45ms | 5.46ms |
| cellx2500 | 18.45ms | 19.55ms | 262.00ms | 30.69ms | N/A | 32.69ms | 28.48ms | 27.88ms |
| cellx5000 | 53.47ms | 60.05ms | 555.85ms | 79.20ms | N/A | 62.52ms | 80.39ms | 67.96ms |
| 10x5 - 2 sources - read 20.0% (simple) | 198.57ms | 199.04ms | 2.06s | 448.16ms | 2.26s | 509.84ms | 318.48ms | 239.36ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.19ms | 159.50ms | 1.53s | 275.00ms | 1.53s (partial) | 279.46ms | 218.74ms | 197.12ms |
| 1000x12 - 4 sources - dynamic (large) | 276.24ms | 301.30ms | 1.96s | 3.76s | 2.56s (partial) | 3.75s | 435.86ms | 345.43ms |
| 1000x5 - 25 sources (wide dense) | 553.00ms | 569.59ms | 3.48s | 2.74s | 4.23s | 3.56s | 801.52ms | 512.39ms |
| 5x500 - 3 sources (deep) | 178.54ms | 182.29ms | 1.13s | 234.09ms | 1.43s | 223.77ms | 227.73ms | 211.37ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 250.84ms | 253.59ms | 1.68s | 464.96ms | 1.80s (partial) | 485.87ms | 334.72ms | 263.36ms |

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
