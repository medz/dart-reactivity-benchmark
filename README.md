# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.74s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.97s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.63s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.28s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.97s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.16ms | 2.28s | 203.44ms | 1.25s | 1.45s | 207.77ms | 273.32ms | 162.90ms (fail) |
| broadPropagation | 352.20ms | 4.26s | 464.47ms | 4.99s | 85.22ms (fail) | 457.08ms | 505.86ms | 6.72ms (fail) |
| deepPropagation | 122.59ms | 1.52s | 178.38ms | 4.00s | 1.96s (fail) | 179.44ms | 176.35ms | 140.63ms (fail) |
| diamond | 235.53ms | 2.39s | 286.02ms | 14.03s (fail) | 2.77s (fail) | 288.93ms | 352.98ms | 196.85ms (fail) |
| mux | 369.10ms | 1.82s | 384.56ms | 1.02s | 584.96ms (fail) | 429.89ms | 436.57ms | 192.04ms (fail) |
| repeatedObservers | 44.98ms | 228.49ms | 37.81ms | 9.74s | 417.64ms (fail) | 46.20ms | 78.63ms | 52.23ms (fail) |
| triangle | 87.49ms | 771.29ms | 99.43ms | 4.52s | 892.53ms (fail) | 109.74ms | 118.65ms | 77.16ms (fail) |
| unstable | 60.17ms | 347.63ms | 70.31ms | 7.64s | 641.41ms (fail) | 74.08ms | 95.88ms | 344.38ms (fail) |
| molBench | 492.26ms | 577.13ms | 490.59ms | 5.90s | 12.12ms | 488.95ms | 493.34ms | 960μs |
| create_signals | 24.53ms | 76.14ms | 4.72ms | 13.34ms | 22.43ms | 45.70ms | 55.41ms | 60.47ms |
| comp_0to1 | 6.75ms | 22.10ms | 17.66ms | 13.68ms | 15.33ms | 19.68ms | 28.79ms | 54.93ms |
| comp_1to1 | 4.20ms | 40.09ms | 11.58ms | 99.56ms | 29.49ms | 29.38ms | 39.36ms | 55.76ms |
| comp_2to1 | 2.29ms | 22.97ms | 11.53ms | 72.37ms | 24.73ms | 10.38ms | 25.92ms | 36.78ms |
| comp_4to1 | 7.73ms | 13.06ms | 11.84ms | 85.23ms | 6.42ms | 2.46ms | 16.41ms | 16.70ms |
| comp_1000to1 | 4μs | 15μs | 4μs | 59.32ms | 4μs | 6μs | 24μs | 45μs |
| comp_1to2 | 11.99ms | 35.93ms | 29.23ms | 66.89ms | 15.26ms | 16.95ms | 33.21ms | 50.29ms |
| comp_1to4 | 11.62ms | 20.84ms | 29.32ms | 99.18ms | 25.78ms | 10.12ms | 21.30ms | 45.86ms |
| comp_1to8 | 4.82ms | 23.23ms | 9.94ms | 116.37ms | 8.80ms | 10.65ms | 23.40ms | 45.90ms |
| comp_1to1000 | 3.55ms | 14.97ms | 4.53ms | 47.90ms | 4.40ms | 9.07ms | 15.10ms | 40.11ms |
| update_1to1 | 11.31ms | 24.61ms | 8.14ms | N/A | 86.58ms | 9.35ms | 16.69ms | 5.73ms |
| update_2to1 | 4.88ms | 12.04ms | 4.07ms | N/A | 45.09ms | 4.59ms | 7.96ms | 2.90ms |
| update_4to1 | 2.78ms | 6.57ms | 2.11ms | N/A | 20.92ms | 2.34ms | 4.09ms | 1.50ms |
| update_1000to1 | 10μs | 58μs | 20μs | N/A | 200μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.71ms | 12.30ms | 4.08ms | N/A | 44.15ms | 4.98ms | 8.09ms | 2.96ms |
| update_1to4 | 2.56ms | 6.37ms | 2.10ms | N/A | 21.21ms | 2.33ms | 4.02ms | 1.50ms |
| update_1to1000 | 48μs | 166μs | 41μs | N/A | 149μs | 55μs | 291μs | 390μs |
| cellx1000 | 7.30ms | 73.15ms | 12.35ms | N/A | N/A | 9.92ms | 11.51ms | 5.46ms |
| cellx2500 | 19.59ms | 240.39ms | 26.80ms | N/A | N/A | 37.10ms | 32.29ms | 28.54ms |
| cellx5000 | 49.70ms | 537.41ms | 78.71ms | N/A | N/A | 84.58ms | 77.91ms | 86.54ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.09ms | 2.03s | 443.92ms | N/A | 2.32s | 507.46ms | 376.16ms | 244.69ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 181.93ms | 1.55s | 269.59ms | N/A | 1.50s (partial) | 277.69ms | 249.91ms | 203.21ms |
| 1000x12 - 4 sources - dynamic (large) | 284.22ms | 1.89s | 3.50s | N/A | 2.62s (partial) | 4.01s | 463.84ms | 355.88ms |
| 1000x5 - 25 sources (wide dense) | 440.03ms | 3.57s | 2.60s | N/A | 4.20s | 3.53s | 596.81ms | 505.42ms |
| 5x500 - 3 sources (deep) | 193.35ms | 1.14s | 228.57ms | N/A | 1.37s | 229.56ms | 257.57ms | 207.24ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.72ms | 1.74s | 447.45ms | N/A | 1.79s (partial) | 488.85ms | 387.04ms | 260.56ms |

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
