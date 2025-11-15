# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.29s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.63s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.23s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.06s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.76s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.75s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 125.17ms | 2.42s | 209.23ms | 1.37s | 212.76ms | 254.44ms | 165.87ms |
| broadPropagation | 240.83ms | 4.37s | 458.39ms | 83.28ms (fail) | 462.57ms | 455.74ms | 402.30ms |
| deepPropagation | 80.45ms | 1.50s | 175.63ms | 1.90s (fail) | 171.19ms | 136.73ms | 155.90ms |
| diamond | 152.75ms | 2.44s | 286.32ms | 2.62s (fail) | 287.07ms | 316.26ms | 217.22ms |
| mux | 293.13ms | 1.85s | 379.95ms | 560.66ms (fail) | 391.11ms | 369.43ms | 374.54ms |
| repeatedObservers | 26.98ms | 241.08ms | 40.89ms | 397.45ms (fail) | 47.78ms | 88.38ms | 58.87ms |
| triangle | 68.36ms | 797.57ms | 102.04ms | 919.41ms (fail) | 101.31ms | 101.42ms | 88.23ms |
| unstable | 47.71ms | 346.74ms | 70.66ms | 619.98ms (fail) | 78.33ms | 102.22ms | 343.63ms |
| molBench | 484.86ms | 592.94ms | 484.52ms | 11.97ms | 494.95ms | 495.07ms | 492.26ms |
| create_signals | 11.71ms | 73.34ms | 5.36ms | 26.88ms | 27.44ms | 76.33ms | 57.70ms |
| comp_0to1 | 10.29ms | 28.76ms | 18.04ms | 14.79ms | 12.61ms | 33.80ms | 52.40ms |
| comp_1to1 | 18.95ms | 41.74ms | 11.84ms | 23.01ms | 28.81ms | 35.21ms | 54.18ms |
| comp_2to1 | 8.54ms | 24.96ms | 24.68ms | 33.44ms | 17.94ms | 31.23ms | 36.33ms |
| comp_4to1 | 2.31ms | 19.25ms | 17.52ms | 6.94ms | 9.17ms | 30.07ms | 16.45ms |
| comp_1000to1 | 3μs | 15μs | 9μs | 4μs | 5μs | 18μs | 38μs |
| comp_1to2 | 10.66ms | 40.00ms | 20.27ms | 11.37ms | 27.37ms | 25.96ms | 44.69ms |
| comp_1to4 | 12.16ms | 35.15ms | 39.68ms | 27.46ms | 11.07ms | 35.18ms | 44.74ms |
| comp_1to8 | 4.41ms | 22.40ms | 7.51ms | 5.21ms | 8.42ms | 25.88ms | 42.49ms |
| comp_1to1000 | 5.08ms | 14.92ms | 6.42ms | 4.77ms | 4.33ms | 14.32ms | 38.36ms |
| update_1to1 | 5.71ms | 27.31ms | 8.82ms | 90.92ms | 9.46ms | 14.30ms | 6.10ms |
| update_2to1 | 4.83ms | 12.77ms | 4.36ms | 46.36ms | 4.71ms | 6.97ms | 3.07ms |
| update_4to1 | 2.17ms | 6.94ms | 2.23ms | 23.27ms | 2.37ms | 3.63ms | 1.58ms |
| update_1000to1 | 9μs | 67μs | 22μs | 211μs | 23μs | 35μs | 15μs |
| update_1to2 | 4.91ms | 14.43ms | 4.99ms | 47.77ms | 4.63ms | 7.01ms | 3.10ms |
| update_1to4 | 985μs | 7.05ms | 2.24ms | 23.19ms | 2.60ms | 3.53ms | 1.55ms |
| update_1to1000 | 47μs | 161μs | 986μs | 123μs | 44μs | 148μs | 372μs |
| cellx1000 | 5.82ms | 119.82ms | 11.42ms | N/A | 10.95ms | 10.13ms | 10.98ms |
| cellx2500 | 20.25ms | 300.67ms | 46.10ms | N/A | 36.53ms | 39.72ms | 30.77ms |
| cellx5000 | 47.56ms | 676.27ms | 128.41ms | N/A | 75.72ms | 138.65ms | 100.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 179.91ms | 1.93s | 434.31ms | 2.17s | 509.30ms | 321.07ms | 244.31ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 157.17ms | 1.48s | 270.61ms | 1.48s (partial) | 280.20ms | 223.79ms | 199.29ms |
| 1000x12 - 4 sources - dynamic (large) | 290.42ms | 1.79s | 3.69s | 2.53s (partial) | 3.80s | 458.30ms | 375.99ms |
| 1000x5 - 25 sources (wide dense) | 561.77ms | 3.64s | 2.58s | 4.53s | 3.22s | 844.68ms | 495.19ms |
| 5x500 - 3 sources (deep) | 157.09ms | 1.20s | 231.01ms | 1.41s | 225.57ms | 229.56ms | 210.39ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 250.82ms | 1.70s | 455.38ms | 1.75s (partial) | 475.33ms | 338.87ms | 259.08ms |

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
