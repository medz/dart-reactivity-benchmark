# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.33s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.07s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.51s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.29s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.43ms | 2.32s | 206.33ms | 1.25s | 1.37s | 211.61ms | 276.85ms | 170.11ms (fail) |
| broadPropagation | 354.03ms | 4.23s | 456.11ms | 4.99s | 79.89ms (fail) | 458.59ms | 508.93ms | 6.31ms (fail) |
| deepPropagation | 124.44ms | 1.52s | 179.63ms | 4.00s | 1.93s (fail) | 178.68ms | 178.40ms | 140.01ms (fail) |
| diamond | 239.65ms | 2.38s | 279.78ms | 14.03s (fail) | 2.58s (fail) | 290.30ms | 351.21ms | 192.44ms (fail) |
| mux | 374.57ms | 1.80s | 380.49ms | 1.02s | 572.25ms (fail) | 413.68ms | 442.63ms | 192.06ms (fail) |
| repeatedObservers | 44.81ms | 226.68ms | 38.65ms | 9.74s | 381.70ms (fail) | 45.83ms | 77.89ms | 53.20ms (fail) |
| triangle | 84.90ms | 766.54ms | 99.09ms | 4.52s | 953.35ms (fail) | 106.89ms | 116.77ms | 77.53ms (fail) |
| unstable | 60.39ms | 347.87ms | 70.98ms | 7.64s | 641.07ms (fail) | 75.40ms | 94.92ms | 337.72ms (fail) |
| molBench | 492.32ms | 578.83ms | 490.95ms | 5.90s | 11.86ms | 487.95ms | 492.63ms | 1.03ms |
| create_signals | 28.36ms | 71.32ms | 4.89ms | 13.34ms | 24.41ms | 28.62ms | 61.40ms | 64.28ms |
| comp_0to1 | 7.99ms | 26.81ms | 18.27ms | 13.68ms | 14.13ms | 13.11ms | 30.07ms | 65.30ms |
| comp_1to1 | 4.46ms | 37.33ms | 12.00ms | 99.56ms | 22.47ms | 27.46ms | 42.71ms | 55.44ms |
| comp_2to1 | 2.46ms | 53.47ms | 17.44ms | 72.37ms | 28.73ms | 9.60ms | 37.99ms | 38.24ms |
| comp_4to1 | 8.91ms | 18.00ms | 20.01ms | 85.23ms | 9.70ms | 1.92ms | 4.72ms | 17.21ms |
| comp_1000to1 | 3μs | 21μs | 6μs | 59.32ms | 6μs | 5μs | 14μs | 42μs |
| comp_1to2 | 11.20ms | 37.57ms | 15.10ms | 66.89ms | 13.44ms | 19.97ms | 45.66ms | 45.81ms |
| comp_1to4 | 12.42ms | 20.91ms | 26.24ms | 99.18ms | 26.60ms | 12.51ms | 21.86ms | 44.66ms |
| comp_1to8 | 4.74ms | 23.78ms | 6.96ms | 116.37ms | 6.41ms | 9.35ms | 21.50ms | 44.17ms |
| comp_1to1000 | 3.35ms | 15.31ms | 5.49ms | 47.90ms | 3.98ms | 4.55ms | 15.14ms | 38.67ms |
| update_1to1 | 11.32ms | 24.00ms | 8.15ms | N/A | 86.96ms | 9.31ms | 16.19ms | 5.73ms |
| update_2to1 | 3.31ms | 12.33ms | 4.07ms | N/A | 43.06ms | 4.59ms | 7.92ms | 2.90ms |
| update_4to1 | 2.89ms | 6.15ms | 2.12ms | N/A | 20.61ms | 2.34ms | 4.32ms | 1.49ms |
| update_1000to1 | 20μs | 67μs | 20μs | N/A | 188μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.25ms | 11.21ms | 4.10ms | N/A | 43.73ms | 5.02ms | 8.15ms | 2.98ms |
| update_1to4 | 1.33ms | 6.09ms | 2.08ms | N/A | 21.03ms | 2.33ms | 4.33ms | 1.51ms |
| update_1to1000 | 43μs | 204μs | 195μs | N/A | 123μs | 44μs | 165μs | 386μs |
| cellx1000 | 7.27ms | 76.34ms | 12.19ms | N/A | N/A | 9.79ms | 16.68ms | 6.04ms |
| cellx2500 | 21.43ms | 268.55ms | 36.73ms | N/A | N/A | 37.23ms | 42.98ms | 28.26ms |
| cellx5000 | 50.87ms | 630.89ms | 117.06ms | N/A | N/A | 85.14ms | 106.78ms | 76.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.86ms | 2.00s | 441.41ms | N/A | 2.27s | 512.27ms | 348.80ms | 250.15ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.32ms | 1.52s | 272.20ms | N/A | 1.50s (partial) | 281.81ms | 242.53ms | 200.32ms |
| 1000x12 - 4 sources - dynamic (large) | 281.49ms | 1.97s | 3.55s | N/A | 2.73s (partial) | 3.83s | 473.20ms | 350.78ms |
| 1000x5 - 25 sources (wide dense) | 413.86ms | 3.61s | 2.60s | N/A | 4.29s | 3.35s | 598.41ms | 497.39ms |
| 5x500 - 3 sources (deep) | 190.16ms | 1.16s | 233.81ms | N/A | 1.76s | 231.31ms | 255.26ms | 204.30ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.31ms | 1.73s | 459.23ms | N/A | 1.86s (partial) | 488.16ms | 381.10ms | 266.20ms |

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
