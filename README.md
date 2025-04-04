# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.73s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.25s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.11s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.68s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.09s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.96ms | 2.38s | 196.70ms | 1.25s | 1.40s | 208.43ms | 271.11ms | 150.53ms (fail) |
| broadPropagation | 354.20ms | 4.35s | 463.83ms | 4.99s | 82.61ms (fail) | 461.02ms | 511.37ms | 6.21ms (fail) |
| deepPropagation | 126.80ms | 1.55s | 178.47ms | 4.00s | 1.97s (fail) | 178.28ms | 170.92ms | 141.84ms (fail) |
| diamond | 236.05ms | 2.46s | 279.53ms | 14.03s (fail) | 2.76s (fail) | 286.07ms | 354.74ms | 191.48ms (fail) |
| mux | 374.68ms | 1.86s | 392.67ms | 1.02s | 578.06ms (fail) | 405.80ms | 437.33ms | 188.10ms (fail) |
| repeatedObservers | 45.53ms | 239.96ms | 38.21ms | 9.74s | 392.56ms (fail) | 47.10ms | 78.16ms | 52.21ms (fail) |
| triangle | 86.19ms | 787.58ms | 104.60ms | 4.52s | 972.64ms (fail) | 102.02ms | 115.23ms | 77.57ms (fail) |
| unstable | 61.76ms | 357.65ms | 70.37ms | 7.64s | 619.44ms (fail) | 72.33ms | 94.03ms | 335.99ms (fail) |
| molBench | 492.27ms | 484.63ms | 492.09ms | 5.90s | 11.99ms | 487.48ms | 493.66ms | 1.01ms |
| create_signals | 28.38ms | 68.51ms | 5.09ms | 13.34ms | 28.65ms | 25.82ms | 55.16ms | 59.77ms |
| comp_0to1 | 6.90ms | 26.52ms | 20.76ms | 13.68ms | 16.90ms | 12.55ms | 28.23ms | 53.12ms |
| comp_1to1 | 4.25ms | 38.84ms | 14.49ms | 99.56ms | 22.75ms | 28.43ms | 46.38ms | 55.90ms |
| comp_2to1 | 2.27ms | 33.74ms | 10.46ms | 72.37ms | 23.74ms | 11.76ms | 42.53ms | 36.71ms |
| comp_4to1 | 8.59ms | 13.99ms | 11.82ms | 85.23ms | 6.18ms | 1.90ms | 4.69ms | 16.54ms |
| comp_1000to1 | 5μs | 15μs | 4μs | 59.32ms | 3μs | 9μs | 31μs | 41μs |
| comp_1to2 | 18.88ms | 38.69ms | 23.57ms | 66.89ms | 13.79ms | 19.04ms | 27.84ms | 46.43ms |
| comp_1to4 | 10.36ms | 19.99ms | 21.67ms | 99.18ms | 27.08ms | 7.51ms | 35.29ms | 44.08ms |
| comp_1to8 | 5.48ms | 22.47ms | 17.57ms | 116.37ms | 6.17ms | 6.59ms | 26.39ms | 43.05ms |
| comp_1to1000 | 3.66ms | 15.36ms | 21.67ms | 47.90ms | 4.11ms | 4.51ms | 15.10ms | 38.50ms |
| update_1to1 | 9.72ms | 22.75ms | 8.25ms | N/A | 83.31ms | 9.22ms | 16.39ms | 5.78ms |
| update_2to1 | 5.31ms | 10.68ms | 4.06ms | N/A | 42.11ms | 4.57ms | 8.38ms | 3.31ms |
| update_4to1 | 2.77ms | 6.23ms | 2.04ms | N/A | 20.52ms | 2.33ms | 4.12ms | 1.46ms |
| update_1000to1 | 10μs | 52μs | 20μs | N/A | 174μs | 23μs | 41μs | 15μs |
| update_1to2 | 5.65ms | 10.69ms | 4.08ms | N/A | 41.78ms | 4.91ms | 8.43ms | 2.94ms |
| update_1to4 | 2.43ms | 5.31ms | 3.47ms | N/A | 20.50ms | 2.33ms | 4.11ms | 1.45ms |
| update_1to1000 | 48μs | 174μs | 41μs | N/A | 121μs | 44μs | 151μs | 388μs |
| cellx1000 | 7.35ms | 72.98ms | 9.47ms | N/A | N/A | 9.83ms | 11.66ms | 6.06ms |
| cellx2500 | 20.50ms | 251.76ms | 26.23ms | N/A | N/A | 35.64ms | 32.04ms | 30.06ms |
| cellx5000 | 49.05ms | 557.86ms | 65.47ms | N/A | N/A | 78.09ms | 73.64ms | 70.30ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.63ms | 2.03s | 476.07ms | N/A | 2.25s | 510.79ms | 345.42ms | 245.77ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.88ms | 1.56s | 286.84ms | N/A | 1.50s (partial) | 280.38ms | 244.52ms | 198.67ms |
| 1000x12 - 4 sources - dynamic (large) | 282.16ms | 1.92s | 3.55s | N/A | 2.56s (partial) | 3.74s | 464.80ms | 353.85ms |
| 1000x5 - 25 sources (wide dense) | 421.13ms | 3.59s | 2.62s | N/A | 4.47s | 3.42s | 591.18ms | 497.46ms |
| 5x500 - 3 sources (deep) | 193.62ms | 1.16s | 231.35ms | N/A | 1.38s | 230.41ms | 257.57ms | 206.06ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.28ms | 1.73s | 451.74ms | N/A | 1.79s (partial) | 473.76ms | 383.84ms | 256.69ms |

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
