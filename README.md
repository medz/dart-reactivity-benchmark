# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.59s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.37s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.37s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.48s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.48s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 155.99ms | 2.39s | 201.28ms | 1.47s | 209.34ms | 290.21ms | 148.54ms (fail) |
| broadPropagation | 318.67ms | 4.68s | 449.00ms | 84.60ms (fail) | 454.08ms | 526.38ms | 6.14ms (fail) |
| deepPropagation | 96.52ms | 1.59s | 177.04ms | 2.03s (fail) | 166.46ms | 170.94ms | 140.72ms (fail) |
| diamond | 216.74ms | 2.57s | 281.97ms | 2.69s (fail) | 280.95ms | 355.63ms | 211.83ms (fail) |
| mux | 340.56ms | 1.85s | 406.55ms | 560.59ms (fail) | 412.54ms | 475.08ms | 195.81ms (fail) |
| repeatedObservers | 50.81ms | 233.95ms | 40.12ms | 381.95ms (fail) | 44.84ms | 88.97ms | 52.41ms (fail) |
| triangle | 74.64ms | 795.57ms | 99.93ms | 921.67ms (fail) | 99.49ms | 116.67ms | 81.76ms (fail) |
| unstable | 70.90ms | 350.95ms | 70.20ms | 668.22ms (fail) | 79.78ms | 102.31ms | 335.59ms (fail) |
| molBench | 483.79ms | 578.44ms | 430.10ms | 12.29ms | 486.18ms | 500.75ms | 934μs |
| create_signals | 27.59ms | 70.71ms | 5.24ms | 24.58ms | 26.80ms | 49.47ms | 66.35ms |
| comp_0to1 | 10.99ms | 28.14ms | 17.96ms | 15.45ms | 11.60ms | 47.07ms | 54.04ms |
| comp_1to1 | 17.44ms | 44.65ms | 11.35ms | 26.50ms | 22.08ms | 40.40ms | 57.78ms |
| comp_2to1 | 10.98ms | 22.80ms | 11.66ms | 26.38ms | 9.02ms | 17.49ms | 42.39ms |
| comp_4to1 | 6.67ms | 18.18ms | 17.01ms | 3.31ms | 1.92ms | 13.21ms | 17.33ms |
| comp_1000to1 | 6μs | 21μs | 9μs | 5μs | 4μs | 15μs | 41μs |
| comp_1to2 | 10.12ms | 37.42ms | 25.90ms | 17.32ms | 17.97ms | 30.52ms | 47.76ms |
| comp_1to4 | 15.23ms | 20.87ms | 28.70ms | 26.93ms | 13.06ms | 22.84ms | 43.99ms |
| comp_1to8 | 4.72ms | 24.97ms | 5.36ms | 7.96ms | 6.67ms | 22.17ms | 43.59ms |
| comp_1to1000 | 3.94ms | 16.41ms | 6.04ms | 4.45ms | 4.34ms | 15.98ms | 38.32ms |
| update_1to1 | 5.73ms | 25.73ms | 8.65ms | 86.97ms | 8.91ms | 15.36ms | 5.65ms |
| update_2to1 | 2.88ms | 12.86ms | 4.27ms | 44.71ms | 4.53ms | 7.87ms | 2.84ms |
| update_4to1 | 1.51ms | 6.71ms | 2.28ms | 20.94ms | 2.25ms | 3.86ms | 1.42ms |
| update_1000to1 | 26μs | 71μs | 21μs | 225μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.93ms | 11.06ms | 4.65ms | 44.82ms | 4.49ms | 7.66ms | 2.85ms |
| update_1to4 | 1.55ms | 5.48ms | 2.13ms | 21.67ms | 2.28ms | 3.92ms | 1.43ms |
| update_1to1000 | 54μs | 173μs | 1.10ms | 144μs | 43μs | 168μs | 375μs |
| cellx1000 | 8.30ms | 83.44ms | 10.35ms | N/A | 10.51ms | 14.57ms | 6.13ms |
| cellx2500 | 29.25ms | 281.20ms | 29.54ms | N/A | 37.30ms | 47.60ms | 33.67ms |
| cellx5000 | 74.52ms | 606.41ms | 78.91ms | N/A | 92.20ms | 123.43ms | 91.21ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.09ms | 2.13s | 464.65ms | 2.39s | 509.29ms | 355.75ms | 241.50ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.43ms | 1.54s | 269.33ms | 1.53s (partial) | 279.93ms | 241.70ms | 200.97ms |
| 1000x12 - 4 sources - dynamic (large) | 355.45ms | 2.00s | 3.81s | 2.62s (partial) | 3.80s | 473.70ms | 362.14ms |
| 1000x5 - 25 sources (wide dense) | 499.18ms | 3.54s | 2.70s | 4.36s | 3.56s | 734.57ms | 501.71ms |
| 5x500 - 3 sources (deep) | 199.15ms | 1.21s | 231.61ms | 1.52s | 225.91ms | 275.00ms | 213.36ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 290.49ms | 1.70s | 458.47ms | 1.87s (partial) | 482.88ms | 393.90ms | 266.11ms |

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
