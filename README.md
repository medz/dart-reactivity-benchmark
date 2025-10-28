# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.60s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.06s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.31s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.57s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.59s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.51s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.49ms | 2.34s | 200.79ms | 1.38s | 211.27ms | 232.06ms | 163.04ms (fail) |
| broadPropagation | 265.77ms | 4.37s | 463.40ms | 80.92ms (fail) | 458.59ms | 437.79ms | 6.79ms (fail) |
| deepPropagation | 81.31ms | 1.53s | 179.24ms | 1.95s (fail) | 174.47ms | 131.00ms | 142.88ms (fail) |
| diamond | 186.28ms | 2.42s | 278.20ms | 2.56s (fail) | 287.22ms | 303.41ms | 203.11ms (fail) |
| mux | 328.79ms | 1.83s | 391.60ms | 563.36ms (fail) | 418.37ms | 390.70ms | 192.57ms (fail) |
| repeatedObservers | 49.15ms | 235.07ms | 40.06ms | 384.79ms (fail) | 46.13ms | 95.37ms | 52.75ms (fail) |
| triangle | 67.72ms | 772.15ms | 98.66ms | 865.07ms (fail) | 99.26ms | 96.41ms | 79.83ms (fail) |
| unstable | 67.17ms | 348.06ms | 74.58ms | 626.63ms (fail) | 76.35ms | 101.08ms | 341.86ms (fail) |
| molBench | 486.71ms | 582.72ms | 488.22ms | 11.65ms | 485.36ms | 493.21ms | 957μs |
| create_signals | 29.00ms | 72.31ms | 5.15ms | 24.92ms | 26.07ms | 55.42ms | 65.64ms |
| comp_0to1 | 17.42ms | 15.88ms | 17.80ms | 14.19ms | 11.87ms | 22.85ms | 56.49ms |
| comp_1to1 | 12.89ms | 47.38ms | 12.62ms | 27.61ms | 28.23ms | 46.54ms | 57.89ms |
| comp_2to1 | 2.57ms | 31.11ms | 10.30ms | 25.64ms | 14.36ms | 8.32ms | 38.63ms |
| comp_4to1 | 1.74ms | 17.36ms | 12.33ms | 6.70ms | 2.03ms | 11.84ms | 17.34ms |
| comp_1000to1 | 3μs | 16μs | 4μs | 4μs | 5μs | 14μs | 45μs |
| comp_1to2 | 17.94ms | 48.95ms | 30.27ms | 10.52ms | 21.54ms | 37.29ms | 48.38ms |
| comp_1to4 | 18.83ms | 23.82ms | 20.94ms | 25.87ms | 14.45ms | 14.17ms | 49.56ms |
| comp_1to8 | 7.56ms | 25.54ms | 9.24ms | 5.31ms | 6.63ms | 18.79ms | 46.05ms |
| comp_1to1000 | 6.13ms | 15.45ms | 7.11ms | 4.70ms | 4.34ms | 13.48ms | 41.29ms |
| update_1to1 | 6.56ms | 29.94ms | 8.32ms | 80.64ms | 10.26ms | 14.76ms | 6.01ms |
| update_2to1 | 4.96ms | 14.74ms | 4.47ms | 41.31ms | 4.49ms | 7.19ms | 3.11ms |
| update_4to1 | 1.63ms | 8.38ms | 2.07ms | 19.64ms | 2.55ms | 3.64ms | 1.58ms |
| update_1000to1 | 13μs | 68μs | 20μs | 170μs | 25μs | 36μs | 15μs |
| update_1to2 | 3.17ms | 16.23ms | 4.08ms | 41.21ms | 4.51ms | 7.49ms | 3.04ms |
| update_1to4 | 1.61ms | 8.34ms | 2.06ms | 20.43ms | 2.56ms | 3.61ms | 1.55ms |
| update_1to1000 | 47μs | 173μs | 495μs | 93μs | 43μs | 153μs | 408μs |
| cellx1000 | 7.35ms | 101.10ms | 9.54ms | N/A | 10.21ms | 12.45ms | 6.65ms |
| cellx2500 | 28.67ms | 284.00ms | 31.14ms | N/A | 40.09ms | 32.29ms | 37.26ms |
| cellx5000 | 114.98ms | 606.47ms | 85.68ms | N/A | 80.23ms | 105.05ms | 81.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 196.41ms | 2.02s | 450.85ms | 2.13s | 508.50ms | 312.22ms | 256.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 165.25ms | 1.50s | 273.96ms | 1.47s (partial) | 281.63ms | 217.66ms | 198.14ms |
| 1000x12 - 4 sources - dynamic (large) | 293.44ms | 1.90s | 3.68s | 2.59s (partial) | 3.93s | 457.68ms | 356.99ms |
| 1000x5 - 25 sources (wide dense) | 563.16ms | 3.50s | 2.73s | 4.28s | 3.59s | 813.49ms | 509.43ms |
| 5x500 - 3 sources (deep) | 178.38ms | 1.14s | 233.08ms | 1.49s | 226.55ms | 230.23ms | 206.80ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 250.69ms | 1.73s | 459.39ms | 1.77s (partial) | 488.80ms | 331.52ms | 262.33ms |

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
