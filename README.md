# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.62s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.06s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.06s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.55s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.03s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.18s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.50s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 161.40ms | 2.29s | 192.63ms | 1.37s | 201.03ms | 236.94ms | 143.36ms (fail) |
| broadPropagation | 272.59ms | 4.25s | 429.29ms | 85.32ms (fail) | 392.12ms | 430.96ms | 5.59ms (fail) |
| deepPropagation | 103.14ms | 1.51s | 179.53ms | 2.19s (fail) | 173.74ms | 133.27ms | 162.41ms (fail) |
| diamond | 209.01ms | 2.34s | 251.34ms | 2.97s (fail) | 256.11ms | 319.06ms | 182.46ms (fail) |
| mux | 331.64ms | 1.98s | 353.43ms | 584.90ms (fail) | 358.60ms | 400.09ms | 177.25ms (fail) |
| repeatedObservers | 48.90ms | 232.92ms | 33.98ms | 404.95ms (fail) | 38.53ms | 95.06ms | 46.58ms (fail) |
| triangle | 73.05ms | 802.77ms | 93.10ms | 944.18ms (fail) | 93.72ms | 104.00ms | 77.25ms (fail) |
| unstable | 132.04ms | 342.36ms | 58.51ms | 618.32ms (fail) | 64.38ms | 184.89ms | 326.55ms (fail) |
| molBench | 362.82ms | 464.99ms | 366.18ms | 13.12ms | 367.90ms | 371.41ms | 905μs |
| create_signals | 34.04ms | 76.70ms | 7.10ms | 28.06ms | 25.88ms | 75.39ms | 61.34ms |
| comp_0to1 | 13.20ms | 33.89ms | 21.38ms | 16.44ms | 13.00ms | 32.51ms | 52.22ms |
| comp_1to1 | 29.59ms | 19.64ms | 20.13ms | 26.59ms | 31.57ms | 52.81ms | 56.06ms |
| comp_2to1 | 18.09ms | 21.67ms | 25.32ms | 33.32ms | 9.16ms | 31.94ms | 37.16ms |
| comp_4to1 | 4.40ms | 35.40ms | 18.00ms | 2.65ms | 2.92ms | 5.62ms | 17.03ms |
| comp_1000to1 | 8μs | 17μs | 7μs | 6μs | 8μs | 32μs | 46μs |
| comp_1to2 | 20.11ms | 43.11ms | 31.39ms | 16.82ms | 21.89ms | 35.75ms | 46.35ms |
| comp_1to4 | 27.07ms | 36.83ms | 30.96ms | 28.15ms | 14.00ms | 16.96ms | 46.44ms |
| comp_1to8 | 8.86ms | 27.43ms | 8.33ms | 7.40ms | 9.68ms | 22.35ms | 44.42ms |
| comp_1to1000 | 6.47ms | 17.14ms | 7.59ms | 6.80ms | 6.35ms | 15.91ms | 39.13ms |
| update_1to1 | 6.18ms | 23.25ms | 9.51ms | 86.56ms | 10.74ms | 17.94ms | 4.88ms |
| update_2to1 | 3.01ms | 11.08ms | 4.60ms | 43.59ms | 5.40ms | 8.99ms | 2.41ms |
| update_4to1 | 1.52ms | 5.85ms | 2.41ms | 20.82ms | 2.76ms | 4.51ms | 1.25ms |
| update_1000to1 | 16μs | 54μs | 25μs | 184μs | 28μs | 45μs | 12μs |
| update_1to2 | 2.95ms | 11.46ms | 4.74ms | 44.56ms | 5.26ms | 9.13ms | 2.48ms |
| update_1to4 | 1.51ms | 5.70ms | 2.42ms | 21.12ms | 2.87ms | 4.53ms | 1.24ms |
| update_1to1000 | 55μs | 177μs | 652μs | 146μs | 72μs | 156μs | 379μs |
| cellx1000 | 10.66ms | 113.63ms | 11.17ms | N/A | 11.96ms | 20.35ms | 10.32ms |
| cellx2500 | 32.11ms | 322.55ms | 37.61ms | N/A | 43.96ms | 66.36ms | 38.46ms |
| cellx5000 | 89.22ms | 670.76ms | 104.83ms | N/A | 111.25ms | 181.25ms | 94.54ms |
| 10x5 - 2 sources - read 20.0% (simple) | 225.34ms | 2.16s | 392.23ms | 2.37s | 424.05ms | 324.31ms | 235.81ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.34ms | 1.58s | 233.05ms | 1.48s (partial) | 237.34ms | 235.59ms | 176.37ms |
| 1000x12 - 4 sources - dynamic (large) | 312.57ms | 1.84s | 3.11s | 2.97s (partial) | 3.30s | 397.80ms | 278.25ms |
| 1000x5 - 25 sources (wide dense) | 454.13ms | 3.67s | 2.40s | 4.47s | 2.69s | 644.59ms | 386.90ms |
| 5x500 - 3 sources (deep) | 204.82ms | 1.30s | 229.01ms | 1.65s | 220.75ms | 281.20ms | 207.58ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 239.75ms | 1.79s | 393.50ms | 1.99s (partial) | 402.96ms | 301.04ms | 221.49ms |

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
