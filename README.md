# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.38s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.97s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.40s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.46s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.39s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.21ms | 2.33s | 208.48ms | 1.25s | 1.47s | 210.41ms | 275.18ms | 150.38ms (fail) |
| broadPropagation | 351.79ms | 4.21s | 469.03ms | 4.99s | 86.23ms (fail) | 460.15ms | 508.88ms | 5.85ms (fail) |
| deepPropagation | 126.80ms | 1.51s | 176.45ms | 4.00s | 2.01s (fail) | 178.82ms | 174.84ms | 140.60ms (fail) |
| diamond | 235.46ms | 2.41s | 279.23ms | 14.03s (fail) | 2.84s (fail) | 288.19ms | 361.32ms | 184.20ms (fail) |
| mux | 370.41ms | 1.82s | 382.18ms | 1.02s | 578.84ms (fail) | 409.84ms | 442.45ms | 193.35ms (fail) |
| repeatedObservers | 45.34ms | 228.98ms | 38.38ms | 9.74s | 413.33ms (fail) | 46.29ms | 78.47ms | 52.06ms (fail) |
| triangle | 85.22ms | 770.19ms | 100.25ms | 4.52s | 946.28ms (fail) | 107.02ms | 118.74ms | 78.81ms (fail) |
| unstable | 59.88ms | 348.49ms | 70.35ms | 7.64s | 644.00ms (fail) | 73.84ms | 95.05ms | 337.71ms (fail) |
| molBench | 491.57ms | 579.79ms | 491.82ms | 5.90s | 11.62ms | 488.93ms | 492.58ms | 1.21ms |
| create_signals | 26.56ms | 89.89ms | 4.71ms | 13.34ms | 23.48ms | 24.83ms | 70.60ms | 57.87ms |
| comp_0to1 | 11.40ms | 27.28ms | 17.35ms | 13.68ms | 13.68ms | 11.84ms | 26.25ms | 51.96ms |
| comp_1to1 | 12.72ms | 43.81ms | 14.36ms | 99.56ms | 21.42ms | 24.46ms | 41.25ms | 52.75ms |
| comp_2to1 | 5.62ms | 33.67ms | 16.11ms | 72.37ms | 30.77ms | 14.65ms | 35.62ms | 35.19ms |
| comp_4to1 | 9.22ms | 27.21ms | 14.16ms | 85.23ms | 7.04ms | 6.25ms | 4.50ms | 15.75ms |
| comp_1000to1 | 4μs | 27μs | 4μs | 59.32ms | 4μs | 9μs | 18μs | 42μs |
| comp_1to2 | 14.57ms | 30.43ms | 15.61ms | 66.89ms | 13.26ms | 13.22ms | 45.38ms | 45.82ms |
| comp_1to4 | 8.71ms | 17.44ms | 32.65ms | 99.18ms | 30.50ms | 9.65ms | 43.11ms | 43.77ms |
| comp_1to8 | 3.73ms | 19.71ms | 6.73ms | 116.37ms | 5.07ms | 7.56ms | 28.48ms | 42.85ms |
| comp_1to1000 | 3.51ms | 15.06ms | 6.29ms | 47.90ms | 4.13ms | 6.17ms | 15.66ms | 38.17ms |
| update_1to1 | 11.33ms | 22.96ms | 8.17ms | N/A | 86.01ms | 9.25ms | 16.20ms | 5.73ms |
| update_2to1 | 4.90ms | 11.48ms | 4.05ms | N/A | 43.22ms | 4.56ms | 8.14ms | 2.89ms |
| update_4to1 | 2.81ms | 6.04ms | 2.08ms | N/A | 20.86ms | 2.34ms | 4.05ms | 1.50ms |
| update_1000to1 | 27μs | 66μs | 20μs | N/A | 219μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.61ms | 11.31ms | 4.07ms | N/A | 43.39ms | 4.93ms | 7.90ms | 2.97ms |
| update_1to4 | 2.48ms | 5.92ms | 2.10ms | N/A | 20.70ms | 2.35ms | 5.72ms | 1.50ms |
| update_1to1000 | 47μs | 189μs | 810μs | N/A | 147μs | 43μs | 153μs | 369μs |
| cellx1000 | 7.34ms | 73.74ms | 9.48ms | N/A | N/A | 9.47ms | 11.54ms | 5.29ms |
| cellx2500 | 20.41ms | 272.49ms | 25.64ms | N/A | N/A | 32.05ms | 34.94ms | 24.99ms |
| cellx5000 | 47.26ms | 588.29ms | 67.08ms | N/A | N/A | 59.61ms | 100.93ms | 61.26ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.04ms | 2.00s | 439.35ms | N/A | 2.34s | 511.76ms | 362.55ms | 240.32ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 181.53ms | 1.56s | 271.36ms | N/A | 1.54s (partial) | 279.62ms | 250.19ms | 201.66ms |
| 1000x12 - 4 sources - dynamic (large) | 281.95ms | 1.85s | 3.52s | N/A | 2.60s (partial) | 3.81s | 480.92ms | 347.76ms |
| 1000x5 - 25 sources (wide dense) | 401.42ms | 3.65s | 2.59s | N/A | 4.17s | 3.56s | 591.65ms | 502.81ms |
| 5x500 - 3 sources (deep) | 189.72ms | 1.16s | 227.34ms | N/A | 1.53s | 246.94ms | 267.91ms | 206.72ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.75ms | 1.73s | 448.76ms | N/A | 1.84s (partial) | 481.05ms | 378.42ms | 257.45ms |

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
