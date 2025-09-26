# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.44s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.57s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.09s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 30.31s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 27.23s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 161.85ms | 2.41s | 197.68ms | 1.42s | 202.82ms | 242.61ms | 146.14ms (fail) |
| broadPropagation | 275.31ms | 4.42s | 445.97ms | 72.39ms (fail) | 404.82ms | 450.21ms | 5.90ms (fail) |
| deepPropagation | 103.51ms | 1.61s | 179.60ms | 2.36s (fail) | 172.58ms | 133.52ms | 164.95ms (fail) |
| diamond | 211.15ms | 2.48s | 262.00ms | 2.95s (fail) | 261.19ms | 329.12ms | 189.50ms (fail) |
| mux | 345.83ms | 2.28s | 362.85ms | 563.97ms (fail) | 374.00ms | 411.04ms | 189.51ms (fail) |
| repeatedObservers | 49.08ms | 248.64ms | 36.58ms | 388.63ms (fail) | 39.46ms | 105.21ms | 47.23ms (fail) |
| triangle | 75.18ms | 871.17ms | 94.25ms | 1.04s (fail) | 93.78ms | 105.05ms | 79.78ms (fail) |
| unstable | 138.12ms | 355.45ms | 60.72ms | 681.81ms (fail) | 65.86ms | 200.15ms | 338.84ms (fail) |
| molBench | 365.75ms | 476.94ms | 368.95ms | 14.46ms | 371.42ms | 373.86ms | 923μs |
| create_signals | 22.97ms | 76.23ms | 8.41ms | 32.30ms | 30.65ms | 85.37ms | 72.21ms |
| comp_0to1 | 8.62ms | 20.01ms | 24.54ms | 18.86ms | 15.34ms | 32.84ms | 59.37ms |
| comp_1to1 | 19.40ms | 49.08ms | 14.39ms | 26.85ms | 19.75ms | 59.26ms | 58.16ms |
| comp_2to1 | 22.13ms | 27.41ms | 15.89ms | 34.13ms | 9.72ms | 31.53ms | 36.98ms |
| comp_4to1 | 19.65ms | 19.82ms | 12.32ms | 2.95ms | 12.05ms | 12.68ms | 19.84ms |
| comp_1000to1 | 6μs | 41μs | 10μs | 5μs | 6μs | 19μs | 42μs |
| comp_1to2 | 17.38ms | 41.88ms | 38.57ms | 19.98ms | 15.20ms | 44.97ms | 48.92ms |
| comp_1to4 | 19.05ms | 26.39ms | 29.01ms | 34.25ms | 17.10ms | 29.52ms | 48.80ms |
| comp_1to8 | 13.53ms | 32.27ms | 16.08ms | 9.32ms | 12.06ms | 32.79ms | 47.03ms |
| comp_1to1000 | 8.23ms | 19.70ms | 8.38ms | 8.37ms | 8.68ms | 18.99ms | 40.34ms |
| update_1to1 | 5.78ms | 23.80ms | 9.21ms | 96.54ms | 10.74ms | 18.15ms | 4.80ms |
| update_2to1 | 3.02ms | 12.57ms | 4.66ms | 49.84ms | 5.54ms | 9.09ms | 2.57ms |
| update_4to1 | 1.61ms | 6.61ms | 2.31ms | 24.29ms | 2.82ms | 4.50ms | 1.26ms |
| update_1000to1 | 16μs | 79μs | 33μs | 230μs | 27μs | 45μs | 12μs |
| update_1to2 | 3.00ms | 11.94ms | 4.72ms | 47.78ms | 5.33ms | 9.35ms | 2.52ms |
| update_1to4 | 1.60ms | 6.36ms | 2.15ms | 23.32ms | 2.87ms | 4.54ms | 1.27ms |
| update_1to1000 | 102μs | 203μs | 77μs | 129μs | 83μs | 169μs | 395μs |
| cellx1000 | 15.78ms | 158.20ms | 13.38ms | N/A | 15.85ms | 35.68ms | 14.57ms |
| cellx2500 | 64.63ms | 426.24ms | 52.74ms | N/A | 68.74ms | 129.11ms | 65.15ms |
| cellx5000 | 178.67ms | 906.96ms | 166.50ms | N/A | 176.00ms | 297.25ms | 152.31ms |
| 10x5 - 2 sources - read 20.0% (simple) | 225.81ms | 2.29s | 404.50ms | 2.58s | 426.06ms | 332.96ms | 250.51ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.06ms | 1.64s | 234.87ms | 1.57s (partial) | 239.06ms | 239.21ms | 180.08ms |
| 1000x12 - 4 sources - dynamic (large) | 312.19ms | 2.00s | 3.10s | 3.31s (partial) | 3.32s | 408.70ms | 288.41ms |
| 1000x5 - 25 sources (wide dense) | 499.32ms | 3.91s | 3.78s | 5.45s | 4.08s | 666.25ms | 393.36ms |
| 5x500 - 3 sources (deep) | 203.44ms | 1.57s | 223.86ms | 2.14s | 214.82ms | 278.17ms | 206.51ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 244.63ms | 1.88s | 387.43ms | 2.26s (partial) | 396.09ms | 308.91ms | 226.57ms |

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
