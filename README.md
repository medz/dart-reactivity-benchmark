# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.53s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.71s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.48s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.07s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.68s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 140.03ms | 2.32s | 201.25ms | 1.45s | 212.00ms | 237.29ms | 153.15ms (fail) |
| broadPropagation | 266.49ms | 4.38s | 474.91ms | 81.32ms (fail) | 458.93ms | 434.33ms | 6.80ms (fail) |
| deepPropagation | 80.53ms | 1.52s | 179.11ms | 1.96s (fail) | 174.61ms | 130.64ms | 147.50ms (fail) |
| diamond | 181.45ms | 2.44s | 280.27ms | 2.62s (fail) | 297.94ms | 392.93ms | 187.79ms (fail) |
| mux | 326.54ms | 1.84s | 389.18ms | 571.59ms (fail) | 409.62ms | 547.79ms | 193.94ms (fail) |
| repeatedObservers | 49.86ms | 233.35ms | 40.28ms | 392.62ms (fail) | 46.89ms | 87.92ms | 52.44ms (fail) |
| triangle | 67.22ms | 761.45ms | 104.98ms | 874.73ms (fail) | 102.65ms | 124.36ms | 77.66ms (fail) |
| unstable | 62.10ms | 339.92ms | 74.12ms | 676.67ms (fail) | 77.16ms | 104.05ms | 340.65ms (fail) |
| molBench | 485.75ms | 582.30ms | 490.60ms | 12.17ms | 485.66ms | 498.00ms | 914μs |
| create_signals | 31.36ms | 86.08ms | 6.20ms | 23.60ms | 25.84ms | 69.91ms | 62.31ms |
| comp_0to1 | 17.10ms | 20.39ms | 23.57ms | 15.63ms | 12.01ms | 40.01ms | 55.57ms |
| comp_1to1 | 13.12ms | 31.02ms | 12.14ms | 28.11ms | 27.97ms | 40.93ms | 56.74ms |
| comp_2to1 | 3.50ms | 9.14ms | 26.55ms | 27.64ms | 8.80ms | 49.60ms | 38.30ms |
| comp_4to1 | 5.72ms | 23.06ms | 6.98ms | 2.33ms | 2.13ms | 26.36ms | 16.82ms |
| comp_1000to1 | 4μs | 16μs | 4μs | 4μs | 5μs | 38μs | 67μs |
| comp_1to2 | 13.12ms | 35.05ms | 18.67ms | 16.10ms | 21.87ms | 47.71ms | 47.98ms |
| comp_1to4 | 23.88ms | 19.97ms | 19.14ms | 30.89ms | 12.26ms | 43.73ms | 49.74ms |
| comp_1to8 | 7.20ms | 22.37ms | 12.88ms | 9.01ms | 9.04ms | 36.62ms | 46.80ms |
| comp_1to1000 | 3.75ms | 15.32ms | 5.24ms | 4.71ms | 4.46ms | 29.19ms | 40.91ms |
| update_1to1 | 9.05ms | 26.08ms | 8.50ms | 86.67ms | 10.19ms | 59.33ms | 6.01ms |
| update_2to1 | 5.84ms | 13.84ms | 4.40ms | 42.42ms | 4.51ms | 29.45ms | 3.10ms |
| update_4to1 | 1.36ms | 6.48ms | 2.05ms | 19.91ms | 2.55ms | 14.51ms | 1.56ms |
| update_1000to1 | 13μs | 64μs | 20μs | 177μs | 25μs | 133μs | 15μs |
| update_1to2 | 2.62ms | 12.97ms | 4.06ms | 45.72ms | 4.57ms | 28.13ms | 3.05ms |
| update_1to4 | 1.33ms | 6.55ms | 2.08ms | 21.52ms | 2.54ms | 14.63ms | 1.56ms |
| update_1to1000 | 31μs | 169μs | 40μs | 110μs | 44μs | 485μs | 408μs |
| cellx1000 | 6.84ms | 102.61ms | 9.68ms | N/A | 9.87ms | 10.26ms | 5.31ms |
| cellx2500 | 20.89ms | 313.58ms | 27.71ms | N/A | 35.97ms | 31.56ms | 29.33ms |
| cellx5000 | 74.21ms | 665.36ms | 73.99ms | N/A | 77.46ms | 85.86ms | 64.38ms |
| 10x5 - 2 sources - read 20.0% (simple) | 199.21ms | 2.01s | 513.49ms | 2.18s | 510.92ms | 336.46ms | 243.01ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 159.36ms | 1.52s | 291.80ms | 1.47s (partial) | 282.02ms | 237.44ms | 193.07ms |
| 1000x12 - 4 sources - dynamic (large) | 284.71ms | 1.98s | 3.73s | 2.52s (partial) | 3.75s | 492.56ms | 343.74ms |
| 1000x5 - 25 sources (wide dense) | 561.68ms | 3.51s | 2.73s | 4.27s | 3.29s | 839.08ms | 493.13ms |
| 5x500 - 3 sources (deep) | 177.50ms | 1.12s | 241.76ms | 1.48s | 224.36ms | 246.93ms | 206.20ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 244.62ms | 1.71s | 470.67ms | 1.81s (partial) | 477.38ms | 340.43ms | 258.24ms |

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
