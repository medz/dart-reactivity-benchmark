# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.47s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.32s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.34ms | 2.28s | 205.45ms | 1.25s | 1.39s | 206.95ms | 270.66ms | 149.64ms (fail) |
| broadPropagation | 354.68ms | 4.20s | 459.25ms | 4.99s | 80.63ms (fail) | 455.97ms | 510.49ms | 6.08ms (fail) |
| deepPropagation | 125.14ms | 1.52s | 180.68ms | 4.00s | 1.91s (fail) | 172.19ms | 171.70ms | 146.77ms (fail) |
| diamond | 235.90ms | 2.34s | 281.67ms | 14.03s (fail) | 2.59s (fail) | 296.62ms | 370.94ms | 188.82ms (fail) |
| mux | 375.69ms | 1.82s | 381.81ms | 1.02s | 585.97ms (fail) | 407.88ms | 446.15ms | 200.80ms (fail) |
| repeatedObservers | 45.38ms | 232.28ms | 38.37ms | 9.74s | 417.93ms (fail) | 47.02ms | 77.92ms | 52.14ms (fail) |
| triangle | 86.15ms | 759.07ms | 105.83ms | 4.52s | 901.21ms (fail) | 105.08ms | 118.77ms | 77.16ms (fail) |
| unstable | 60.96ms | 339.72ms | 71.22ms | 7.64s | 616.21ms (fail) | 73.84ms | 94.11ms | 335.90ms (fail) |
| molBench | 492.91ms | 576.25ms | 492.62ms | 5.90s | 11.61ms | 485.56ms | 492.43ms | 1.03ms |
| create_signals | 27.86ms | 81.47ms | 4.86ms | 13.34ms | 23.33ms | 26.01ms | 56.02ms | 65.02ms |
| comp_0to1 | 8.05ms | 28.28ms | 23.77ms | 13.68ms | 17.93ms | 12.11ms | 25.98ms | 56.31ms |
| comp_1to1 | 4.32ms | 31.94ms | 11.69ms | 99.56ms | 26.29ms | 28.36ms | 39.38ms | 56.18ms |
| comp_2to1 | 2.27ms | 32.57ms | 9.97ms | 72.37ms | 25.47ms | 8.77ms | 23.98ms | 40.22ms |
| comp_4to1 | 7.82ms | 17.86ms | 14.95ms | 85.23ms | 6.72ms | 1.96ms | 17.42ms | 18.59ms |
| comp_1000to1 | 4μs | 24μs | 4μs | 59.32ms | 4μs | 5μs | 15μs | 64μs |
| comp_1to2 | 10.41ms | 33.96ms | 24.35ms | 66.89ms | 13.61ms | 16.41ms | 36.29ms | 45.91ms |
| comp_1to4 | 11.88ms | 16.65ms | 21.64ms | 99.18ms | 25.26ms | 14.65ms | 19.18ms | 48.44ms |
| comp_1to8 | 4.95ms | 19.98ms | 9.09ms | 116.37ms | 8.21ms | 7.00ms | 22.99ms | 43.01ms |
| comp_1to1000 | 3.61ms | 14.58ms | 9.20ms | 47.90ms | 4.36ms | 4.54ms | 14.36ms | 38.03ms |
| update_1to1 | 8.42ms | 22.73ms | 8.31ms | N/A | 85.51ms | 9.28ms | 16.10ms | 5.74ms |
| update_2to1 | 4.62ms | 11.10ms | 4.14ms | N/A | 45.06ms | 4.61ms | 7.94ms | 3.40ms |
| update_4to1 | 2.77ms | 5.99ms | 2.11ms | N/A | 21.36ms | 2.34ms | 4.06ms | 1.43ms |
| update_1000to1 | 10μs | 73μs | 20μs | N/A | 175μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.62ms | 11.80ms | 4.10ms | N/A | 44.96ms | 5.00ms | 8.08ms | 2.93ms |
| update_1to4 | 2.45ms | 6.40ms | 2.06ms | N/A | 20.93ms | 2.28ms | 4.05ms | 1.43ms |
| update_1to1000 | 48μs | 168μs | 2.61ms | N/A | 126μs | 43μs | 151μs | 372μs |
| cellx1000 | 7.27ms | 77.67ms | 10.13ms | N/A | N/A | 9.67ms | 12.45ms | 5.56ms |
| cellx2500 | 20.80ms | 289.17ms | 32.20ms | N/A | N/A | 34.47ms | 40.53ms | 28.26ms |
| cellx5000 | 47.42ms | 612.40ms | 89.55ms | N/A | N/A | 72.95ms | 117.12ms | 68.82ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.20ms | 2.05s | 445.31ms | N/A | 2.21s | 505.74ms | 366.32ms | 248.79ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.53ms | 1.58s | 270.33ms | N/A | 1.49s (partial) | 277.80ms | 254.73ms | 206.02ms |
| 1000x12 - 4 sources - dynamic (large) | 281.88ms | 1.98s | 3.53s | N/A | 2.45s (partial) | 3.74s | 469.95ms | 363.91ms |
| 1000x5 - 25 sources (wide dense) | 408.55ms | 3.59s | 2.60s | N/A | 4.12s | 3.44s | 598.04ms | 505.78ms |
| 5x500 - 3 sources (deep) | 193.20ms | 1.19s | 232.50ms | N/A | 1.38s | 226.93ms | 257.34ms | 207.27ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.31ms | 1.71s | 445.37ms | N/A | 1.79s (partial) | 486.97ms | 388.84ms | 275.06ms |

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
