# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.24s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.00s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.35s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.61s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.64s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.70ms | 2.29s | 199.19ms | 1.25s | 1.47s | 211.70ms | 271.13ms | 154.24ms (fail) |
| broadPropagation | 358.23ms | 4.26s | 464.76ms | 4.99s | 84.43ms (fail) | 449.86ms | 505.83ms | 6.33ms (fail) |
| deepPropagation | 128.23ms | 1.54s | 179.88ms | 4.00s | 1.92s (fail) | 175.31ms | 168.87ms | 145.16ms (fail) |
| diamond | 237.62ms | 2.41s | 277.35ms | 14.03s (fail) | 2.66s (fail) | 290.78ms | 350.09ms | 184.77ms (fail) |
| mux | 376.88ms | 1.84s | 380.80ms | 1.02s | 579.11ms (fail) | 410.89ms | 436.20ms | 193.64ms (fail) |
| repeatedObservers | 44.94ms | 229.47ms | 38.75ms | 9.74s | 393.73ms (fail) | 46.63ms | 79.06ms | 52.10ms (fail) |
| triangle | 86.50ms | 769.05ms | 98.77ms | 4.52s | 957.47ms (fail) | 102.87ms | 115.45ms | 78.99ms (fail) |
| unstable | 64.81ms | 353.78ms | 72.32ms | 7.64s | 612.00ms (fail) | 74.72ms | 94.22ms | 337.21ms (fail) |
| molBench | 491.91ms | 580.77ms | 494.59ms | 5.90s | 11.64ms | 484.75ms | 492.36ms | 1.27ms |
| create_signals | 26.33ms | 73.95ms | 4.54ms | 13.34ms | 23.38ms | 25.27ms | 72.52ms | 58.77ms |
| comp_0to1 | 6.86ms | 24.01ms | 18.09ms | 13.68ms | 13.90ms | 11.08ms | 30.27ms | 52.28ms |
| comp_1to1 | 4.09ms | 17.23ms | 11.18ms | 99.56ms | 24.38ms | 27.92ms | 38.81ms | 52.75ms |
| comp_2to1 | 2.23ms | 18.49ms | 12.20ms | 72.37ms | 31.66ms | 22.69ms | 23.93ms | 35.99ms |
| comp_4to1 | 10.83ms | 34.65ms | 8.83ms | 85.23ms | 11.19ms | 5.88ms | 13.63ms | 16.18ms |
| comp_1000to1 | 3μs | 15μs | 5μs | 59.32ms | 5μs | 6μs | 15μs | 41μs |
| comp_1to2 | 11.31ms | 38.25ms | 15.59ms | 66.89ms | 12.62ms | 15.61ms | 30.92ms | 44.33ms |
| comp_1to4 | 13.07ms | 22.80ms | 24.01ms | 99.18ms | 23.23ms | 7.31ms | 14.64ms | 43.04ms |
| comp_1to8 | 4.73ms | 24.58ms | 6.84ms | 116.37ms | 4.68ms | 7.01ms | 19.35ms | 42.62ms |
| comp_1to1000 | 3.15ms | 16.96ms | 6.23ms | 47.90ms | 4.36ms | 4.52ms | 14.26ms | 37.77ms |
| update_1to1 | 11.32ms | 21.79ms | 8.17ms | N/A | 89.05ms | 9.15ms | 16.26ms | 5.75ms |
| update_2to1 | 5.03ms | 11.02ms | 4.06ms | N/A | 46.08ms | 4.56ms | 7.93ms | 3.45ms |
| update_4to1 | 2.83ms | 5.70ms | 2.08ms | N/A | 21.95ms | 2.31ms | 4.51ms | 1.45ms |
| update_1000to1 | 29μs | 54μs | 20μs | N/A | 184μs | 24μs | 40μs | 15μs |
| update_1to2 | 5.62ms | 10.75ms | 4.05ms | N/A | 44.86ms | 4.89ms | 8.10ms | 2.96ms |
| update_1to4 | 2.24ms | 5.33ms | 2.09ms | N/A | 21.98ms | 2.31ms | 4.04ms | 1.49ms |
| update_1to1000 | 41μs | 164μs | 1.02ms | N/A | 122μs | 44μs | 150μs | 399μs |
| cellx1000 | 7.27ms | 69.81ms | 9.89ms | N/A | N/A | 10.40ms | 11.37ms | 5.29ms |
| cellx2500 | 19.74ms | 249.21ms | 30.57ms | N/A | N/A | 31.59ms | 32.79ms | 28.22ms |
| cellx5000 | 43.85ms | 557.12ms | 83.57ms | N/A | N/A | 63.95ms | 79.44ms | 63.10ms |
| 10x5 - 2 sources - read 20.0% (simple) | 250.29ms | 2.02s | 439.18ms | N/A | 2.28s | 506.62ms | 380.39ms | 264.07ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 204.58ms | 1.55s | 271.58ms | N/A | 1.50s (partial) | 278.99ms | 242.49ms | 229.25ms |
| 1000x12 - 4 sources - dynamic (large) | 287.00ms | 1.99s | 3.55s | N/A | 2.51s (partial) | 4.01s | 462.41ms | 345.37ms |
| 1000x5 - 25 sources (wide dense) | 457.94ms | 3.65s | 2.60s | N/A | 4.08s | 3.35s | 593.12ms | 505.20ms |
| 5x500 - 3 sources (deep) | 188.28ms | 1.15s | 226.60ms | N/A | 1.37s | 223.94ms | 250.23ms | 205.38ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.46ms | 1.75s | 451.17ms | N/A | 1.83s (partial) | 476.54ms | 375.50ms | 266.72ms |

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
