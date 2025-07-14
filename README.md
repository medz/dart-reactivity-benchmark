# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.92s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.46s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.17s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.04s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.36s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 210.39ms | 2.34s | 201.67ms | 1.41s | 206.59ms | 290.86ms | 164.99ms (fail) |
| broadPropagation | 389.28ms | 4.35s | 449.70ms | 79.60ms (fail) | 447.58ms | 526.89ms | 5.84ms (fail) |
| deepPropagation | 94.97ms | 1.55s | 171.08ms | 1.93s (fail) | 166.40ms | 169.13ms | 143.01ms (fail) |
| diamond | 221.56ms | 2.44s | 283.95ms | 2.52s (fail) | 288.99ms | 358.16ms | 199.92ms (fail) |
| mux | 400.03ms | 1.84s | 400.43ms | 586.82ms (fail) | 399.79ms | 443.85ms | 193.37ms (fail) |
| repeatedObservers | 46.56ms | 226.42ms | 40.42ms | 388.08ms (fail) | 44.83ms | 87.02ms | 54.73ms (fail) |
| triangle | 80.89ms | 767.77ms | 99.43ms | 1.02s (fail) | 101.09ms | 117.98ms | 74.34ms (fail) |
| unstable | 65.33ms | 346.04ms | 69.12ms | 629.25ms (fail) | 80.00ms | 100.81ms | 342.86ms (fail) |
| molBench | 478.64ms | 563.66ms | 479.40ms | 12.40ms | 478.16ms | 492.36ms | 858μs |
| create_signals | 26.72ms | 72.62ms | 5.23ms | 26.67ms | 24.43ms | 70.48ms | 63.98ms |
| comp_0to1 | 11.97ms | 25.13ms | 17.08ms | 13.03ms | 11.09ms | 37.01ms | 55.86ms |
| comp_1to1 | 17.57ms | 18.23ms | 13.53ms | 22.53ms | 26.11ms | 47.52ms | 56.02ms |
| comp_2to1 | 15.51ms | 11.71ms | 20.50ms | 23.69ms | 8.34ms | 9.53ms | 35.42ms |
| comp_4to1 | 3.11ms | 14.98ms | 11.58ms | 6.34ms | 1.94ms | 18.86ms | 18.21ms |
| comp_1000to1 | 6μs | 20μs | 6μs | 3μs | 5μs | 16μs | 40μs |
| comp_1to2 | 14.21ms | 36.85ms | 13.43ms | 12.62ms | 19.83ms | 30.57ms | 46.95ms |
| comp_1to4 | 15.40ms | 27.24ms | 25.28ms | 23.43ms | 19.25ms | 24.76ms | 43.93ms |
| comp_1to8 | 4.26ms | 21.37ms | 6.85ms | 5.00ms | 7.90ms | 26.65ms | 43.02ms |
| comp_1to1000 | 4.27ms | 15.77ms | 4.51ms | 4.31ms | 4.23ms | 15.96ms | 38.44ms |
| update_1to1 | 4.99ms | 25.60ms | 8.57ms | 82.53ms | 8.92ms | 16.09ms | 5.65ms |
| update_2to1 | 2.50ms | 10.94ms | 4.26ms | 41.77ms | 4.48ms | 7.76ms | 2.87ms |
| update_4to1 | 1.26ms | 6.18ms | 2.13ms | 20.03ms | 2.25ms | 4.06ms | 1.47ms |
| update_1000to1 | 12μs | 71μs | 22μs | 186μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.66ms | 10.99ms | 4.83ms | 40.88ms | 4.48ms | 7.93ms | 2.90ms |
| update_1to4 | 1.24ms | 7.08ms | 2.15ms | 20.90ms | 2.25ms | 3.98ms | 1.48ms |
| update_1to1000 | 27μs | 173μs | 134μs | 109μs | 42μs | 166μs | 393μs |
| cellx1000 | 10.17ms | 72.00ms | 9.63ms | N/A | 9.46ms | 11.16ms | 5.83ms |
| cellx2500 | 26.60ms | 257.47ms | 25.55ms | N/A | 30.91ms | 30.85ms | 24.05ms |
| cellx5000 | 69.73ms | 542.59ms | 62.58ms | N/A | 59.25ms | 70.16ms | 77.47ms |
| 10x5 - 2 sources - read 20.0% (simple) | 220.09ms | 1.99s | 442.03ms | 2.13s | 517.45ms | 364.28ms | 234.68ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 170.35ms | 1.50s | 266.46ms | 1.44s (partial) | 280.19ms | 253.58ms | 199.42ms |
| 1000x12 - 4 sources - dynamic (large) | 323.15ms | 1.91s | 3.65s | 2.41s (partial) | 3.69s | 458.55ms | 342.53ms |
| 1000x5 - 25 sources (wide dense) | 535.07ms | 3.63s | 2.70s | 4.33s | 3.39s | 710.87ms | 492.17ms |
| 5x500 - 3 sources (deep) | 192.66ms | 1.12s | 228.04ms | 1.34s | 221.91ms | 265.11ms | 204.96ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 256.83ms | 1.66s | 446.92ms | 1.79s (partial) | 479.04ms | 383.77ms | 259.12ms |

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
