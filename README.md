# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.52s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.46s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.58s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.10s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.33s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.15ms | 2.34s | 199.86ms | 1.39s | 213.13ms | 255.34ms | 158.32ms (fail) |
| broadPropagation | 266.64ms | 4.54s | 458.82ms | 81.15ms (fail) | 458.62ms | 440.11ms | 6.34ms (fail) |
| deepPropagation | 80.81ms | 1.57s | 181.10ms | 1.95s (fail) | 179.71ms | 132.05ms | 141.76ms (fail) |
| diamond | 179.89ms | 2.42s | 281.87ms | 2.64s (fail) | 287.44ms | 341.40ms | 202.49ms (fail) |
| mux | 324.96ms | 1.90s | 386.38ms | 557.11ms (fail) | 411.86ms | 504.25ms | 192.87ms (fail) |
| repeatedObservers | 49.04ms | 232.63ms | 40.27ms | 386.52ms (fail) | 46.45ms | 94.68ms | 53.42ms (fail) |
| triangle | 67.02ms | 778.13ms | 100.47ms | 889.46ms (fail) | 102.10ms | 109.41ms | 84.05ms (fail) |
| unstable | 62.97ms | 345.95ms | 74.65ms | 622.51ms (fail) | 75.96ms | 104.12ms | 339.19ms (fail) |
| molBench | 484.83ms | 585.55ms | 488.43ms | 11.85ms | 484.73ms | 498.76ms | 935μs |
| create_signals | 30.50ms | 76.48ms | 5.31ms | 24.65ms | 25.83ms | 80.50ms | 66.59ms |
| comp_0to1 | 17.38ms | 25.89ms | 17.82ms | 15.13ms | 11.47ms | 38.72ms | 64.06ms |
| comp_1to1 | 13.09ms | 30.46ms | 14.52ms | 33.63ms | 28.41ms | 43.88ms | 58.58ms |
| comp_2to1 | 3.60ms | 12.15ms | 16.80ms | 38.10ms | 13.63ms | 26.69ms | 42.85ms |
| comp_4to1 | 5.75ms | 20.99ms | 14.75ms | 9.04ms | 1.89ms | 6.87ms | 18.66ms |
| comp_1000to1 | 4μs | 24μs | 5μs | 4μs | 4μs | 28μs | 44μs |
| comp_1to2 | 13.65ms | 40.19ms | 18.42ms | 11.85ms | 16.88ms | 46.87ms | 47.87ms |
| comp_1to4 | 22.42ms | 24.62ms | 33.67ms | 26.98ms | 9.29ms | 32.38ms | 45.87ms |
| comp_1to8 | 11.40ms | 23.20ms | 7.81ms | 9.19ms | 6.36ms | 34.30ms | 45.43ms |
| comp_1to1000 | 8.47ms | 15.27ms | 7.70ms | 6.59ms | 4.38ms | 24.75ms | 41.21ms |
| update_1to1 | 7.14ms | 26.78ms | 8.37ms | 87.78ms | 10.24ms | 32.18ms | 6.01ms |
| update_2to1 | 5.90ms | 10.87ms | 4.39ms | 42.29ms | 4.48ms | 16.02ms | 3.09ms |
| update_4to1 | 1.42ms | 6.25ms | 2.09ms | 19.87ms | 2.52ms | 8.01ms | 1.55ms |
| update_1000to1 | 13μs | 67μs | 21μs | 214μs | 25μs | 85μs | 15μs |
| update_1to2 | 2.69ms | 12.13ms | 4.18ms | 42.10ms | 4.54ms | 16.50ms | 3.02ms |
| update_1to4 | 1.66ms | 7.03ms | 2.08ms | 20.42ms | 2.53ms | 8.02ms | 1.54ms |
| update_1to1000 | 47μs | 174μs | 823μs | 162μs | 42μs | 299μs | 408μs |
| cellx1000 | 6.45ms | 94.06ms | 9.79ms | N/A | 9.84ms | 9.77ms | 5.09ms |
| cellx2500 | 17.50ms | 308.31ms | 26.98ms | N/A | 31.94ms | 28.23ms | 24.01ms |
| cellx5000 | 60.45ms | 654.95ms | 76.63ms | N/A | 61.57ms | 72.03ms | 61.91ms |
| 10x5 - 2 sources - read 20.0% (simple) | 213.22ms | 2.06s | 447.63ms | 2.19s | 506.61ms | 321.74ms | 264.02ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.33ms | 1.52s | 274.30ms | 1.49s (partial) | 279.82ms | 228.38ms | 198.76ms |
| 1000x12 - 4 sources - dynamic (large) | 274.05ms | 1.99s | 3.69s | 2.50s (partial) | 4.02s | 487.38ms | 337.39ms |
| 1000x5 - 25 sources (wide dense) | 557.32ms | 3.54s | 2.73s | 4.08s | 3.57s | 830.41ms | 504.05ms |
| 5x500 - 3 sources (deep) | 177.84ms | 1.14s | 232.25ms | 1.35s | 222.58ms | 239.97ms | 215.16ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 247.46ms | 1.75s | 463.75ms | 1.79s (partial) | 475.14ms | 342.23ms | 260.91ms |

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
