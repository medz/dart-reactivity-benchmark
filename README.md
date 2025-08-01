# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.55s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.31s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.15s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.90s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.38s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 155.78ms | 2.36s | 200.83ms | 1.37s | 207.44ms | 295.70ms | 149.28ms (fail) |
| broadPropagation | 319.45ms | 4.52s | 454.87ms | 79.54ms (fail) | 452.73ms | 529.00ms | 6.17ms (fail) |
| deepPropagation | 96.24ms | 1.57s | 179.05ms | 1.87s (fail) | 170.63ms | 169.35ms | 141.79ms (fail) |
| diamond | 215.24ms | 2.45s | 284.93ms | 2.54s (fail) | 277.59ms | 359.44ms | 190.41ms (fail) |
| mux | 341.92ms | 1.83s | 409.80ms | 558.84ms (fail) | 406.18ms | 438.51ms | 192.22ms (fail) |
| repeatedObservers | 50.47ms | 233.49ms | 39.77ms | 386.42ms (fail) | 44.41ms | 87.45ms | 52.33ms (fail) |
| triangle | 77.61ms | 779.33ms | 103.26ms | 926.32ms (fail) | 99.94ms | 115.89ms | 75.96ms (fail) |
| unstable | 71.26ms | 351.05ms | 67.42ms | 616.37ms (fail) | 79.73ms | 102.55ms | 336.76ms (fail) |
| molBench | 485.38ms | 577.48ms | 488.48ms | 11.41ms | 488.01ms | 502.49ms | 1.15ms |
| create_signals | 34.31ms | 72.33ms | 5.14ms | 24.03ms | 25.29ms | 48.65ms | 64.74ms |
| comp_0to1 | 10.69ms | 25.68ms | 17.87ms | 13.52ms | 11.58ms | 46.77ms | 57.60ms |
| comp_1to1 | 23.77ms | 18.38ms | 12.82ms | 21.72ms | 28.13ms | 39.65ms | 59.75ms |
| comp_2to1 | 15.63ms | 27.10ms | 17.73ms | 24.65ms | 8.70ms | 20.82ms | 40.84ms |
| comp_4to1 | 3.17ms | 19.01ms | 8.62ms | 5.36ms | 2.01ms | 19.46ms | 17.19ms |
| comp_1000to1 | 6μs | 16μs | 6μs | 3μs | 6μs | 16μs | 41μs |
| comp_1to2 | 14.48ms | 42.83ms | 33.00ms | 11.61ms | 13.69ms | 29.22ms | 47.49ms |
| comp_1to4 | 17.81ms | 24.34ms | 27.77ms | 25.14ms | 8.78ms | 25.68ms | 48.68ms |
| comp_1to8 | 7.03ms | 22.29ms | 8.89ms | 4.85ms | 11.62ms | 27.35ms | 43.36ms |
| comp_1to1000 | 4.49ms | 16.24ms | 5.32ms | 4.20ms | 6.29ms | 15.97ms | 39.14ms |
| update_1to1 | 5.83ms | 24.73ms | 8.61ms | 82.25ms | 9.08ms | 15.67ms | 5.64ms |
| update_2to1 | 2.90ms | 10.92ms | 4.23ms | 41.56ms | 4.59ms | 7.67ms | 2.84ms |
| update_4to1 | 1.57ms | 7.26ms | 2.19ms | 20.04ms | 2.38ms | 3.84ms | 1.43ms |
| update_1000to1 | 27μs | 70μs | 21μs | 177μs | 23μs | 38μs | 25μs |
| update_1to2 | 2.91ms | 11.40ms | 4.63ms | 41.78ms | 4.53ms | 7.68ms | 2.82ms |
| update_1to4 | 1.55ms | 5.59ms | 2.44ms | 20.14ms | 2.29ms | 3.85ms | 1.52ms |
| update_1to1000 | 52μs | 172μs | 161μs | 98μs | 42μs | 164μs | 392μs |
| cellx1000 | 7.46ms | 75.59ms | 10.04ms | N/A | 9.56ms | 12.10ms | 5.46ms |
| cellx2500 | 20.49ms | 273.29ms | 28.85ms | N/A | 32.45ms | 34.66ms | 25.88ms |
| cellx5000 | 49.14ms | 556.87ms | 79.58ms | N/A | 64.48ms | 92.05ms | 74.81ms |
| 10x5 - 2 sources - read 20.0% (simple) | 248.00ms | 2.04s | 441.62ms | 2.18s | 510.58ms | 375.85ms | 260.66ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 196.43ms | 1.56s | 273.43ms | 1.50s (partial) | 281.93ms | 251.20ms | 223.22ms |
| 1000x12 - 4 sources - dynamic (large) | 346.33ms | 1.92s | 3.69s | 2.55s (partial) | 3.75s | 479.44ms | 342.08ms |
| 1000x5 - 25 sources (wide dense) | 498.05ms | 3.61s | 2.72s | 4.29s | 3.42s | 736.17ms | 483.92ms |
| 5x500 - 3 sources (deep) | 198.06ms | 1.17s | 227.71ms | 1.38s | 224.48ms | 270.93ms | 204.70ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 285.28ms | 1.71s | 456.26ms | 1.77s (partial) | 488.36ms | 384.58ms | 268.70ms |

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
