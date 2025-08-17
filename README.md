# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.23s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.66s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.45s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.53s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.66s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 157.62ms | 2.34s | 200.34ms | 1.37s | 212.92ms | 272.74ms | 160.47ms (fail) |
| broadPropagation | 315.25ms | 4.37s | 458.44ms | 84.11ms (fail) | 454.59ms | 468.19ms | 6.51ms (fail) |
| deepPropagation | 99.47ms | 1.54s | 184.23ms | 1.98s (fail) | 169.60ms | 141.68ms | 145.07ms (fail) |
| diamond | 224.61ms | 2.42s | 283.06ms | 2.72s (fail) | 282.25ms | 311.43ms | 203.32ms (fail) |
| mux | 339.70ms | 1.83s | 393.00ms | 576.67ms (fail) | 408.49ms | 409.70ms | 193.70ms (fail) |
| repeatedObservers | 50.30ms | 229.70ms | 40.73ms | 398.52ms (fail) | 46.34ms | 90.93ms | 64.60ms (fail) |
| triangle | 81.42ms | 769.17ms | 103.77ms | 878.50ms (fail) | 101.95ms | 96.76ms | 80.36ms (fail) |
| unstable | 139.46ms | 345.70ms | 75.29ms | 633.14ms (fail) | 72.06ms | 166.90ms | 342.65ms (fail) |
| molBench | 488.05ms | 583.15ms | 485.23ms | 11.46ms | 485.83ms | 499.82ms | 944μs |
| create_signals | 24.50ms | 51.36ms | 5.18ms | 24.73ms | 25.80ms | 51.72ms | 62.24ms |
| comp_0to1 | 11.79ms | 19.48ms | 17.69ms | 14.04ms | 11.47ms | 24.67ms | 56.31ms |
| comp_1to1 | 18.91ms | 29.47ms | 14.84ms | 28.40ms | 29.13ms | 34.44ms | 58.44ms |
| comp_2to1 | 13.51ms | 11.83ms | 24.03ms | 31.07ms | 21.47ms | 8.53ms | 38.59ms |
| comp_4to1 | 1.86ms | 19.74ms | 13.88ms | 7.25ms | 6.78ms | 6.17ms | 16.85ms |
| comp_1000to1 | 4μs | 20μs | 9μs | 3μs | 8μs | 19μs | 65μs |
| comp_1to2 | 16.48ms | 37.94ms | 21.80ms | 11.36ms | 20.97ms | 38.48ms | 48.08ms |
| comp_1to4 | 17.84ms | 27.96ms | 36.27ms | 20.13ms | 18.30ms | 19.58ms | 46.86ms |
| comp_1to8 | 7.79ms | 21.82ms | 8.07ms | 5.25ms | 6.69ms | 22.75ms | 46.51ms |
| comp_1to1000 | 4.04ms | 15.36ms | 7.47ms | 4.47ms | 4.39ms | 15.54ms | 41.73ms |
| update_1to1 | 5.45ms | 27.95ms | 8.33ms | 83.03ms | 10.24ms | 17.31ms | 6.03ms |
| update_2to1 | 2.80ms | 12.44ms | 4.43ms | 41.59ms | 4.57ms | 8.53ms | 3.07ms |
| update_4to1 | 1.54ms | 7.32ms | 2.08ms | 20.20ms | 2.45ms | 4.28ms | 1.53ms |
| update_1000to1 | 25μs | 70μs | 20μs | 204μs | 25μs | 53μs | 15μs |
| update_1to2 | 3.24ms | 11.29ms | 4.22ms | 42.45ms | 4.49ms | 8.78ms | 3.01ms |
| update_1to4 | 2.62ms | 6.68ms | 2.06ms | 19.93ms | 2.62ms | 4.27ms | 1.54ms |
| update_1to1000 | 53μs | 172μs | 779μs | 150μs | 44μs | 155μs | 429μs |
| cellx1000 | 9.15ms | 81.72ms | 10.04ms | N/A | 10.13ms | 10.71ms | 5.45ms |
| cellx2500 | 20.07ms | 274.47ms | 28.43ms | N/A | 34.52ms | 33.03ms | 29.58ms |
| cellx5000 | 47.19ms | 573.60ms | 92.67ms | N/A | 71.53ms | 93.13ms | 87.07ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.54ms | 2.00s | 520.74ms | 2.15s | 505.41ms | 330.18ms | 254.68ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.65ms | 1.51s | 291.01ms | 1.46s (partial) | 279.40ms | 224.57ms | 198.99ms |
| 1000x12 - 4 sources - dynamic (large) | 348.74ms | 1.92s | 3.80s | 2.66s (partial) | 3.77s | 439.70ms | 345.75ms |
| 1000x5 - 25 sources (wide dense) | 496.67ms | 3.53s | 2.80s | 4.13s | 3.42s | 801.51ms | 510.22ms |
| 5x500 - 3 sources (deep) | 199.68ms | 1.14s | 248.32ms | 1.41s | 222.85ms | 229.00ms | 209.36ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 287.20ms | 1.69s | 474.90ms | 1.85s (partial) | 483.91ms | 344.15ms | 263.58ms |

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
