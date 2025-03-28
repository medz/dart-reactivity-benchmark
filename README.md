# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.71s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.30s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.00s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.41s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.13s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 184.77ms | 2.30s | 208.28ms | 1.25s | 1.49s | 209.57ms | 273.96ms | 148.59ms (fail) |
| broadPropagation | 352.51ms | 4.24s | 453.47ms | 4.99s | 84.86ms (fail) | 455.74ms | 499.36ms | 5.72ms (fail) |
| deepPropagation | 125.03ms | 1.52s | 180.67ms | 4.00s | 2.02s (fail) | 177.12ms | 176.47ms | 141.51ms (fail) |
| diamond | 239.93ms | 2.39s | 281.48ms | 14.03s (fail) | 2.73s (fail) | 290.31ms | 355.74ms | 186.24ms (fail) |
| mux | 375.36ms | 1.82s | 384.58ms | 1.02s | 565.32ms (fail) | 403.32ms | 448.04ms | 188.78ms (fail) |
| repeatedObservers | 44.79ms | 241.84ms | 39.05ms | 9.74s | 384.17ms (fail) | 46.46ms | 80.16ms | 52.07ms (fail) |
| triangle | 85.84ms | 770.39ms | 100.35ms | 4.52s | 936.94ms (fail) | 101.61ms | 118.71ms | 76.87ms (fail) |
| unstable | 61.76ms | 345.36ms | 71.53ms | 7.64s | 616.22ms (fail) | 73.49ms | 94.96ms | 338.14ms (fail) |
| molBench | 492.08ms | 578.07ms | 491.61ms | 5.90s | 12.06ms | 484.23ms | 493.77ms | 1.04ms |
| create_signals | 26.64ms | 81.25ms | 4.61ms | 13.34ms | 24.17ms | 25.75ms | 54.48ms | 64.14ms |
| comp_0to1 | 7.20ms | 33.23ms | 18.01ms | 13.68ms | 13.46ms | 11.69ms | 28.09ms | 62.02ms |
| comp_1to1 | 4.19ms | 30.08ms | 11.24ms | 99.56ms | 20.25ms | 26.54ms | 44.20ms | 52.93ms |
| comp_2to1 | 2.29ms | 28.94ms | 11.12ms | 72.37ms | 23.91ms | 10.06ms | 36.59ms | 36.30ms |
| comp_4to1 | 7.82ms | 30.44ms | 22.24ms | 85.23ms | 7.16ms | 2.86ms | 4.61ms | 16.21ms |
| comp_1000to1 | 4μs | 16μs | 9μs | 59.32ms | 3μs | 5μs | 18μs | 41μs |
| comp_1to2 | 10.86ms | 40.57ms | 19.32ms | 66.89ms | 13.95ms | 20.40ms | 27.06ms | 44.74ms |
| comp_1to4 | 11.64ms | 22.79ms | 32.35ms | 99.18ms | 24.12ms | 9.10ms | 25.29ms | 43.54ms |
| comp_1to8 | 4.88ms | 24.71ms | 7.14ms | 116.37ms | 4.75ms | 6.53ms | 24.71ms | 42.42ms |
| comp_1to1000 | 3.62ms | 15.56ms | 7.29ms | 47.90ms | 4.26ms | 4.63ms | 14.50ms | 37.87ms |
| update_1to1 | 11.30ms | 21.95ms | 8.18ms | N/A | 88.55ms | 9.21ms | 16.10ms | 5.76ms |
| update_2to1 | 5.00ms | 10.80ms | 4.06ms | N/A | 44.70ms | 4.57ms | 7.91ms | 3.42ms |
| update_4to1 | 2.75ms | 5.50ms | 2.06ms | N/A | 21.88ms | 2.34ms | 4.05ms | 1.47ms |
| update_1000to1 | 13μs | 53μs | 20μs | N/A | 185μs | 23μs | 41μs | 14μs |
| update_1to2 | 5.65ms | 10.80ms | 4.11ms | N/A | 44.21ms | 4.87ms | 8.10ms | 2.94ms |
| update_1to4 | 2.49ms | 5.32ms | 2.05ms | N/A | 20.84ms | 2.33ms | 4.05ms | 1.53ms |
| update_1to1000 | 49μs | 181μs | 772μs | N/A | 108μs | 61μs | 146μs | 370μs |
| cellx1000 | 8.48ms | 75.05ms | 10.34ms | N/A | N/A | 9.76ms | 11.77ms | 5.10ms |
| cellx2500 | 20.29ms | 260.65ms | 29.65ms | N/A | N/A | 32.44ms | 36.75ms | 26.32ms |
| cellx5000 | 48.47ms | 570.06ms | 82.88ms | N/A | N/A | 70.97ms | 97.25ms | 67.68ms |
| 10x5 - 2 sources - read 20.0% (simple) | 247.12ms | 2.01s | 440.34ms | N/A | 2.32s | 509.23ms | 360.10ms | 238.97ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.34ms | 1.54s | 271.98ms | N/A | 1.50s (partial) | 276.56ms | 248.21ms | 200.37ms |
| 1000x12 - 4 sources - dynamic (large) | 285.49ms | 1.87s | 3.54s | N/A | 2.56s (partial) | 3.77s | 471.27ms | 344.17ms |
| 1000x5 - 25 sources (wide dense) | 406.27ms | 3.59s | 2.60s | N/A | 4.30s | 3.24s | 595.80ms | 497.50ms |
| 5x500 - 3 sources (deep) | 188.97ms | 1.16s | 228.00ms | N/A | 1.44s | 226.44ms | 258.46ms | 204.70ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.94ms | 1.76s | 453.31ms | N/A | 1.82s (partial) | 480.31ms | 382.64ms | 254.96ms |

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
