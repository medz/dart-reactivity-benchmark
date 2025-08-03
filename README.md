# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.27s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.29s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.65s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.12s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.77s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.60ms | 2.37s | 200.35ms | 1.45s | 212.30ms | 259.74ms | 167.30ms (fail) |
| broadPropagation | 318.02ms | 4.61s | 455.49ms | 84.86ms (fail) | 448.93ms | 450.02ms | 5.93ms (fail) |
| deepPropagation | 96.97ms | 1.56s | 173.00ms | 2.03s (fail) | 168.32ms | 141.49ms | 143.39ms (fail) |
| diamond | 224.20ms | 2.52s | 278.14ms | 2.73s (fail) | 282.04ms | 310.30ms | 185.90ms (fail) |
| mux | 339.53ms | 1.87s | 399.80ms | 571.22ms (fail) | 450.09ms | 401.11ms | 199.96ms (fail) |
| repeatedObservers | 50.39ms | 238.26ms | 40.19ms | 386.44ms (fail) | 44.59ms | 88.48ms | 54.72ms (fail) |
| triangle | 98.53ms | 779.60ms | 101.45ms | 993.01ms (fail) | 101.06ms | 95.53ms | 78.46ms (fail) |
| unstable | 137.09ms | 350.61ms | 69.89ms | 613.08ms (fail) | 79.16ms | 177.48ms | 336.87ms (fail) |
| molBench | 494.05ms | 576.88ms | 484.80ms | 11.49ms | 486.18ms | 493.34ms | 929μs |
| create_signals | 27.09ms | 73.37ms | 5.34ms | 23.58ms | 25.76ms | 78.56ms | 64.66ms |
| comp_0to1 | 13.16ms | 25.46ms | 17.43ms | 14.11ms | 12.06ms | 26.46ms | 53.33ms |
| comp_1to1 | 26.22ms | 30.00ms | 13.13ms | 22.70ms | 21.22ms | 43.05ms | 54.81ms |
| comp_2to1 | 15.24ms | 9.48ms | 16.94ms | 24.41ms | 12.88ms | 8.76ms | 35.74ms |
| comp_4to1 | 3.97ms | 25.04ms | 12.18ms | 9.23ms | 3.06ms | 4.53ms | 16.62ms |
| comp_1000to1 | 4μs | 19μs | 4μs | 3μs | 4μs | 14μs | 42μs |
| comp_1to2 | 13.63ms | 35.72ms | 30.26ms | 9.59ms | 20.43ms | 41.42ms | 44.43ms |
| comp_1to4 | 12.62ms | 25.46ms | 22.22ms | 25.64ms | 15.34ms | 21.98ms | 43.58ms |
| comp_1to8 | 6.53ms | 21.95ms | 8.58ms | 4.99ms | 7.19ms | 20.52ms | 42.44ms |
| comp_1to1000 | 8.33ms | 16.34ms | 6.70ms | 4.32ms | 4.25ms | 14.49ms | 38.45ms |
| update_1to1 | 5.79ms | 25.90ms | 8.68ms | 84.67ms | 8.86ms | 16.53ms | 5.64ms |
| update_2to1 | 2.90ms | 13.35ms | 4.31ms | 42.70ms | 4.47ms | 8.53ms | 2.83ms |
| update_4to1 | 1.45ms | 6.55ms | 2.18ms | 20.66ms | 2.25ms | 4.25ms | 1.46ms |
| update_1000to1 | 25μs | 92μs | 21μs | 175μs | 23μs | 42μs | 14μs |
| update_1to2 | 2.81ms | 12.13ms | 4.74ms | 42.30ms | 4.46ms | 8.71ms | 2.88ms |
| update_1to4 | 1.49ms | 6.82ms | 2.27ms | 21.43ms | 2.24ms | 4.31ms | 1.45ms |
| update_1to1000 | 56μs | 182μs | 528μs | 95μs | 43μs | 154μs | 378μs |
| cellx1000 | 7.01ms | 72.31ms | 9.86ms | N/A | 10.02ms | 9.91ms | 5.59ms |
| cellx2500 | 18.57ms | 257.60ms | 27.62ms | N/A | 37.93ms | 30.27ms | 27.01ms |
| cellx5000 | 45.41ms | 546.64ms | 80.05ms | N/A | 71.26ms | 84.23ms | 68.10ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.22ms | 2.03s | 436.43ms | 2.43s | 513.91ms | 323.84ms | 245.33ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 187.30ms | 1.54s | 267.67ms | 1.55s (partial) | 283.94ms | 221.26ms | 198.56ms |
| 1000x12 - 4 sources - dynamic (large) | 344.90ms | 1.90s | 3.71s | 2.75s (partial) | 4.02s | 507.17ms | 339.61ms |
| 1000x5 - 25 sources (wide dense) | 496.07ms | 3.74s | 2.71s | 4.54s | 3.57s | 804.99ms | 506.00ms |
| 5x500 - 3 sources (deep) | 194.32ms | 1.14s | 236.97ms | 1.43s | 227.03ms | 227.12ms | 204.59ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 275.43ms | 1.70s | 457.59ms | 1.85s (partial) | 493.54ms | 336.89ms | 260.65ms |

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
