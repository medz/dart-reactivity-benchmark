# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.27s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.77s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.40s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.93s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.38ms | 2.35s | 205.70ms | 1.25s | 1.37s | 209.58ms | 269.83ms | 149.13ms (fail) |
| broadPropagation | 363.65ms | 4.46s | 451.46ms | 4.99s | 79.01ms (fail) | 458.59ms | 503.92ms | 6.04ms (fail) |
| deepPropagation | 124.56ms | 1.54s | 180.21ms | 4.00s | 1.88s (fail) | 178.01ms | 168.21ms | 138.43ms (fail) |
| diamond | 236.32ms | 2.48s | 278.26ms | 14.03s (fail) | 2.54s (fail) | 283.83ms | 361.28ms | 184.30ms (fail) |
| mux | 376.49ms | 1.86s | 384.83ms | 1.02s | 563.78ms (fail) | 405.52ms | 437.31ms | 192.81ms (fail) |
| repeatedObservers | 44.82ms | 232.84ms | 38.13ms | 9.74s | 386.05ms (fail) | 45.66ms | 81.58ms | 52.08ms (fail) |
| triangle | 85.60ms | 783.35ms | 99.08ms | 4.52s | 902.40ms (fail) | 102.64ms | 114.64ms | 85.01ms (fail) |
| unstable | 62.73ms | 366.68ms | 70.51ms | 7.64s | 618.15ms (fail) | 73.20ms | 96.04ms | 344.82ms (fail) |
| molBench | 493.13ms | 583.37ms | 491.56ms | 5.90s | 12.24ms | 483.51ms | 492.56ms | 1.43ms |
| create_signals | 23.01ms | 86.05ms | 4.88ms | 13.34ms | 23.13ms | 24.80ms | 93.09ms | 66.41ms |
| comp_0to1 | 8.48ms | 35.35ms | 17.29ms | 13.68ms | 13.18ms | 10.73ms | 36.43ms | 55.55ms |
| comp_1to1 | 4.11ms | 17.37ms | 11.62ms | 99.56ms | 22.45ms | 24.51ms | 50.55ms | 53.61ms |
| comp_2to1 | 2.25ms | 22.14ms | 14.56ms | 72.37ms | 31.11ms | 20.70ms | 36.69ms | 37.52ms |
| comp_4to1 | 7.66ms | 26.17ms | 11.13ms | 85.23ms | 9.71ms | 6.42ms | 14.05ms | 16.11ms |
| comp_1000to1 | 3μs | 34μs | 4μs | 59.32ms | 5μs | 5μs | 30μs | 43μs |
| comp_1to2 | 11.02ms | 38.65ms | 17.15ms | 66.89ms | 12.85ms | 17.88ms | 26.89ms | 45.07ms |
| comp_1to4 | 12.57ms | 30.94ms | 19.89ms | 99.18ms | 25.50ms | 7.50ms | 27.04ms | 44.25ms |
| comp_1to8 | 4.09ms | 22.11ms | 7.42ms | 116.37ms | 6.39ms | 6.48ms | 25.70ms | 43.35ms |
| comp_1to1000 | 3.15ms | 15.15ms | 6.75ms | 47.90ms | 5.94ms | 4.42ms | 14.99ms | 38.72ms |
| update_1to1 | 11.26ms | 24.54ms | 8.24ms | N/A | 83.36ms | 9.22ms | 16.13ms | 5.71ms |
| update_2to1 | 4.32ms | 11.67ms | 4.07ms | N/A | 51.10ms | 4.60ms | 7.93ms | 2.90ms |
| update_4to1 | 2.78ms | 5.78ms | 2.05ms | N/A | 21.70ms | 2.31ms | 4.15ms | 1.50ms |
| update_1000to1 | 10μs | 63μs | 20μs | N/A | 182μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.57ms | 11.77ms | 4.09ms | N/A | 43.08ms | 4.91ms | 8.11ms | 2.94ms |
| update_1to4 | 2.43ms | 5.58ms | 2.04ms | N/A | 20.37ms | 2.28ms | 4.02ms | 1.46ms |
| update_1to1000 | 48μs | 169μs | 465μs | N/A | 123μs | 43μs | 158μs | 393μs |
| cellx1000 | 7.52ms | 79.12ms | 9.57ms | N/A | N/A | 9.46ms | 11.22ms | 5.08ms |
| cellx2500 | 20.29ms | 224.19ms | 25.34ms | N/A | N/A | 30.70ms | 30.41ms | 25.59ms |
| cellx5000 | 46.42ms | 581.15ms | 68.16ms | N/A | N/A | 57.92ms | 75.61ms | 62.79ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.89ms | 2.04s | 466.08ms | N/A | 2.15s | 506.03ms | 357.69ms | 239.36ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.12ms | 1.55s | 282.86ms | N/A | 1.43s (partial) | 276.55ms | 252.83ms | 200.40ms |
| 1000x12 - 4 sources - dynamic (large) | 280.64ms | 1.81s | 3.55s | N/A | 2.45s (partial) | 3.76s | 459.86ms | 334.63ms |
| 1000x5 - 25 sources (wide dense) | 405.90ms | 3.60s | 2.60s | N/A | 4.04s | 3.53s | 591.86ms | 500.08ms |
| 5x500 - 3 sources (deep) | 188.24ms | 1.15s | 231.22ms | N/A | 1.34s | 226.31ms | 256.28ms | 205.23ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.76ms | 1.72s | 449.97ms | N/A | 1.80s (partial) | 486.80ms | 378.01ms | 256.92ms |

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
