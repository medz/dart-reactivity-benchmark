# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.93s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.19s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.90s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 184.61ms | 2.30s | 197.10ms | 1.25s | 1.44s | 244.34ms | 281.73ms | 154.42ms (fail) |
| broadPropagation | 350.00ms | 4.20s | 458.58ms | 4.99s | 82.56ms (fail) | 455.32ms | 517.12ms | 6.04ms (fail) |
| deepPropagation | 124.27ms | 1.50s | 178.06ms | 4.00s | 1.90s (fail) | 173.91ms | 177.67ms | 140.83ms (fail) |
| diamond | 240.69ms | 2.39s | 279.16ms | 14.03s (fail) | 2.62s (fail) | 311.10ms | 359.90ms | 205.45ms (fail) |
| mux | 372.36ms | 1.83s | 383.37ms | 1.02s | 576.42ms (fail) | 420.59ms | 442.62ms | 204.97ms (fail) |
| repeatedObservers | 44.94ms | 223.90ms | 38.44ms | 9.74s | 381.48ms (fail) | 49.70ms | 77.94ms | 52.99ms (fail) |
| triangle | 85.76ms | 766.01ms | 98.46ms | 4.52s | 902.85ms (fail) | 104.47ms | 123.16ms | 93.15ms (fail) |
| unstable | 60.39ms | 347.31ms | 70.00ms | 7.64s | 642.51ms (fail) | 79.42ms | 95.56ms | 339.15ms (fail) |
| molBench | 491.53ms | 576.88ms | 490.86ms | 5.90s | 11.54ms | 483.86ms | 493.67ms | 993μs |
| create_signals | 25.99ms | 68.87ms | 4.63ms | 13.34ms | 23.64ms | 24.89ms | 71.99ms | 69.64ms |
| comp_0to1 | 7.93ms | 24.51ms | 17.60ms | 13.68ms | 13.42ms | 11.40ms | 27.61ms | 63.01ms |
| comp_1to1 | 4.20ms | 28.95ms | 14.30ms | 99.56ms | 22.92ms | 27.42ms | 28.61ms | 62.96ms |
| comp_2to1 | 2.30ms | 8.84ms | 16.40ms | 72.37ms | 23.77ms | 9.63ms | 45.08ms | 36.80ms |
| comp_4to1 | 7.91ms | 24.31ms | 15.22ms | 85.23ms | 5.30ms | 2.01ms | 18.27ms | 16.35ms |
| comp_1000to1 | 4μs | 15μs | 5μs | 59.32ms | 3μs | 5μs | 15μs | 41μs |
| comp_1to2 | 9.52ms | 34.75ms | 18.86ms | 66.89ms | 12.02ms | 13.30ms | 38.87ms | 44.99ms |
| comp_1to4 | 11.95ms | 22.47ms | 27.79ms | 99.18ms | 23.36ms | 23.91ms | 20.22ms | 44.33ms |
| comp_1to8 | 5.11ms | 20.72ms | 7.63ms | 116.37ms | 5.08ms | 14.99ms | 23.20ms | 43.03ms |
| comp_1to1000 | 3.45ms | 15.03ms | 7.18ms | 47.90ms | 4.25ms | 6.58ms | 14.67ms | 38.57ms |
| update_1to1 | 11.32ms | 23.72ms | 8.25ms | N/A | 89.31ms | 9.22ms | 16.21ms | 5.72ms |
| update_2to1 | 4.88ms | 12.59ms | 4.05ms | N/A | 44.53ms | 5.62ms | 7.93ms | 7.53ms |
| update_4to1 | 2.40ms | 6.05ms | 2.09ms | N/A | 21.51ms | 2.29ms | 4.06ms | 1.46ms |
| update_1000to1 | 16μs | 66μs | 20μs | N/A | 186μs | 23μs | 41μs | 15μs |
| update_1to2 | 5.58ms | 12.38ms | 5.42ms | N/A | 46.17ms | 4.90ms | 8.13ms | 2.93ms |
| update_1to4 | 2.42ms | 5.73ms | 2.16ms | N/A | 21.85ms | 2.31ms | 4.07ms | 1.46ms |
| update_1to1000 | 50μs | 181μs | 1.53ms | N/A | 113μs | 44μs | 154μs | 372μs |
| cellx1000 | 7.24ms | 69.73ms | 9.53ms | N/A | N/A | 9.53ms | 11.69ms | 5.28ms |
| cellx2500 | 19.40ms | 253.28ms | 25.80ms | N/A | N/A | 30.63ms | 33.09ms | 26.27ms |
| cellx5000 | 42.47ms | 552.53ms | 68.31ms | N/A | N/A | 69.21ms | 67.75ms | 65.61ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.52ms | 1.99s | 444.16ms | N/A | 2.40s | 527.55ms | 357.85ms | 239.61ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.83ms | 1.51s | 276.34ms | N/A | 1.51s (partial) | 283.37ms | 243.66ms | 199.47ms |
| 1000x12 - 4 sources - dynamic (large) | 281.65ms | 1.92s | 3.48s | N/A | 2.52s (partial) | 3.76s | 460.01ms | 336.94ms |
| 1000x5 - 25 sources (wide dense) | 412.06ms | 3.56s | 2.60s | N/A | 4.36s | 3.45s | 590.00ms | 505.54ms |
| 5x500 - 3 sources (deep) | 190.38ms | 1.15s | 229.81ms | N/A | 1.38s | 232.20ms | 251.98ms | 204.54ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.76ms | 1.74s | 446.32ms | N/A | 1.81s (partial) | 485.48ms | 393.66ms | 259.11ms |

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
