# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.14s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.49s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.39s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.26s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.34s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 159.39ms | 2.36s | 202.25ms | 1.45s | 211.94ms | 262.15ms | 157.90ms (fail) |
| broadPropagation | 317.30ms | 4.28s | 470.94ms | 81.88ms (fail) | 454.93ms | 454.98ms | 6.37ms (fail) |
| deepPropagation | 101.08ms | 1.52s | 181.46ms | 1.91s (fail) | 185.44ms | 141.68ms | 140.71ms (fail) |
| diamond | 222.49ms | 2.41s | 280.48ms | 2.55s (fail) | 282.53ms | 309.86ms | 205.06ms (fail) |
| mux | 337.18ms | 1.84s | 393.03ms | 558.57ms (fail) | 414.43ms | 402.67ms | 192.03ms (fail) |
| repeatedObservers | 50.29ms | 230.48ms | 40.52ms | 392.17ms (fail) | 46.15ms | 89.96ms | 53.08ms (fail) |
| triangle | 80.84ms | 786.35ms | 99.62ms | 949.15ms (fail) | 102.30ms | 99.95ms | 77.37ms (fail) |
| unstable | 141.53ms | 339.52ms | 74.19ms | 633.34ms (fail) | 74.83ms | 166.54ms | 340.45ms (fail) |
| molBench | 484.37ms | 584.15ms | 488.80ms | 11.21ms | 486.22ms | 501.21ms | 972μs |
| create_signals | 27.27ms | 88.94ms | 5.31ms | 24.70ms | 24.70ms | 57.78ms | 60.74ms |
| comp_0to1 | 9.48ms | 15.60ms | 17.52ms | 13.62ms | 11.01ms | 24.30ms | 55.25ms |
| comp_1to1 | 24.09ms | 38.76ms | 12.55ms | 21.16ms | 24.57ms | 39.54ms | 56.41ms |
| comp_2to1 | 18.23ms | 30.50ms | 9.48ms | 26.71ms | 13.55ms | 8.82ms | 37.97ms |
| comp_4to1 | 3.93ms | 24.93ms | 7.07ms | 7.29ms | 6.76ms | 26.05ms | 16.32ms |
| comp_1000to1 | 4μs | 20μs | 4μs | 5μs | 8μs | 15μs | 44μs |
| comp_1to2 | 14.12ms | 35.35ms | 16.38ms | 13.45ms | 19.12ms | 39.20ms | 47.20ms |
| comp_1to4 | 16.41ms | 19.94ms | 24.62ms | 22.54ms | 9.49ms | 14.52ms | 45.71ms |
| comp_1to8 | 7.31ms | 23.36ms | 7.23ms | 4.96ms | 7.18ms | 18.91ms | 45.14ms |
| comp_1to1000 | 4.30ms | 15.50ms | 5.65ms | 4.04ms | 4.46ms | 14.40ms | 40.97ms |
| update_1to1 | 5.51ms | 26.20ms | 8.30ms | 80.09ms | 11.44ms | 16.78ms | 6.01ms |
| update_2to1 | 2.83ms | 15.39ms | 4.34ms | 41.63ms | 5.52ms | 8.41ms | 3.11ms |
| update_4to1 | 1.48ms | 6.79ms | 2.06ms | 20.25ms | 2.83ms | 4.19ms | 1.55ms |
| update_1000to1 | 70μs | 74μs | 21μs | 183μs | 28μs | 42μs | 15μs |
| update_1to2 | 2.77ms | 14.89ms | 4.10ms | 41.40ms | 5.42ms | 8.49ms | 3.03ms |
| update_1to4 | 1.45ms | 6.50ms | 2.07ms | 20.11ms | 2.85ms | 4.19ms | 1.56ms |
| update_1to1000 | 50μs | 173μs | 137μs | 91μs | 45μs | 144μs | 408μs |
| cellx1000 | 7.20ms | 67.86ms | 10.20ms | N/A | 9.76ms | 10.19ms | 5.20ms |
| cellx2500 | 18.93ms | 239.22ms | 26.32ms | N/A | 32.66ms | 28.42ms | 22.12ms |
| cellx5000 | 45.53ms | 554.36ms | 71.33ms | N/A | 64.97ms | 68.08ms | 62.07ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.77ms | 1.99s | 510.50ms | 2.18s | 510.88ms | 328.81ms | 234.98ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.15ms | 1.50s | 291.41ms | 1.47s (partial) | 288.85ms | 220.30ms | 199.38ms |
| 1000x12 - 4 sources - dynamic (large) | 343.64ms | 1.85s | 3.75s | 2.52s (partial) | 3.78s | 433.70ms | 337.08ms |
| 1000x5 - 25 sources (wide dense) | 496.51ms | 3.50s | 2.76s | 4.23s | 3.58s | 779.16ms | 509.05ms |
| 5x500 - 3 sources (deep) | 207.65ms | 1.14s | 247.92ms | 1.34s | 225.28ms | 222.86ms | 205.67ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 283.44ms | 1.71s | 473.03ms | 1.73s (partial) | 485.61ms | 334.57ms | 260.62ms |

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
