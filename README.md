# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.12s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.62s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.17s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.07s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.47s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.30s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.08s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 130.09ms | 2.34s | 200.51ms | 1.39s | 234.59ms | 241.34ms | 170.65ms |
| broadPropagation | 240.13ms | 4.37s | 471.40ms | 80.73ms (fail) | 471.42ms | 441.77ms | 399.52ms |
| deepPropagation | 80.87ms | 1.48s | 174.03ms | 1.89s (fail) | 174.44ms | 134.39ms | 159.77ms |
| diamond | 157.84ms | 2.39s | 283.68ms | 2.59s (fail) | 300.89ms | 325.39ms | 225.03ms |
| mux | 295.52ms | 1.86s | 379.61ms | 557.09ms (fail) | 391.54ms | 379.24ms | 362.13ms |
| repeatedObservers | 27.02ms | 229.07ms | 40.90ms | 386.80ms (fail) | 48.37ms | 87.21ms | 59.77ms |
| triangle | 64.16ms | 752.24ms | 101.03ms | 928.23ms (fail) | 105.26ms | 100.58ms | 87.10ms |
| unstable | 47.86ms | 343.84ms | 69.72ms | 617.63ms (fail) | 80.75ms | 101.92ms | 343.91ms |
| molBench | 333.74ms | 591.41ms | 486.60ms | 11.47ms | 495.79ms | 493.13ms | 492.87ms |
| create_signals | 7.55ms | 54.34ms | 5.35ms | 25.10ms | 26.67ms | 51.50ms | 57.15ms |
| comp_0to1 | 13.64ms | 15.42ms | 21.50ms | 13.95ms | 11.55ms | 22.85ms | 50.47ms |
| comp_1to1 | 30.63ms | 50.22ms | 13.18ms | 26.25ms | 20.39ms | 32.94ms | 53.34ms |
| comp_2to1 | 2.32ms | 35.62ms | 17.62ms | 31.44ms | 9.09ms | 34.08ms | 39.50ms |
| comp_4to1 | 1.75ms | 17.89ms | 12.34ms | 6.94ms | 2.84ms | 28.33ms | 15.82ms |
| comp_1000to1 | 3μs | 15μs | 7μs | 6μs | 5μs | 14μs | 38μs |
| comp_1to2 | 15.77ms | 39.74ms | 30.87ms | 11.69ms | 16.78ms | 30.01ms | 43.37ms |
| comp_1to4 | 17.86ms | 23.15ms | 26.69ms | 22.51ms | 24.11ms | 33.35ms | 43.44ms |
| comp_1to8 | 10.04ms | 24.36ms | 7.01ms | 5.50ms | 5.92ms | 19.54ms | 41.45ms |
| comp_1to1000 | 4.90ms | 15.34ms | 4.64ms | 4.59ms | 6.16ms | 14.48ms | 36.80ms |
| update_1to1 | 6.82ms | 22.10ms | 8.85ms | 88.63ms | 9.31ms | 14.25ms | 6.11ms |
| update_2to1 | 4.71ms | 11.35ms | 4.33ms | 40.92ms | 4.69ms | 6.96ms | 3.07ms |
| update_4to1 | 2.13ms | 6.80ms | 2.25ms | 19.41ms | 2.31ms | 3.60ms | 1.58ms |
| update_1000to1 | 9μs | 69μs | 22μs | 242μs | 24μs | 35μs | 15μs |
| update_1to2 | 3.19ms | 13.88ms | 4.36ms | 40.31ms | 4.69ms | 6.98ms | 3.08ms |
| update_1to4 | 1.62ms | 7.39ms | 2.26ms | 19.76ms | 2.51ms | 3.51ms | 1.56ms |
| update_1to1000 | 43μs | 160μs | 184μs | 140μs | 45μs | 158μs | 361μs |
| cellx1000 | 5.62ms | 98.85ms | 10.18ms | N/A | 9.99ms | 10.04ms | 10.61ms |
| cellx2500 | 15.23ms | 346.98ms | 41.35ms | N/A | 30.07ms | 34.80ms | 29.02ms |
| cellx5000 | 34.91ms | 682.47ms | 92.44ms | N/A | 85.30ms | 102.40ms | 99.54ms |
| 10x5 - 2 sources - read 20.0% (simple) | 186.80ms | 1.95s | 434.62ms | 2.13s | 589.49ms | 325.23ms | 255.92ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.09ms | 1.46s | 266.59ms | 1.46s (partial) | 279.14ms | 222.71ms | 201.46ms |
| 1000x12 - 4 sources - dynamic (large) | 276.79ms | 1.86s | 3.66s | 2.43s (partial) | 3.96s | 459.90ms | 365.87ms |
| 1000x5 - 25 sources (wide dense) | 538.46ms | 3.34s | 2.52s | 4.08s | 3.37s | 829.64ms | 496.49ms |
| 5x500 - 3 sources (deep) | 160.20ms | 1.20s | 228.69ms | 1.39s | 224.41ms | 232.11ms | 207.30ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 243.18ms | 1.68s | 455.25ms | 1.79s (partial) | 477.17ms | 344.12ms | 259.27ms |

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
