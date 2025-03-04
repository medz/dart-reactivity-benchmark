# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.95s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.50s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.53s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 181.09ms | 2.34s | 204.25ms | 1.25s | 1.39s | 210.78ms | 273.43ms | 148.95ms (fail) |
| broadPropagation | 355.69ms | 4.22s | 453.94ms | 4.99s | 84.71ms (fail) | 465.67ms | 499.26ms | 6.06ms (fail) |
| deepPropagation | 123.28ms | 1.51s | 179.19ms | 4.00s | 1.99s (fail) | 174.49ms | 164.79ms | 140.86ms (fail) |
| diamond | 233.78ms | 2.42s | 283.16ms | 14.03s (fail) | 2.79s (fail) | 292.60ms | 352.67ms | 191.23ms (fail) |
| mux | 361.14ms | 1.85s | 381.93ms | 1.02s | 569.65ms (fail) | 417.44ms | 444.17ms | 193.59ms (fail) |
| repeatedObservers | 43.54ms | 225.38ms | 39.00ms | 9.74s | 391.10ms (fail) | 47.11ms | 78.24ms | 52.16ms (fail) |
| triangle | 84.31ms | 777.55ms | 100.03ms | 4.52s | 905.77ms (fail) | 103.92ms | 127.81ms | 80.35ms (fail) |
| unstable | 61.93ms | 354.97ms | 70.53ms | 7.64s | 628.67ms (fail) | 74.81ms | 94.18ms | 336.57ms (fail) |
| molBench | 485.35ms | 577.27ms | 489.74ms | 5.90s | 12.10ms | 484.86ms | 493.58ms | 983μs |
| create_signals | 24.30ms | 54.04ms | 4.62ms | 13.34ms | 23.52ms | 26.02ms | 53.42ms | 62.25ms |
| comp_0to1 | 8.08ms | 15.22ms | 21.14ms | 13.68ms | 13.27ms | 12.59ms | 25.89ms | 57.77ms |
| comp_1to1 | 4.19ms | 39.94ms | 11.63ms | 99.56ms | 22.55ms | 17.99ms | 43.41ms | 58.25ms |
| comp_2to1 | 2.31ms | 23.51ms | 16.67ms | 72.37ms | 23.96ms | 9.36ms | 31.90ms | 41.82ms |
| comp_4to1 | 7.88ms | 16.45ms | 8.23ms | 85.23ms | 3.86ms | 1.99ms | 8.78ms | 17.91ms |
| comp_1000to1 | 4μs | 21μs | 6μs | 59.32ms | 3μs | 5μs | 15μs | 41μs |
| comp_1to2 | 11.26ms | 31.57ms | 27.15ms | 66.89ms | 14.11ms | 20.06ms | 32.82ms | 46.88ms |
| comp_1to4 | 12.98ms | 28.90ms | 24.38ms | 99.18ms | 24.04ms | 14.89ms | 15.05ms | 47.17ms |
| comp_1to8 | 4.66ms | 19.53ms | 5.95ms | 116.37ms | 5.18ms | 8.33ms | 23.96ms | 43.37ms |
| comp_1to1000 | 4.02ms | 14.51ms | 6.57ms | 47.90ms | 3.97ms | 4.52ms | 14.49ms | 37.65ms |
| update_1to1 | 11.41ms | 23.23ms | 8.27ms | N/A | 85.65ms | 9.21ms | 16.10ms | 5.73ms |
| update_2to1 | 5.00ms | 11.58ms | 4.08ms | N/A | 44.08ms | 4.57ms | 7.89ms | 2.91ms |
| update_4to1 | 2.66ms | 6.16ms | 2.09ms | N/A | 21.04ms | 2.29ms | 4.04ms | 1.49ms |
| update_1000to1 | 19μs | 66μs | 21μs | N/A | 177μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.61ms | 11.60ms | 4.13ms | N/A | 44.16ms | 4.91ms | 8.16ms | 2.97ms |
| update_1to4 | 2.45ms | 5.75ms | 2.08ms | N/A | 22.24ms | 2.29ms | 4.83ms | 1.50ms |
| update_1to1000 | 51μs | 166μs | 1.11ms | N/A | 128μs | 44μs | 147μs | 371μs |
| cellx1000 | 8.02ms | 81.72ms | 11.79ms | N/A | N/A | 9.86ms | 12.45ms | 5.30ms |
| cellx2500 | 21.39ms | 242.23ms | 28.66ms | N/A | N/A | 37.44ms | 43.90ms | 28.51ms |
| cellx5000 | 55.52ms | 619.21ms | 75.43ms | N/A | N/A | 83.65ms | 122.49ms | 90.78ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.64ms | 2.00s | 434.69ms | N/A | 2.21s | 501.15ms | 366.34ms | 246.81ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.91ms | 1.52s | 275.37ms | N/A | 1.45s (partial) | 277.02ms | 251.21ms | 199.67ms |
| 1000x12 - 4 sources - dynamic (large) | 283.38ms | 1.84s | 3.52s | N/A | 2.50s (partial) | 3.88s | 480.63ms | 358.55ms |
| 1000x5 - 25 sources (wide dense) | 405.07ms | 3.68s | 2.57s | N/A | 4.10s | 3.42s | 592.52ms | 500.40ms |
| 5x500 - 3 sources (deep) | 189.66ms | 1.18s | 231.47ms | N/A | 1.39s | 229.31ms | 256.12ms | 198.49ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.09ms | 1.76s | 448.17ms | N/A | 1.77s (partial) | 493.58ms | 387.66ms | 259.30ms |

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
