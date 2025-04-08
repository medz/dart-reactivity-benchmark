# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.06s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.04s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.28s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.50s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.66ms | 2.33s | 206.65ms | 1.25s | 1.42s | 207.92ms | 274.70ms | 150.95ms (fail) |
| broadPropagation | 362.63ms | 4.27s | 458.97ms | 4.99s | 79.92ms (fail) | 454.81ms | 508.14ms | 6.23ms (fail) |
| deepPropagation | 122.55ms | 1.52s | 178.22ms | 4.00s | 1.85s (fail) | 183.41ms | 169.50ms | 143.56ms (fail) |
| diamond | 233.60ms | 2.41s | 277.84ms | 14.03s (fail) | 2.55s (fail) | 293.41ms | 364.78ms | 181.48ms (fail) |
| mux | 380.09ms | 1.80s | 382.20ms | 1.02s | 567.45ms (fail) | 410.94ms | 447.93ms | 191.03ms (fail) |
| repeatedObservers | 45.57ms | 231.20ms | 37.94ms | 9.74s | 386.86ms (fail) | 46.82ms | 78.18ms | 53.13ms (fail) |
| triangle | 86.34ms | 773.26ms | 98.19ms | 4.52s | 908.53ms (fail) | 103.84ms | 118.52ms | 77.42ms (fail) |
| unstable | 61.42ms | 357.35ms | 71.08ms | 7.64s | 662.88ms (fail) | 73.15ms | 93.95ms | 341.49ms (fail) |
| molBench | 491.46ms | 579.70ms | 493.19ms | 5.90s | 12.08ms | 485.63ms | 492.81ms | 948μs |
| create_signals | 26.40ms | 68.35ms | 4.74ms | 13.34ms | 24.05ms | 25.10ms | 96.52ms | 71.34ms |
| comp_0to1 | 7.83ms | 25.75ms | 22.66ms | 13.68ms | 14.42ms | 11.89ms | 32.85ms | 57.57ms |
| comp_1to1 | 4.17ms | 42.35ms | 12.02ms | 99.56ms | 29.76ms | 27.32ms | 52.63ms | 64.26ms |
| comp_2to1 | 2.25ms | 21.34ms | 21.09ms | 72.37ms | 24.50ms | 22.86ms | 16.46ms | 45.85ms |
| comp_4to1 | 8.19ms | 16.30ms | 7.31ms | 85.23ms | 5.61ms | 6.37ms | 8.94ms | 18.84ms |
| comp_1000to1 | 4μs | 22μs | 4μs | 59.32ms | 4μs | 5μs | 250μs | 42μs |
| comp_1to2 | 9.82ms | 33.83ms | 15.73ms | 66.89ms | 14.20ms | 23.59ms | 34.37ms | 49.30ms |
| comp_1to4 | 11.83ms | 28.45ms | 24.68ms | 99.18ms | 24.59ms | 7.36ms | 18.01ms | 49.23ms |
| comp_1to8 | 4.90ms | 19.64ms | 7.09ms | 116.37ms | 8.18ms | 6.86ms | 24.02ms | 44.97ms |
| comp_1to1000 | 3.51ms | 15.75ms | 6.46ms | 47.90ms | 4.05ms | 4.46ms | 14.87ms | 39.95ms |
| update_1to1 | 11.32ms | 22.48ms | 8.26ms | N/A | 89.51ms | 9.27ms | 16.09ms | 5.73ms |
| update_2to1 | 5.01ms | 11.41ms | 4.07ms | N/A | 43.56ms | 4.56ms | 7.93ms | 2.87ms |
| update_4to1 | 2.79ms | 5.41ms | 2.05ms | N/A | 20.65ms | 2.31ms | 4.04ms | 1.43ms |
| update_1000to1 | 10μs | 59μs | 20μs | N/A | 212μs | 33μs | 41μs | 15μs |
| update_1to2 | 5.66ms | 11.73ms | 4.13ms | N/A | 42.55ms | 4.90ms | 7.97ms | 2.94ms |
| update_1to4 | 2.46ms | 6.63ms | 2.06ms | N/A | 20.80ms | 2.29ms | 4.08ms | 1.43ms |
| update_1to1000 | 39μs | 168μs | 773μs | N/A | 119μs | 44μs | 270μs | 400μs |
| cellx1000 | 7.27ms | 74.90ms | 10.60ms | N/A | N/A | 10.62ms | 13.17ms | 6.04ms |
| cellx2500 | 19.58ms | 220.17ms | 41.08ms | N/A | N/A | 32.12ms | 35.97ms | 33.99ms |
| cellx5000 | 41.81ms | 555.25ms | 111.74ms | N/A | N/A | 60.59ms | 89.81ms | 81.56ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.24ms | 2.04s | 451.60ms | N/A | 2.22s | 503.70ms | 351.51ms | 240.68ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.52ms | 1.53s | 276.02ms | N/A | 1.48s (partial) | 277.25ms | 243.08ms | 202.93ms |
| 1000x12 - 4 sources - dynamic (large) | 277.32ms | 1.84s | 3.51s | N/A | 2.50s (partial) | 3.76s | 469.45ms | 356.39ms |
| 1000x5 - 25 sources (wide dense) | 408.76ms | 3.55s | 2.63s | N/A | 4.30s | 3.27s | 599.01ms | 501.23ms |
| 5x500 - 3 sources (deep) | 192.56ms | 1.17s | 233.41ms | N/A | 1.41s | 228.50ms | 254.08ms | 207.21ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.27ms | 1.70s | 448.89ms | N/A | 1.79s (partial) | 480.98ms | 383.69ms | 258.76ms |

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
