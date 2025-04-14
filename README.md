# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.76s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.46s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.12s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.63s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.03s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.71ms | 2.32s | 197.89ms | 1.25s | 1.42s | 213.15ms | 274.02ms | 155.98ms (fail) |
| broadPropagation | 358.64ms | 4.29s | 473.32ms | 4.99s | 81.42ms (fail) | 456.47ms | 499.16ms | 6.13ms (fail) |
| deepPropagation | 126.99ms | 1.49s | 174.99ms | 4.00s | 1.89s (fail) | 179.27ms | 170.15ms | 142.03ms (fail) |
| diamond | 238.88ms | 2.42s | 276.14ms | 14.03s (fail) | 2.64s (fail) | 289.83ms | 352.36ms | 195.03ms (fail) |
| mux | 373.80ms | 1.83s | 380.85ms | 1.02s | 575.82ms (fail) | 414.97ms | 444.54ms | 188.24ms (fail) |
| repeatedObservers | 45.62ms | 238.26ms | 38.33ms | 9.74s | 381.86ms (fail) | 46.51ms | 78.55ms | 52.37ms (fail) |
| triangle | 86.91ms | 756.91ms | 98.73ms | 4.52s | 921.47ms (fail) | 123.74ms | 116.89ms | 75.78ms (fail) |
| unstable | 59.86ms | 351.68ms | 70.68ms | 7.64s | 617.87ms (fail) | 73.64ms | 94.01ms | 336.93ms (fail) |
| molBench | 491.94ms | 579.47ms | 492.29ms | 5.90s | 12.20ms | 390.88ms | 493.45ms | 1.06ms |
| create_signals | 28.58ms | 92.14ms | 4.70ms | 13.34ms | 24.42ms | 26.38ms | 98.23ms | 67.25ms |
| comp_0to1 | 8.09ms | 15.61ms | 22.50ms | 13.68ms | 14.19ms | 11.77ms | 38.64ms | 60.42ms |
| comp_1to1 | 4.32ms | 41.24ms | 14.43ms | 99.56ms | 22.76ms | 26.63ms | 44.06ms | 57.43ms |
| comp_2to1 | 2.31ms | 33.37ms | 16.72ms | 72.37ms | 23.45ms | 8.80ms | 44.04ms | 37.18ms |
| comp_4to1 | 8.87ms | 17.21ms | 14.92ms | 85.23ms | 6.59ms | 1.91ms | 17.07ms | 17.02ms |
| comp_1000to1 | 4μs | 20μs | 5μs | 59.32ms | 3μs | 5μs | 26μs | 42μs |
| comp_1to2 | 23.95ms | 35.30ms | 27.41ms | 66.89ms | 13.17ms | 19.83ms | 38.73ms | 46.36ms |
| comp_1to4 | 5.06ms | 20.27ms | 24.18ms | 99.18ms | 25.53ms | 14.53ms | 22.05ms | 48.14ms |
| comp_1to8 | 5.18ms | 23.38ms | 11.54ms | 116.37ms | 5.04ms | 6.95ms | 26.07ms | 44.48ms |
| comp_1to1000 | 3.39ms | 15.08ms | 7.67ms | 47.90ms | 4.42ms | 4.58ms | 19.64ms | 37.58ms |
| update_1to1 | 11.24ms | 25.19ms | 8.27ms | N/A | 88.14ms | 9.24ms | 21.40ms | 5.77ms |
| update_2to1 | 4.87ms | 12.00ms | 4.05ms | N/A | 44.72ms | 4.59ms | 9.23ms | 2.88ms |
| update_4to1 | 2.74ms | 6.25ms | 2.05ms | N/A | 21.63ms | 2.35ms | 5.38ms | 1.43ms |
| update_1000to1 | 10μs | 67μs | 20μs | N/A | 181μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.60ms | 11.42ms | 4.14ms | N/A | 44.97ms | 4.91ms | 8.21ms | 2.95ms |
| update_1to4 | 2.42ms | 5.60ms | 2.04ms | N/A | 21.46ms | 2.36ms | 4.16ms | 1.44ms |
| update_1to1000 | 49μs | 163μs | 873μs | N/A | 102μs | 45μs | 166μs | 384μs |
| cellx1000 | 7.95ms | 88.05ms | 10.93ms | N/A | N/A | 10.45ms | 15.02ms | 7.20ms |
| cellx2500 | 20.90ms | 279.72ms | 38.33ms | N/A | N/A | 40.08ms | 52.76ms | 33.51ms |
| cellx5000 | 60.17ms | 627.98ms | 104.56ms | N/A | N/A | 98.93ms | 150.65ms | 99.71ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.61ms | 2.00s | 441.79ms | N/A | 2.28s | 512.66ms | 349.61ms | 244.40ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.93ms | 1.56s | 279.17ms | N/A | 1.47s (partial) | 277.91ms | 244.75ms | 201.45ms |
| 1000x12 - 4 sources - dynamic (large) | 294.89ms | 1.92s | 3.56s | N/A | 2.51s (partial) | 3.76s | 477.81ms | 361.37ms |
| 1000x5 - 25 sources (wide dense) | 412.73ms | 3.59s | 2.62s | N/A | 4.34s | 3.44s | 592.99ms | 514.09ms |
| 5x500 - 3 sources (deep) | 192.04ms | 1.21s | 232.51ms | N/A | 1.70s | 224.49ms | 268.42ms | 211.06ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.61ms | 1.73s | 456.19ms | N/A | 1.83s (partial) | 474.84ms | 389.03ms | 262.96ms |

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
