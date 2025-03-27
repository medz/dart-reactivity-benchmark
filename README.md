# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.73s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.36s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.08s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.41s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.86s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.73ms | 2.30s | 204.55ms | 1.25s | 1.43s | 214.02ms | 277.17ms | 151.90ms (fail) |
| broadPropagation | 361.32ms | 4.20s | 473.22ms | 4.99s | 84.62ms (fail) | 455.87ms | 510.71ms | 6.43ms (fail) |
| deepPropagation | 123.81ms | 1.52s | 179.37ms | 4.00s | 1.91s (fail) | 183.49ms | 168.48ms | 156.45ms (fail) |
| diamond | 237.41ms | 2.40s | 278.06ms | 14.03s (fail) | 2.71s (fail) | 291.90ms | 357.99ms | 186.81ms (fail) |
| mux | 377.07ms | 1.88s | 385.06ms | 1.02s | 588.49ms (fail) | 410.84ms | 443.91ms | 190.93ms (fail) |
| repeatedObservers | 44.88ms | 226.98ms | 38.16ms | 9.74s | 403.38ms (fail) | 46.95ms | 80.24ms | 52.22ms (fail) |
| triangle | 86.20ms | 762.49ms | 98.48ms | 4.52s | 967.74ms (fail) | 101.02ms | 119.11ms | 77.84ms (fail) |
| unstable | 60.72ms | 345.65ms | 70.63ms | 7.64s | 621.23ms (fail) | 75.72ms | 93.89ms | 336.84ms (fail) |
| molBench | 491.93ms | 576.91ms | 491.27ms | 5.90s | 11.69ms | 490.17ms | 492.51ms | 1.25ms |
| create_signals | 28.05ms | 80.92ms | 4.75ms | 13.34ms | 24.25ms | 25.82ms | 76.32ms | 59.56ms |
| comp_0to1 | 7.09ms | 33.31ms | 24.40ms | 13.68ms | 14.13ms | 11.79ms | 47.33ms | 52.42ms |
| comp_1to1 | 4.22ms | 26.49ms | 14.48ms | 99.56ms | 23.66ms | 27.64ms | 47.07ms | 53.85ms |
| comp_2to1 | 2.32ms | 24.17ms | 19.69ms | 72.37ms | 24.24ms | 12.09ms | 24.59ms | 36.31ms |
| comp_4to1 | 10.86ms | 27.81ms | 15.16ms | 85.23ms | 6.45ms | 1.93ms | 13.87ms | 16.46ms |
| comp_1000to1 | 6μs | 21μs | 4μs | 59.32ms | 4μs | 8μs | 17μs | 41μs |
| comp_1to2 | 20.39ms | 36.27ms | 18.21ms | 66.89ms | 13.44ms | 21.16ms | 36.98ms | 46.29ms |
| comp_1to4 | 5.80ms | 18.68ms | 37.54ms | 99.18ms | 26.14ms | 17.87ms | 20.75ms | 48.04ms |
| comp_1to8 | 4.43ms | 20.82ms | 8.95ms | 116.37ms | 5.08ms | 6.92ms | 20.48ms | 42.64ms |
| comp_1to1000 | 3.53ms | 15.12ms | 6.14ms | 47.90ms | 4.31ms | 4.49ms | 14.53ms | 38.18ms |
| update_1to1 | 9.66ms | 26.81ms | 8.17ms | N/A | 86.11ms | 9.27ms | 16.15ms | 5.73ms |
| update_2to1 | 5.14ms | 13.72ms | 4.04ms | N/A | 44.51ms | 4.55ms | 7.92ms | 2.87ms |
| update_4to1 | 2.77ms | 6.68ms | 2.05ms | N/A | 21.73ms | 2.30ms | 4.07ms | 1.48ms |
| update_1000to1 | 21μs | 65μs | 20μs | N/A | 175μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.59ms | 13.67ms | 4.20ms | N/A | 44.18ms | 4.91ms | 8.16ms | 2.93ms |
| update_1to4 | 2.54ms | 6.47ms | 2.05ms | N/A | 21.20ms | 2.31ms | 4.11ms | 1.46ms |
| update_1to1000 | 48μs | 170μs | 243μs | N/A | 97μs | 44μs | 151μs | 379μs |
| cellx1000 | 7.49ms | 70.30ms | 10.53ms | N/A | N/A | 9.50ms | 12.26ms | 5.98ms |
| cellx2500 | 21.25ms | 276.49ms | 35.08ms | N/A | N/A | 31.74ms | 40.43ms | 30.97ms |
| cellx5000 | 52.46ms | 574.31ms | 89.76ms | N/A | N/A | 74.38ms | 114.59ms | 75.34ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.55ms | 1.99s | 439.55ms | N/A | 2.30s | 502.40ms | 357.66ms | 245.83ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.37ms | 1.57s | 280.88ms | N/A | 1.49s (partial) | 278.31ms | 244.31ms | 202.33ms |
| 1000x12 - 4 sources - dynamic (large) | 283.30ms | 1.88s | 3.54s | N/A | 2.47s (partial) | 3.77s | 472.41ms | 354.83ms |
| 1000x5 - 25 sources (wide dense) | 410.02ms | 3.56s | 2.61s | N/A | 4.29s | 3.44s | 586.69ms | 497.84ms |
| 5x500 - 3 sources (deep) | 192.13ms | 1.19s | 232.05ms | N/A | 1.44s | 229.54ms | 256.32ms | 204.95ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 268.04ms | 1.75s | 453.10ms | N/A | 1.77s (partial) | 491.59ms | 387.35ms | 259.23ms |

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
