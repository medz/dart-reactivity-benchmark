# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.32s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.99s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.45s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.10s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 190.29ms | 2.27s | 204.35ms | 1.25s | 1.50s | 214.69ms | 274.71ms | 149.56ms (fail) |
| broadPropagation | 361.91ms | 4.24s | 457.34ms | 4.99s | 86.94ms (fail) | 453.54ms | 503.48ms | 5.93ms (fail) |
| deepPropagation | 119.81ms | 1.54s | 182.73ms | 4.00s | 1.99s (fail) | 179.88ms | 174.84ms | 141.00ms (fail) |
| diamond | 237.03ms | 2.40s | 280.08ms | 14.03s (fail) | 2.77s (fail) | 291.89ms | 354.70ms | 179.41ms (fail) |
| mux | 371.28ms | 1.78s | 387.26ms | 1.02s | 555.67ms (fail) | 408.17ms | 449.90ms | 188.47ms (fail) |
| repeatedObservers | 45.52ms | 232.89ms | 38.25ms | 9.74s | 386.45ms (fail) | 46.90ms | 77.89ms | 52.57ms (fail) |
| triangle | 85.52ms | 767.25ms | 99.62ms | 4.52s | 936.19ms (fail) | 103.83ms | 117.82ms | 77.20ms (fail) |
| unstable | 60.90ms | 352.89ms | 70.62ms | 7.64s | 616.47ms (fail) | 73.60ms | 94.91ms | 338.07ms (fail) |
| molBench | 491.68ms | 577.32ms | 492.89ms | 5.90s | 12.01ms | 490.18ms | 493.04ms | 959μs |
| create_signals | 26.27ms | 83.11ms | 6.36ms | 13.34ms | 24.33ms | 25.68ms | 92.34ms | 60.47ms |
| comp_0to1 | 7.07ms | 16.04ms | 19.09ms | 13.68ms | 14.15ms | 12.15ms | 34.10ms | 54.32ms |
| comp_1to1 | 4.21ms | 52.00ms | 16.55ms | 99.56ms | 26.60ms | 28.28ms | 51.02ms | 55.89ms |
| comp_2to1 | 2.35ms | 26.26ms | 9.44ms | 72.37ms | 30.48ms | 17.68ms | 47.09ms | 36.88ms |
| comp_4to1 | 8.56ms | 31.73ms | 8.26ms | 85.23ms | 6.72ms | 5.88ms | 18.09ms | 16.23ms |
| comp_1000to1 | 3μs | 27μs | 5μs | 59.32ms | 3μs | 8μs | 16μs | 43μs |
| comp_1to2 | 14.73ms | 34.05ms | 24.45ms | 66.89ms | 11.37ms | 19.70ms | 32.08ms | 46.41ms |
| comp_1to4 | 5.46ms | 21.56ms | 22.10ms | 99.18ms | 25.34ms | 18.19ms | 15.32ms | 45.53ms |
| comp_1to8 | 4.55ms | 22.68ms | 11.58ms | 116.37ms | 4.95ms | 6.79ms | 20.25ms | 44.30ms |
| comp_1to1000 | 3.33ms | 15.47ms | 7.28ms | 47.90ms | 3.86ms | 4.46ms | 14.93ms | 39.60ms |
| update_1to1 | 11.30ms | 21.61ms | 8.25ms | N/A | 87.00ms | 9.15ms | 16.11ms | 5.73ms |
| update_2to1 | 5.01ms | 10.66ms | 4.05ms | N/A | 44.66ms | 4.60ms | 7.91ms | 2.96ms |
| update_4to1 | 2.76ms | 5.71ms | 2.10ms | N/A | 21.24ms | 2.36ms | 4.04ms | 1.49ms |
| update_1000to1 | 10μs | 52μs | 20μs | N/A | 188μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.63ms | 10.77ms | 4.12ms | N/A | 43.30ms | 4.90ms | 8.08ms | 2.98ms |
| update_1to4 | 2.45ms | 5.33ms | 2.09ms | N/A | 21.62ms | 2.32ms | 4.03ms | 1.48ms |
| update_1to1000 | 50μs | 177μs | 662μs | N/A | 146μs | 44μs | 146μs | 398μs |
| cellx1000 | 7.37ms | 71.70ms | 10.11ms | N/A | N/A | 9.61ms | 11.28ms | 5.55ms |
| cellx2500 | 20.11ms | 249.58ms | 25.21ms | N/A | N/A | 31.18ms | 31.95ms | 27.91ms |
| cellx5000 | 43.39ms | 591.30ms | 63.12ms | N/A | N/A | 60.40ms | 72.84ms | 56.03ms |
| 10x5 - 2 sources - read 20.0% (simple) | 231.06ms | 2.04s | 443.92ms | N/A | 2.33s | 531.89ms | 357.56ms | 247.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.10ms | 1.56s | 279.39ms | N/A | 1.52s (partial) | 286.59ms | 244.61ms | 211.18ms |
| 1000x12 - 4 sources - dynamic (large) | 281.97ms | 1.90s | 3.52s | N/A | 2.62s (partial) | 3.78s | 469.09ms | 334.38ms |
| 1000x5 - 25 sources (wide dense) | 410.51ms | 3.58s | 2.60s | N/A | 4.13s | 3.49s | 595.05ms | 516.11ms |
| 5x500 - 3 sources (deep) | 188.60ms | 1.18s | 228.07ms | N/A | 1.47s | 226.63ms | 252.71ms | 203.07ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.15ms | 1.75s | 452.39ms | N/A | 1.80s (partial) | 491.75ms | 381.98ms | 261.01ms |

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
