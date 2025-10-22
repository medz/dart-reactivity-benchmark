# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.53s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.15s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.37s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.67s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.68s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.56s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.58s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 141.06ms | 2.36s | 200.65ms | 1.44s | 212.46ms | 247.01ms | 177.01ms (fail) |
| broadPropagation | 269.85ms | 4.32s | 466.63ms | 81.15ms (fail) | 453.17ms | 432.65ms | 6.63ms (fail) |
| deepPropagation | 80.97ms | 1.55s | 181.49ms | 1.95s (fail) | 176.54ms | 131.08ms | 144.95ms (fail) |
| diamond | 181.75ms | 2.47s | 281.18ms | 2.63s (fail) | 284.48ms | 320.52ms | 203.79ms (fail) |
| mux | 336.05ms | 1.83s | 391.60ms | 578.87ms (fail) | 408.08ms | 395.75ms | 194.12ms (fail) |
| repeatedObservers | 49.07ms | 234.71ms | 40.30ms | 394.03ms (fail) | 44.93ms | 88.33ms | 52.57ms (fail) |
| triangle | 67.00ms | 770.48ms | 99.24ms | 859.29ms (fail) | 101.51ms | 99.60ms | 84.21ms (fail) |
| unstable | 61.60ms | 347.48ms | 74.58ms | 649.60ms (fail) | 72.45ms | 103.53ms | 339.50ms (fail) |
| molBench | 485.49ms | 584.35ms | 488.35ms | 11.37ms | 485.51ms | 499.21ms | 940μs |
| create_signals | 29.04ms | 66.75ms | 5.43ms | 23.93ms | 27.92ms | 65.24ms | 66.37ms |
| comp_0to1 | 17.13ms | 15.48ms | 17.97ms | 14.23ms | 12.41ms | 26.46ms | 64.72ms |
| comp_1to1 | 13.17ms | 42.33ms | 11.21ms | 23.48ms | 22.28ms | 30.70ms | 57.59ms |
| comp_2to1 | 3.63ms | 39.11ms | 11.67ms | 25.38ms | 9.23ms | 29.37ms | 38.35ms |
| comp_4to1 | 5.68ms | 17.60ms | 12.87ms | 6.18ms | 2.15ms | 18.60ms | 17.27ms |
| comp_1000to1 | 6μs | 19μs | 4μs | 3μs | 5μs | 15μs | 45μs |
| comp_1to2 | 14.54ms | 41.03ms | 18.71ms | 14.46ms | 16.26ms | 41.13ms | 48.04ms |
| comp_1to4 | 18.26ms | 22.57ms | 31.96ms | 28.11ms | 11.29ms | 28.60ms | 46.39ms |
| comp_1to8 | 7.22ms | 23.95ms | 6.84ms | 5.27ms | 6.70ms | 25.96ms | 46.25ms |
| comp_1to1000 | 3.33ms | 15.45ms | 7.51ms | 4.27ms | 4.50ms | 15.57ms | 41.88ms |
| update_1to1 | 5.28ms | 28.51ms | 8.25ms | 80.50ms | 10.41ms | 17.33ms | 6.14ms |
| update_2to1 | 5.91ms | 13.98ms | 4.34ms | 40.74ms | 4.50ms | 8.61ms | 3.08ms |
| update_4to1 | 1.34ms | 7.59ms | 2.13ms | 19.60ms | 2.61ms | 4.33ms | 1.52ms |
| update_1000to1 | 12μs | 74μs | 21μs | 190μs | 25μs | 40μs | 15μs |
| update_1to2 | 2.59ms | 13.59ms | 4.07ms | 41.27ms | 4.53ms | 8.69ms | 3.02ms |
| update_1to4 | 2.04ms | 6.84ms | 2.11ms | 20.20ms | 2.58ms | 4.32ms | 1.53ms |
| update_1to1000 | 47μs | 169μs | 790μs | 97μs | 68μs | 274μs | 412μs |
| cellx1000 | 6.59ms | 72.86ms | 9.77ms | N/A | 11.51ms | 10.07ms | 5.95ms |
| cellx2500 | 18.78ms | 256.90ms | 27.60ms | N/A | 46.30ms | 32.90ms | 24.68ms |
| cellx5000 | 77.93ms | 649.61ms | 73.34ms | N/A | 115.88ms | 73.02ms | 84.74ms |
| 10x5 - 2 sources - read 20.0% (simple) | 199.21ms | 2.00s | 439.86ms | 2.16s | 508.84ms | 319.69ms | 256.66ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.78ms | 1.51s | 270.92ms | 1.48s (partial) | 280.75ms | 223.08ms | 197.73ms |
| 1000x12 - 4 sources - dynamic (large) | 284.60ms | 1.95s | 3.76s | 2.64s (partial) | 4.02s | 450.36ms | 352.02ms |
| 1000x5 - 25 sources (wide dense) | 558.50ms | 3.55s | 2.73s | 4.23s | 3.60s | 818.84ms | 513.06ms |
| 5x500 - 3 sources (deep) | 178.35ms | 1.14s | 231.21ms | 1.38s | 225.99ms | 234.13ms | 210.95ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 246.59ms | 1.73s | 457.81ms | 1.75s (partial) | 494.19ms | 341.51ms | 265.47ms |

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
