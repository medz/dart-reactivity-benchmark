# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.85s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.09s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.26s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.25s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.58s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.21s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.52ms | 2.39s | 200.88ms | 1.37s | 213.94ms | 254.37ms | 152.69ms (fail) |
| broadPropagation | 318.53ms | 4.36s | 466.21ms | 80.76ms (fail) | 451.88ms | 453.22ms | 6.70ms (fail) |
| deepPropagation | 98.21ms | 1.56s | 175.81ms | 1.92s (fail) | 175.94ms | 140.42ms | 147.84ms (fail) |
| diamond | 228.60ms | 2.42s | 283.41ms | 2.62s (fail) | 282.91ms | 322.83ms | 190.95ms (fail) |
| mux | 339.46ms | 1.83s | 397.44ms | 570.09ms (fail) | 408.61ms | 403.19ms | 191.34ms (fail) |
| repeatedObservers | 50.30ms | 245.94ms | 40.49ms | 389.18ms (fail) | 46.04ms | 92.07ms | 52.53ms (fail) |
| triangle | 78.66ms | 778.47ms | 98.93ms | 884.18ms (fail) | 104.88ms | 98.74ms | 79.32ms (fail) |
| unstable | 139.91ms | 351.06ms | 72.04ms | 625.45ms (fail) | 75.69ms | 169.04ms | 341.37ms (fail) |
| molBench | 486.80ms | 586.02ms | 488.76ms | 11.69ms | 486.22ms | 500.85ms | 879μs |
| create_signals | 24.94ms | 81.34ms | 5.19ms | 26.22ms | 24.67ms | 49.21ms | 61.87ms |
| comp_0to1 | 11.24ms | 38.48ms | 17.30ms | 16.17ms | 10.90ms | 23.92ms | 55.39ms |
| comp_1to1 | 18.20ms | 17.18ms | 11.00ms | 24.09ms | 26.68ms | 42.96ms | 57.89ms |
| comp_2to1 | 12.52ms | 25.47ms | 10.72ms | 31.62ms | 13.15ms | 22.14ms | 38.26ms |
| comp_4to1 | 1.84ms | 26.77ms | 13.42ms | 11.75ms | 3.67ms | 13.92ms | 17.03ms |
| comp_1000to1 | 4μs | 16μs | 6μs | 6μs | 5μs | 14μs | 46μs |
| comp_1to2 | 12.34ms | 40.05ms | 14.70ms | 13.20ms | 12.97ms | 32.60ms | 49.73ms |
| comp_1to4 | 19.90ms | 22.33ms | 25.11ms | 22.46ms | 11.76ms | 14.39ms | 49.80ms |
| comp_1to8 | 6.78ms | 24.73ms | 7.14ms | 6.64ms | 6.53ms | 18.87ms | 46.37ms |
| comp_1to1000 | 4.20ms | 15.29ms | 5.63ms | 5.80ms | 4.40ms | 14.43ms | 43.15ms |
| update_1to1 | 5.54ms | 27.59ms | 8.33ms | 83.62ms | 10.27ms | 16.75ms | 6.03ms |
| update_2to1 | 2.80ms | 13.92ms | 4.34ms | 43.74ms | 4.52ms | 8.40ms | 3.08ms |
| update_4to1 | 1.45ms | 7.10ms | 2.11ms | 21.92ms | 2.55ms | 4.18ms | 1.53ms |
| update_1000to1 | 25μs | 69μs | 21μs | 169μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.78ms | 14.30ms | 4.15ms | 44.84ms | 4.51ms | 8.53ms | 3.05ms |
| update_1to4 | 1.46ms | 6.91ms | 2.11ms | 19.96ms | 2.56ms | 4.19ms | 1.57ms |
| update_1to1000 | 51μs | 171μs | 149μs | 126μs | 42μs | 142μs | 454μs |
| cellx1000 | 7.62ms | 68.85ms | 9.58ms | N/A | 9.55ms | 9.56ms | 5.00ms |
| cellx2500 | 18.85ms | 237.26ms | 25.46ms | N/A | 30.50ms | 26.58ms | 22.68ms |
| cellx5000 | 44.97ms | 527.51ms | 67.77ms | N/A | 58.89ms | 57.80ms | 62.55ms |
| 10x5 - 2 sources - read 20.0% (simple) | 244.21ms | 2.01s | 442.32ms | 2.20s | 513.65ms | 324.75ms | 259.85ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.36ms | 1.53s | 276.81ms | 1.49s (partial) | 282.74ms | 220.94ms | 195.77ms |
| 1000x12 - 4 sources - dynamic (large) | 346.14ms | 1.95s | 3.66s | 2.52s (partial) | 3.75s | 426.13ms | 331.27ms |
| 1000x5 - 25 sources (wide dense) | 494.88ms | 3.53s | 2.73s | 4.05s | 3.52s | 765.45ms | 495.73ms |
| 5x500 - 3 sources (deep) | 199.68ms | 1.13s | 226.90ms | 1.36s | 222.48ms | 221.54ms | 200.21ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 281.21ms | 1.72s | 462.31ms | 1.75s (partial) | 479.37ms | 325.22ms | 254.22ms |

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
