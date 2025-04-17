# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.75s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.96s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.48s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.95s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 183.94ms | 2.31s | 202.54ms | 1.25s | 1.43s | 210.97ms | 275.49ms | 148.76ms (fail) |
| broadPropagation | 359.82ms | 4.27s | 454.14ms | 4.99s | 81.80ms (fail) | 462.93ms | 501.62ms | 6.24ms (fail) |
| deepPropagation | 128.75ms | 1.53s | 177.82ms | 4.00s | 1.91s (fail) | 179.91ms | 171.01ms | 138.81ms (fail) |
| diamond | 236.03ms | 2.40s | 278.88ms | 14.03s (fail) | 2.65s (fail) | 290.12ms | 353.21ms | 190.73ms (fail) |
| mux | 371.78ms | 1.83s | 383.28ms | 1.02s | 563.33ms (fail) | 409.52ms | 433.97ms | 190.00ms (fail) |
| repeatedObservers | 45.28ms | 231.99ms | 39.48ms | 9.74s | 375.22ms (fail) | 46.83ms | 79.44ms | 52.19ms (fail) |
| triangle | 86.40ms | 778.08ms | 100.13ms | 4.52s | 909.34ms (fail) | 105.91ms | 126.61ms | 79.29ms (fail) |
| unstable | 60.58ms | 344.26ms | 71.06ms | 7.64s | 616.73ms (fail) | 73.13ms | 94.02ms | 335.62ms (fail) |
| molBench | 493.25ms | 580.22ms | 491.11ms | 5.90s | 11.65ms | 488.71ms | 492.49ms | 1.14ms |
| create_signals | 28.36ms | 67.20ms | 4.63ms | 13.34ms | 23.45ms | 25.40ms | 92.69ms | 59.42ms |
| comp_0to1 | 8.02ms | 20.37ms | 17.81ms | 13.68ms | 13.76ms | 12.04ms | 34.92ms | 52.17ms |
| comp_1to1 | 4.17ms | 44.76ms | 14.57ms | 99.56ms | 22.91ms | 28.25ms | 48.68ms | 53.79ms |
| comp_2to1 | 2.27ms | 33.28ms | 16.53ms | 72.37ms | 23.67ms | 13.94ms | 10.86ms | 35.94ms |
| comp_4to1 | 8.46ms | 27.59ms | 15.22ms | 85.23ms | 6.78ms | 4.80ms | 17.64ms | 16.29ms |
| comp_1000to1 | 3μs | 15μs | 7μs | 59.32ms | 3μs | 10μs | 28μs | 40μs |
| comp_1to2 | 19.71ms | 39.51ms | 25.87ms | 66.89ms | 13.28ms | 15.15ms | 35.18ms | 44.47ms |
| comp_1to4 | 6.25ms | 19.33ms | 25.37ms | 99.18ms | 24.63ms | 7.33ms | 20.80ms | 43.52ms |
| comp_1to8 | 7.80ms | 22.64ms | 6.11ms | 116.37ms | 4.60ms | 6.67ms | 24.51ms | 42.76ms |
| comp_1to1000 | 3.44ms | 15.20ms | 6.18ms | 47.90ms | 4.40ms | 4.47ms | 14.79ms | 37.94ms |
| update_1to1 | 10.59ms | 22.24ms | 8.25ms | N/A | 88.18ms | 9.22ms | 16.18ms | 5.74ms |
| update_2to1 | 5.26ms | 11.99ms | 4.06ms | N/A | 43.22ms | 4.53ms | 7.96ms | 2.88ms |
| update_4to1 | 2.78ms | 5.88ms | 2.06ms | N/A | 21.44ms | 2.31ms | 4.05ms | 1.46ms |
| update_1000to1 | 24μs | 67μs | 20μs | N/A | 180μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.61ms | 11.37ms | 4.15ms | N/A | 45.57ms | 4.90ms | 7.91ms | 2.92ms |
| update_1to4 | 2.64ms | 5.36ms | 2.04ms | N/A | 25.78ms | 2.30ms | 4.01ms | 1.46ms |
| update_1to1000 | 45μs | 173μs | 810μs | N/A | 127μs | 44μs | 150μs | 387μs |
| cellx1000 | 10.02ms | 79.16ms | 9.72ms | N/A | N/A | 9.96ms | 12.40ms | 5.71ms |
| cellx2500 | 22.03ms | 279.81ms | 29.65ms | N/A | N/A | 35.90ms | 43.28ms | 27.59ms |
| cellx5000 | 54.99ms | 576.69ms | 79.46ms | N/A | N/A | 81.40ms | 111.31ms | 79.39ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.13ms | 2.02s | 444.00ms | N/A | 2.26s | 509.27ms | 348.03ms | 238.44ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.07ms | 1.53s | 279.82ms | N/A | 1.55s (partial) | 284.86ms | 242.94ms | 202.03ms |
| 1000x12 - 4 sources - dynamic (large) | 305.92ms | 1.97s | 3.50s | N/A | 2.58s (partial) | 3.73s | 465.19ms | 355.83ms |
| 1000x5 - 25 sources (wide dense) | 408.22ms | 3.53s | 2.58s | N/A | 4.38s | 3.41s | 593.02ms | 489.55ms |
| 5x500 - 3 sources (deep) | 190.84ms | 1.16s | 237.71ms | N/A | 1.43s | 223.95ms | 257.20ms | 206.37ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.25ms | 1.71s | 451.94ms | N/A | 1.83s (partial) | 485.33ms | 384.05ms | 260.92ms |

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
