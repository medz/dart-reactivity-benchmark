# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.72s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.54s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.49s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.62ms | 2.32s | 205.94ms | 1.25s | 1.45s | 210.28ms | 275.51ms | 149.98ms (fail) |
| broadPropagation | 357.69ms | 4.22s | 461.51ms | 4.99s | 84.02ms (fail) | 462.26ms | 506.15ms | 6.24ms (fail) |
| deepPropagation | 124.34ms | 1.51s | 180.34ms | 4.00s | 1.94s (fail) | 184.53ms | 178.94ms | 143.55ms (fail) |
| diamond | 238.11ms | 2.40s | 277.99ms | 14.03s (fail) | 2.65s (fail) | 294.71ms | 354.28ms | 179.57ms (fail) |
| mux | 375.60ms | 1.84s | 407.51ms | 1.02s | 601.89ms (fail) | 406.10ms | 445.16ms | 190.27ms (fail) |
| repeatedObservers | 44.88ms | 231.15ms | 38.52ms | 9.74s | 431.94ms (fail) | 46.31ms | 81.60ms | 52.20ms (fail) |
| triangle | 86.17ms | 801.97ms | 98.52ms | 4.52s | 970.45ms (fail) | 105.47ms | 119.07ms | 75.95ms (fail) |
| unstable | 60.11ms | 349.43ms | 70.92ms | 7.64s | 651.03ms (fail) | 76.25ms | 93.93ms | 336.85ms (fail) |
| molBench | 491.48ms | 578.71ms | 491.06ms | 5.90s | 12.12ms | 487.76ms | 492.72ms | 1.14ms |
| create_signals | 26.45ms | 71.21ms | 4.54ms | 13.34ms | 23.23ms | 25.23ms | 51.55ms | 59.75ms |
| comp_0to1 | 7.04ms | 24.42ms | 17.85ms | 13.68ms | 13.36ms | 11.96ms | 28.47ms | 53.16ms |
| comp_1to1 | 4.16ms | 27.64ms | 14.27ms | 99.56ms | 22.60ms | 28.20ms | 44.80ms | 54.45ms |
| comp_2to1 | 2.31ms | 14.79ms | 16.45ms | 72.37ms | 26.98ms | 16.43ms | 25.16ms | 36.20ms |
| comp_4to1 | 10.03ms | 14.44ms | 12.44ms | 85.23ms | 7.06ms | 3.81ms | 22.43ms | 16.43ms |
| comp_1000to1 | 5μs | 16μs | 5μs | 59.32ms | 4μs | 5μs | 15μs | 42μs |
| comp_1to2 | 19.24ms | 36.22ms | 19.04ms | 66.89ms | 12.64ms | 13.18ms | 29.88ms | 45.93ms |
| comp_1to4 | 7.18ms | 22.35ms | 30.35ms | 99.18ms | 24.56ms | 14.11ms | 35.52ms | 44.80ms |
| comp_1to8 | 7.28ms | 20.74ms | 6.21ms | 116.37ms | 4.65ms | 7.71ms | 26.96ms | 44.08ms |
| comp_1to1000 | 3.53ms | 14.96ms | 6.46ms | 47.90ms | 4.06ms | 4.50ms | 15.57ms | 39.32ms |
| update_1to1 | 11.31ms | 21.86ms | 8.17ms | N/A | 87.78ms | 9.18ms | 16.16ms | 5.73ms |
| update_2to1 | 5.07ms | 10.64ms | 4.09ms | N/A | 45.34ms | 4.58ms | 8.49ms | 2.89ms |
| update_4to1 | 2.77ms | 5.44ms | 2.09ms | N/A | 21.74ms | 2.30ms | 4.08ms | 1.44ms |
| update_1000to1 | 19μs | 52μs | 20μs | N/A | 219μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.61ms | 10.65ms | 4.06ms | N/A | 45.84ms | 4.91ms | 8.13ms | 2.96ms |
| update_1to4 | 2.56ms | 5.39ms | 2.04ms | N/A | 21.94ms | 2.30ms | 4.05ms | 1.45ms |
| update_1to1000 | 49μs | 160μs | 688μs | N/A | 147μs | 43μs | 161μs | 382μs |
| cellx1000 | 7.41ms | 75.18ms | 9.58ms | N/A | N/A | 9.63ms | 11.60ms | 5.69ms |
| cellx2500 | 19.87ms | 267.63ms | 26.25ms | N/A | N/A | 34.83ms | 38.64ms | 25.47ms |
| cellx5000 | 45.60ms | 601.99ms | 74.41ms | N/A | N/A | 72.96ms | 86.69ms | 81.04ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.41ms | 1.99s | 440.49ms | N/A | 2.35s | 504.05ms | 353.98ms | 262.08ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.88ms | 1.57s | 277.57ms | N/A | 1.55s (partial) | 282.71ms | 244.46ms | 222.04ms |
| 1000x12 - 4 sources - dynamic (large) | 286.85ms | 1.94s | 3.53s | N/A | 2.61s (partial) | 3.74s | 466.35ms | 341.49ms |
| 1000x5 - 25 sources (wide dense) | 409.29ms | 3.63s | 2.62s | N/A | 4.56s | 3.41s | 593.12ms | 499.62ms |
| 5x500 - 3 sources (deep) | 190.96ms | 1.16s | 231.69ms | N/A | 1.44s | 226.92ms | 252.69ms | 203.45ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.30ms | 1.76s | 446.76ms | N/A | 1.83s (partial) | 474.24ms | 378.53ms | 262.02ms |

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
