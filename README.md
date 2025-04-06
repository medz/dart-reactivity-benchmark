# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.30s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.08s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.43s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.79s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 188.65ms | 2.29s | 205.51ms | 1.25s | 1.39s | 208.57ms | 310.75ms | 155.87ms (fail) |
| broadPropagation | 354.88ms | 4.25s | 454.20ms | 4.99s | 82.08ms (fail) | 460.18ms | 505.99ms | 6.01ms (fail) |
| deepPropagation | 126.80ms | 1.55s | 178.50ms | 4.00s | 1.92s (fail) | 176.53ms | 171.71ms | 141.82ms (fail) |
| diamond | 236.09ms | 2.38s | 283.07ms | 14.03s (fail) | 2.66s (fail) | 291.80ms | 360.81ms | 195.18ms (fail) |
| mux | 373.06ms | 1.83s | 385.45ms | 1.02s | 577.61ms (fail) | 410.36ms | 445.24ms | 192.65ms (fail) |
| repeatedObservers | 45.52ms | 223.91ms | 39.43ms | 9.74s | 387.58ms (fail) | 47.34ms | 78.26ms | 52.09ms (fail) |
| triangle | 85.62ms | 779.21ms | 99.92ms | 4.52s | 916.20ms (fail) | 103.54ms | 127.61ms | 78.02ms (fail) |
| unstable | 59.87ms | 346.02ms | 71.14ms | 7.64s | 615.13ms (fail) | 72.26ms | 94.80ms | 337.19ms (fail) |
| molBench | 491.43ms | 576.46ms | 490.80ms | 5.90s | 11.98ms | 484.54ms | 492.81ms | 1.28ms |
| create_signals | 24.45ms | 79.12ms | 4.63ms | 13.34ms | 23.73ms | 24.95ms | 49.98ms | 73.80ms |
| comp_0to1 | 7.90ms | 31.79ms | 18.17ms | 13.68ms | 14.75ms | 12.15ms | 29.32ms | 65.47ms |
| comp_1to1 | 4.19ms | 17.12ms | 11.13ms | 99.56ms | 25.68ms | 27.81ms | 38.10ms | 64.39ms |
| comp_2to1 | 2.30ms | 11.26ms | 13.90ms | 72.37ms | 24.68ms | 12.67ms | 35.14ms | 40.47ms |
| comp_4to1 | 8.48ms | 29.36ms | 15.09ms | 85.23ms | 5.90ms | 3.20ms | 4.68ms | 18.34ms |
| comp_1000to1 | 5μs | 34μs | 6μs | 59.32ms | 4μs | 6μs | 14μs | 46μs |
| comp_1to2 | 13.99ms | 44.16ms | 35.63ms | 66.89ms | 14.77ms | 19.82ms | 33.15ms | 52.11ms |
| comp_1to4 | 9.32ms | 29.38ms | 21.50ms | 99.18ms | 26.14ms | 10.16ms | 19.95ms | 54.41ms |
| comp_1to8 | 5.05ms | 21.69ms | 10.11ms | 116.37ms | 7.50ms | 6.83ms | 22.80ms | 52.63ms |
| comp_1to1000 | 3.53ms | 15.07ms | 4.41ms | 47.90ms | 4.75ms | 4.46ms | 15.15ms | 44.63ms |
| update_1to1 | 11.29ms | 25.96ms | 13.18ms | N/A | 89.17ms | 9.24ms | 16.11ms | 5.73ms |
| update_2to1 | 5.05ms | 12.52ms | 4.06ms | N/A | 43.82ms | 4.58ms | 7.91ms | 2.90ms |
| update_4to1 | 2.78ms | 6.02ms | 2.06ms | N/A | 20.79ms | 2.34ms | 4.06ms | 1.49ms |
| update_1000to1 | 10μs | 62μs | 20μs | N/A | 180μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.62ms | 12.40ms | 4.08ms | N/A | 43.58ms | 4.92ms | 8.24ms | 2.99ms |
| update_1to4 | 2.44ms | 6.03ms | 2.06ms | N/A | 20.53ms | 2.33ms | 4.05ms | 1.50ms |
| update_1to1000 | 48μs | 166μs | 45μs | N/A | 95μs | 44μs | 149μs | 428μs |
| cellx1000 | 7.24ms | 76.74ms | 12.45ms | N/A | N/A | 9.49ms | 11.37ms | 7.51ms |
| cellx2500 | 19.41ms | 225.77ms | 28.24ms | N/A | N/A | 31.28ms | 32.40ms | 26.66ms |
| cellx5000 | 41.50ms | 573.89ms | 82.88ms | N/A | N/A | 63.05ms | 71.40ms | 84.36ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.57ms | 2.04s | 440.52ms | N/A | 2.24s | 508.77ms | 354.97ms | 245.63ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.15ms | 1.55s | 275.63ms | N/A | 1.51s (partial) | 277.50ms | 244.92ms | 202.90ms |
| 1000x12 - 4 sources - dynamic (large) | 280.44ms | 1.84s | 3.59s | N/A | 2.68s (partial) | 3.74s | 469.07ms | 345.28ms |
| 1000x5 - 25 sources (wide dense) | 401.60ms | 3.64s | 2.60s | N/A | 4.28s | 3.59s | 593.17ms | 487.56ms |
| 5x500 - 3 sources (deep) | 187.28ms | 1.16s | 237.90ms | N/A | 1.37s | 227.53ms | 259.52ms | 204.57ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.98ms | 1.76s | 446.46ms | N/A | 1.76s (partial) | 487.57ms | 385.19ms | 258.36ms |

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
