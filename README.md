# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.33s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.65s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.22s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.48s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.51s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.88s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 125.05ms | 2.37s | 204.64ms | 1.38s | 212.28ms | 241.79ms | 167.67ms |
| broadPropagation | 241.67ms | 4.41s | 453.93ms | 82.89ms (fail) | 456.72ms | 459.82ms | 405.33ms |
| deepPropagation | 79.05ms | 1.52s | 179.07ms | 1.83s (fail) | 171.72ms | 130.49ms | 158.85ms |
| diamond | 159.72ms | 2.38s | 286.38ms | 2.50s (fail) | 284.14ms | 324.19ms | 221.84ms |
| mux | 294.52ms | 1.84s | 374.79ms | 536.55ms (fail) | 396.60ms | 372.55ms | 366.17ms |
| repeatedObservers | 26.99ms | 231.76ms | 41.07ms | 386.72ms (fail) | 46.08ms | 88.99ms | 58.54ms |
| triangle | 64.33ms | 752.03ms | 102.80ms | 901.76ms (fail) | 99.06ms | 96.40ms | 86.97ms |
| unstable | 47.46ms | 344.87ms | 69.27ms | 618.10ms (fail) | 77.70ms | 101.39ms | 343.21ms |
| molBench | 489.95ms | 591.16ms | 481.30ms | 11.32ms | 496.05ms | 496.45ms | 493.20ms |
| create_signals | 10.59ms | 73.01ms | 5.72ms | 26.23ms | 25.44ms | 84.28ms | 57.36ms |
| comp_0to1 | 12.82ms | 26.03ms | 17.81ms | 14.07ms | 11.63ms | 42.88ms | 50.42ms |
| comp_1to1 | 18.37ms | 17.26ms | 14.41ms | 27.37ms | 30.82ms | 36.66ms | 52.83ms |
| comp_2to1 | 8.47ms | 20.93ms | 17.81ms | 25.07ms | 9.78ms | 38.37ms | 35.98ms |
| comp_4to1 | 2.08ms | 30.15ms | 12.43ms | 6.88ms | 2.29ms | 34.22ms | 16.66ms |
| comp_1000to1 | 3μs | 16μs | 6μs | 4μs | 5μs | 17μs | 38μs |
| comp_1to2 | 27.25ms | 38.32ms | 27.77ms | 11.70ms | 20.62ms | 29.10ms | 43.43ms |
| comp_1to4 | 15.39ms | 28.51ms | 24.78ms | 25.68ms | 14.94ms | 37.89ms | 43.35ms |
| comp_1to8 | 8.06ms | 27.12ms | 8.07ms | 5.06ms | 6.21ms | 27.15ms | 41.45ms |
| comp_1to1000 | 3.94ms | 15.66ms | 5.84ms | 4.45ms | 4.36ms | 15.19ms | 37.21ms |
| update_1to1 | 8.47ms | 22.26ms | 8.80ms | 79.46ms | 9.38ms | 14.22ms | 6.11ms |
| update_2to1 | 4.33ms | 11.04ms | 4.44ms | 40.02ms | 4.72ms | 6.95ms | 3.05ms |
| update_4to1 | 1.62ms | 5.66ms | 2.21ms | 19.12ms | 2.40ms | 3.59ms | 1.55ms |
| update_1000to1 | 16μs | 59μs | 22μs | 205μs | 23μs | 35μs | 15μs |
| update_1to2 | 4.65ms | 11.13ms | 4.46ms | 40.63ms | 4.70ms | 6.98ms | 3.07ms |
| update_1to4 | 2.09ms | 5.47ms | 2.25ms | 19.26ms | 2.60ms | 3.51ms | 1.52ms |
| update_1to1000 | 44μs | 159μs | 873μs | 145μs | 45μs | 264μs | 372μs |
| cellx1000 | 6.12ms | 92.33ms | 9.87ms | N/A | 10.92ms | 9.41ms | 9.91ms |
| cellx2500 | 23.35ms | 303.34ms | 36.44ms | N/A | 43.81ms | 37.93ms | 30.68ms |
| cellx5000 | 70.76ms | 657.63ms | 102.59ms | N/A | 74.85ms | 87.06ms | 106.53ms |
| 10x5 - 2 sources - read 20.0% (simple) | 180.70ms | 1.95s | 430.48ms | 2.10s | 508.81ms | 319.82ms | 255.15ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 157.11ms | 1.48s | 265.01ms | 1.43s (partial) | 289.64ms | 223.82ms | 211.16ms |
| 1000x12 - 4 sources - dynamic (large) | 287.29ms | 1.91s | 3.65s | 2.46s (partial) | 3.92s | 448.18ms | 371.54ms |
| 1000x5 - 25 sources (wide dense) | 547.62ms | 3.49s | 2.51s | 4.11s | 3.55s | 838.43ms | 491.60ms |
| 5x500 - 3 sources (deep) | 157.66ms | 1.16s | 224.65ms | 1.45s | 226.04ms | 228.62ms | 209.85ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 244.70ms | 1.70s | 451.25ms | 1.75s (partial) | 472.00ms | 331.39ms | 265.14ms |

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
