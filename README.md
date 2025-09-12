# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.23s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.51s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.19s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.46s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.44s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 159.76ms | 2.39s | 200.78ms | 1.43s | 210.22ms | 255.98ms | 149.26ms (fail) |
| broadPropagation | 315.11ms | 4.34s | 461.09ms | 83.10ms (fail) | 468.16ms | 456.86ms | 6.49ms (fail) |
| deepPropagation | 100.19ms | 1.54s | 179.88ms | 1.91s (fail) | 177.56ms | 140.85ms | 143.05ms (fail) |
| diamond | 222.31ms | 2.42s | 284.10ms | 2.54s (fail) | 283.50ms | 309.55ms | 188.87ms (fail) |
| mux | 339.37ms | 1.82s | 392.54ms | 554.99ms (fail) | 402.06ms | 400.20ms | 192.79ms (fail) |
| repeatedObservers | 50.36ms | 238.40ms | 41.06ms | 384.07ms (fail) | 46.69ms | 91.13ms | 52.91ms (fail) |
| triangle | 77.43ms | 777.08ms | 100.20ms | 921.29ms (fail) | 103.35ms | 96.22ms | 78.27ms (fail) |
| unstable | 140.31ms | 349.82ms | 75.21ms | 618.29ms (fail) | 76.15ms | 169.75ms | 348.76ms (fail) |
| molBench | 486.12ms | 583.62ms | 487.59ms | 11.41ms | 485.98ms | 501.22ms | 990μs |
| create_signals | 27.48ms | 51.19ms | 5.21ms | 23.64ms | 25.68ms | 87.14ms | 66.40ms |
| comp_0to1 | 10.92ms | 15.77ms | 17.70ms | 13.30ms | 11.59ms | 41.95ms | 56.50ms |
| comp_1to1 | 26.43ms | 40.82ms | 12.52ms | 20.62ms | 27.51ms | 41.74ms | 57.95ms |
| comp_2to1 | 19.76ms | 35.03ms | 17.15ms | 24.65ms | 8.57ms | 19.14ms | 39.20ms |
| comp_4to1 | 1.70ms | 13.26ms | 12.31ms | 5.11ms | 1.90ms | 12.48ms | 18.77ms |
| comp_1000to1 | 4μs | 16μs | 4μs | 4μs | 5μs | 14μs | 112μs |
| comp_1to2 | 10.85ms | 33.97ms | 30.98ms | 11.34ms | 21.04ms | 29.04ms | 48.22ms |
| comp_1to4 | 15.05ms | 17.49ms | 21.39ms | 24.20ms | 10.04ms | 37.39ms | 46.83ms |
| comp_1to8 | 5.00ms | 20.85ms | 11.45ms | 4.98ms | 6.33ms | 23.88ms | 45.53ms |
| comp_1to1000 | 3.78ms | 15.84ms | 7.94ms | 4.21ms | 4.28ms | 15.59ms | 41.14ms |
| update_1to1 | 5.46ms | 25.95ms | 8.29ms | 81.87ms | 10.13ms | 16.77ms | 6.03ms |
| update_2to1 | 2.80ms | 12.48ms | 4.54ms | 45.21ms | 4.51ms | 8.40ms | 3.12ms |
| update_4to1 | 1.43ms | 7.12ms | 2.20ms | 19.94ms | 2.67ms | 4.18ms | 1.57ms |
| update_1000to1 | 25μs | 68μs | 21μs | 175μs | 25μs | 42μs | 15μs |
| update_1to2 | 2.79ms | 12.43ms | 4.08ms | 44.60ms | 4.50ms | 8.50ms | 3.05ms |
| update_1to4 | 1.46ms | 6.04ms | 2.08ms | 20.19ms | 2.56ms | 4.18ms | 1.58ms |
| update_1to1000 | 50μs | 176μs | 39μs | 97μs | 44μs | 144μs | 418μs |
| cellx1000 | 8.30ms | 74.33ms | 9.84ms | N/A | 9.81ms | 9.87ms | 5.69ms |
| cellx2500 | 20.42ms | 256.13ms | 27.03ms | N/A | 32.41ms | 29.02ms | 24.34ms |
| cellx5000 | 47.38ms | 574.54ms | 73.10ms | N/A | 66.50ms | 74.32ms | 58.36ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.91ms | 2.02s | 511.35ms | 2.13s | 511.99ms | 326.50ms | 264.14ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.57ms | 1.55s | 290.86ms | 1.51s (partial) | 280.13ms | 223.23ms | 195.62ms |
| 1000x12 - 4 sources - dynamic (large) | 350.45ms | 1.89s | 3.75s | 2.52s (partial) | 3.77s | 442.24ms | 339.90ms |
| 1000x5 - 25 sources (wide dense) | 495.74ms | 3.52s | 2.75s | 4.27s | 3.42s | 795.98ms | 514.70ms |
| 5x500 - 3 sources (deep) | 196.33ms | 1.12s | 246.18ms | 1.41s | 220.13ms | 228.39ms | 208.25ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.80ms | 1.69s | 472.81ms | 1.81s (partial) | 480.08ms | 332.64ms | 259.86ms |

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
