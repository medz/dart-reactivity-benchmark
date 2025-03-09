# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.35s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.87s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.41s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.64s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.40ms | 2.33s | 208.10ms | 1.25s | 1.43s | 212.59ms | 273.43ms | 150.49ms (fail) |
| broadPropagation | 357.10ms | 4.19s | 460.86ms | 4.99s | 80.49ms (fail) | 451.38ms | 502.57ms | 5.70ms (fail) |
| deepPropagation | 124.88ms | 1.52s | 178.85ms | 4.00s | 1.91s (fail) | 173.62ms | 170.83ms | 140.92ms (fail) |
| diamond | 238.23ms | 2.39s | 283.56ms | 14.03s (fail) | 2.60s (fail) | 285.46ms | 367.43ms | 189.56ms (fail) |
| mux | 373.63ms | 1.80s | 382.97ms | 1.02s | 589.85ms (fail) | 406.87ms | 439.00ms | 189.72ms (fail) |
| repeatedObservers | 44.84ms | 234.35ms | 38.79ms | 9.74s | 417.19ms (fail) | 46.67ms | 78.15ms | 53.18ms (fail) |
| triangle | 84.49ms | 763.77ms | 99.78ms | 4.52s | 1.01s (fail) | 102.86ms | 119.55ms | 77.83ms (fail) |
| unstable | 60.31ms | 345.01ms | 71.04ms | 7.64s | 617.80ms (fail) | 73.64ms | 97.54ms | 336.46ms (fail) |
| molBench | 491.58ms | 580.60ms | 491.30ms | 5.90s | 11.38ms | 488.61ms | 493.54ms | 1.16ms |
| create_signals | 23.55ms | 69.56ms | 4.71ms | 13.34ms | 23.61ms | 27.12ms | 70.58ms | 60.28ms |
| comp_0to1 | 6.70ms | 23.86ms | 17.61ms | 13.68ms | 13.74ms | 11.73ms | 25.47ms | 53.11ms |
| comp_1to1 | 4.13ms | 17.17ms | 12.58ms | 99.56ms | 20.70ms | 27.58ms | 27.07ms | 54.65ms |
| comp_2to1 | 2.23ms | 14.93ms | 21.36ms | 72.37ms | 25.39ms | 9.55ms | 37.95ms | 36.13ms |
| comp_4to1 | 8.58ms | 23.12ms | 8.67ms | 85.23ms | 6.49ms | 1.94ms | 4.62ms | 16.79ms |
| comp_1000to1 | 3μs | 15μs | 5μs | 59.32ms | 3μs | 5μs | 14μs | 42μs |
| comp_1to2 | 10.46ms | 30.28ms | 16.44ms | 66.89ms | 13.31ms | 15.98ms | 26.77ms | 48.08ms |
| comp_1to4 | 13.27ms | 23.88ms | 29.61ms | 99.18ms | 23.70ms | 14.72ms | 30.85ms | 45.20ms |
| comp_1to8 | 3.93ms | 22.54ms | 9.07ms | 116.37ms | 4.97ms | 7.33ms | 23.32ms | 44.41ms |
| comp_1to1000 | 3.21ms | 14.99ms | 8.49ms | 47.90ms | 3.82ms | 4.50ms | 14.64ms | 39.53ms |
| update_1to1 | 11.24ms | 21.99ms | 8.37ms | N/A | 89.13ms | 9.21ms | 16.26ms | 5.73ms |
| update_2to1 | 4.79ms | 10.84ms | 4.09ms | N/A | 42.80ms | 4.59ms | 7.93ms | 2.89ms |
| update_4to1 | 2.74ms | 5.78ms | 2.03ms | N/A | 20.24ms | 2.30ms | 4.06ms | 1.48ms |
| update_1000to1 | 19μs | 54μs | 35μs | N/A | 204μs | 22μs | 40μs | 14μs |
| update_1to2 | 5.59ms | 11.02ms | 4.90ms | N/A | 41.98ms | 4.91ms | 8.14ms | 2.93ms |
| update_1to4 | 2.42ms | 5.29ms | 2.05ms | N/A | 21.32ms | 2.31ms | 4.28ms | 1.47ms |
| update_1to1000 | 50μs | 187μs | 2.58ms | N/A | 146μs | 43μs | 153μs | 381μs |
| cellx1000 | 7.33ms | 69.33ms | 12.09ms | N/A | N/A | 9.50ms | 12.36ms | 5.12ms |
| cellx2500 | 19.61ms | 240.05ms | 30.89ms | N/A | N/A | 32.16ms | 41.28ms | 25.70ms |
| cellx5000 | 43.08ms | 531.14ms | 88.64ms | N/A | N/A | 63.55ms | 113.34ms | 79.06ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.58ms | 2.00s | 440.85ms | N/A | 2.22s | 508.62ms | 389.77ms | 239.65ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.00ms | 1.55s | 274.20ms | N/A | 1.47s (partial) | 276.01ms | 253.57ms | 198.64ms |
| 1000x12 - 4 sources - dynamic (large) | 277.82ms | 1.94s | 3.38s | N/A | 2.50s (partial) | 3.78s | 470.14ms | 334.10ms |
| 1000x5 - 25 sources (wide dense) | 413.17ms | 3.71s | 2.60s | N/A | 4.35s | 3.57s | 592.85ms | 488.16ms |
| 5x500 - 3 sources (deep) | 192.84ms | 1.15s | 228.59ms | N/A | 1.34s | 225.44ms | 255.64ms | 203.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.37ms | 1.76s | 443.49ms | N/A | 1.75s (partial) | 483.76ms | 381.52ms | 251.59ms |

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
