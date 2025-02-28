# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.20s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.99s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.97s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.71s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.19s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [preact_signals](https://pub.dev/packages/preact_signals) | [mobx](https://github.com/mobxjs/mobx.dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [reactter](https://github.com/2devs-team/reactter) | [signals](https://github.com/rodydavis/signals.dart) | [state_beacon](https://github.com/jinyus/dart_beacon) | [riverpod](https://github.com/rrousselGit/riverpod) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 271.92ms | 204.97ms | 2.33s | 188.03ms | 1.25s | 210.45ms | 173.37ms (fail) | 1.46s |
| broadPropagation | 503.53ms | 463.40ms | 4.31s | 353.21ms | 4.99s | 449.27ms | 6.55ms (fail) | 87.55ms (fail) |
| deepPropagation | 169.25ms | 182.77ms | 1.52s | 124.38ms | 4.00s | 173.52ms | 140.27ms (fail) | 1.95s (fail) |
| diamond | 348.09ms | 284.73ms | 2.43s | 232.30ms | 14.03s (fail) | 293.63ms | 184.50ms (fail) | 2.69s (fail) |
| mux | 439.98ms | 382.46ms | 1.83s | 369.75ms | 1.02s | 410.49ms | 188.15ms (fail) | 587.10ms (fail) |
| repeatedObservers | 78.22ms | 38.88ms | 226.39ms | 44.72ms | 9.74s | 46.72ms | 55.47ms (fail) | 400.66ms (fail) |
| triangle | 116.65ms | 99.52ms | 757.50ms | 82.56ms | 4.52s | 104.36ms | 76.24ms (fail) | 941.16ms (fail) |
| unstable | 93.92ms | 70.72ms | 360.09ms | 59.89ms | 7.64s | 72.71ms | 338.20ms (fail) | 631.53ms (fail) |
| molBench | 493.17ms | 492.99ms | 583.78ms | 492.07ms | 5.90s | 489.36ms | 927μs | 11.24ms |
| create_signals | 71.42ms | 4.60ms | 73.08ms | 25.48ms | 13.34ms | 24.95ms | 68.92ms | 24.71ms |
| comp_0to1 | 28.03ms | 17.76ms | 31.45ms | 7.92ms | 13.68ms | 11.44ms | 51.24ms | 14.18ms |
| comp_1to1 | 27.55ms | 11.61ms | 17.13ms | 4.17ms | 99.56ms | 27.99ms | 58.27ms | 23.48ms |
| comp_2to1 | 41.39ms | 17.82ms | 21.36ms | 2.32ms | 72.37ms | 13.08ms | 41.91ms | 30.97ms |
| comp_4to1 | 4.74ms | 8.42ms | 14.35ms | 10.50ms | 85.23ms | 2.21ms | 16.12ms | 6.65ms |
| comp_1000to1 | 31μs | 6μs | 15μs | 3μs | 59.32ms | 5μs | 41μs | 3μs |
| comp_1to2 | 32.66ms | 16.47ms | 38.03ms | 12.51ms | 66.89ms | 16.86ms | 46.78ms | 11.91ms |
| comp_1to4 | 20.29ms | 25.58ms | 24.08ms | 13.70ms | 99.18ms | 8.99ms | 43.28ms | 23.86ms |
| comp_1to8 | 23.36ms | 6.76ms | 24.09ms | 4.01ms | 116.37ms | 6.84ms | 42.58ms | 5.06ms |
| comp_1to1000 | 14.24ms | 5.39ms | 15.09ms | 3.25ms | 47.90ms | 4.43ms | 37.63ms | 4.36ms |
| update_1to1 | 16.20ms | 8.14ms | 23.84ms | 11.18ms | 9.25ms | 5.73ms | 83.66ms |
| update_2to1 | 7.90ms | 4.06ms | 11.55ms | 4.99ms | 4.61ms | 2.94ms | 41.13ms |
| update_4to1 | 4.03ms | 2.21ms | 6.81ms | 2.77ms | 2.34ms | 1.50ms | 20.26ms |
| update_1000to1 | 39μs | 20μs | 85μs | 17μs | 23μs | 15μs | 186μs |
| update_1to2 | 8.10ms | 4.09ms | 10.92ms | 5.58ms | 4.87ms | 2.93ms | 41.20ms |
| update_1to4 | 4.04ms | 2.09ms | 6.62ms | 2.42ms | 2.33ms | 1.46ms | 20.34ms |
| update_1to1000 | 147μs | 167μs | 192μs | 49μs | 43μs | 381μs | 130μs |
| cellx1000 | 11.21ms | 9.90ms | 78.17ms | 7.11ms | 9.36ms | 5.11ms |
| cellx2500 | 30.83ms | 30.10ms | 264.25ms | 19.12ms | 30.03ms | 23.30ms |
| cellx5000 | 66.81ms | 76.82ms | 568.37ms | 48.15ms | 62.04ms | 64.34ms |
| 10x5 - 2 sources - read 20.0% (simple) | 358.06ms | 440.65ms | 2.02s | 230.42ms | 510.47ms | 237.51ms | 2.35s |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 242.67ms | 271.48ms | 1.58s | 176.00ms | 278.41ms | 200.29ms | 1.56s (partial) |
| 1000x12 - 4 sources - dynamic (large) | 458.11ms | 3.52s | 1.98s | 276.55ms | 3.73s | 338.68ms | 2.58s (partial) |
| 1000x5 - 25 sources (wide dense) | 589.05ms | 2.60s | 3.71s | 398.33ms | 3.27s | 500.01ms | 4.31s |
| 5x500 - 3 sources (deep) | 249.84ms | 230.44ms | 1.14s | 191.99ms | 224.02ms | 227.02ms | 1.43s |
| 100x15 - 6 sources - dynamic (very dynamic) | 375.16ms | 452.11ms | 1.71s | 271.69ms | 469.63ms | 257.60ms | 1.84s (partial) |

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
