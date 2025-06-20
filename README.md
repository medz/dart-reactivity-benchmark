# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.85s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.40s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.41s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.27s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.77s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.20s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.68s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 177.29ms | 168.44ms | 2.40s | 206.50ms | 1.41s | 205.08ms | 277.44ms | 2.17s | 147.89ms (fail) |
| broadPropagation | 373.02ms | 316.77ms | 4.46s | 445.12ms | 81.41ms (fail) | 447.27ms | 516.31ms | 5.41s | 6.09ms (fail) |
| deepPropagation | 127.85ms | 98.23ms | 1.57s | 176.32ms | 1.90s (fail) | 170.29ms | 167.77ms | 2.01s | 142.32ms (fail) |
| diamond | 236.89ms | 210.46ms | 2.52s | 281.32ms | 2.58s (fail) | 278.17ms | 368.66ms | 3.42s | 181.19ms (fail) |
| mux | 390.95ms | 342.30ms | 1.85s | 399.28ms | 561.77ms (fail) | 408.53ms | 443.85ms | 2.00s | 193.12ms (fail) |
| repeatedObservers | 47.31ms | 50.17ms | 242.16ms | 37.22ms | 372.77ms (fail) | 44.48ms | 81.83ms | 218.83ms | 54.76ms (fail) |
| triangle | 88.26ms | 78.51ms | 766.27ms | 99.75ms | 867.72ms (fail) | 106.05ms | 118.92ms | 1.12s | 76.59ms (fail) |
| unstable | 62.50ms | 69.92ms | 361.32ms | 70.38ms | 605.92ms (fail) | 79.00ms | 96.61ms | 350.50ms | 336.10ms (fail) |
| molBench | 494.17ms | 491.46ms | 573.38ms | 485.28ms | 11.79ms | 485.13ms | 494.11ms | 1.71s | 948μs |
| create_signals | 6.53ms | 25.64ms | 69.56ms | 4.65ms | 22.84ms | 25.39ms | 88.71ms | 82.81ms | 68.58ms |
| comp_0to1 | 22.91ms | 12.29ms | 16.10ms | 17.21ms | 13.38ms | 12.22ms | 46.16ms | 41.35ms | 61.27ms |
| comp_1to1 | 15.78ms | 16.95ms | 39.75ms | 12.29ms | 23.03ms | 27.70ms | 40.51ms | 52.89ms | 61.89ms |
| comp_2to1 | 20.10ms | 19.20ms | 35.63ms | 12.80ms | 32.14ms | 8.80ms | 46.56ms | 40.73ms | 36.22ms |
| comp_4to1 | 1.81ms | 4.29ms | 14.27ms | 8.59ms | 7.03ms | 1.88ms | 5.15ms | 35.83ms | 16.38ms |
| comp_1000to1 | 4μs | 7μs | 16μs | 4μs | 3μs | 4μs | 27μs | 2.70ms | 42μs |
| comp_1to2 | 9.91ms | 11.25ms | 29.88ms | 25.96ms | 11.03ms | 12.21ms | 33.45ms | 31.51ms | 45.23ms |
| comp_1to4 | 4.45ms | 14.90ms | 29.78ms | 27.24ms | 24.09ms | 13.70ms | 22.84ms | 28.16ms | 43.59ms |
| comp_1to8 | 6.84ms | 4.72ms | 21.86ms | 15.31ms | 5.05ms | 7.04ms | 25.66ms | 23.63ms | 42.58ms |
| comp_1to1000 | 3.41ms | 3.98ms | 15.99ms | 5.28ms | 4.59ms | 4.26ms | 16.85ms | 18.45ms | 38.50ms |
| update_1to1 | 4.49ms | 5.44ms | 22.45ms | 8.65ms | 86.01ms | 8.90ms | 16.02ms | 44.25ms | 5.79ms |
| update_2to1 | 2.31ms | 2.76ms | 11.94ms | 4.26ms | 43.20ms | 4.48ms | 7.81ms | 21.45ms | 2.82ms |
| update_4to1 | 1.13ms | 1.40ms | 7.33ms | 2.17ms | 21.35ms | 2.26ms | 4.00ms | 10.82ms | 1.44ms |
| update_1000to1 | 11μs | 13μs | 71μs | 21μs | 202μs | 22μs | 40μs | 119μs | 14μs |
| update_1to2 | 2.31ms | 2.81ms | 12.42ms | 4.63ms | 43.26ms | 4.46ms | 8.03ms | 21.57ms | 2.84ms |
| update_1to4 | 1.21ms | 1.46ms | 5.74ms | 2.17ms | 21.91ms | 2.25ms | 4.00ms | 10.81ms | 1.43ms |
| update_1to1000 | 33μs | 58μs | 174μs | 54μs | 111μs | 42μs | 180μs | 211μs | 386μs |
| cellx1000 | 7.68ms | 27.75ms | 75.33ms | 9.99ms | N/A | 9.71ms | 13.41ms | 165.43ms | 5.52ms |
| cellx2500 | 24.11ms | 127.03ms | 257.05ms | 28.72ms | N/A | 33.24ms | 42.76ms | 486.09ms | 24.59ms |
| cellx5000 | 57.78ms | 419.28ms | 556.56ms | 87.61ms | N/A | 75.34ms | 110.87ms | 1.15s | 77.94ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.90ms | 232.26ms | 2.03s | 439.07ms | 2.13s | 509.55ms | 361.33ms | 2.58s (partial) | 242.43ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.45ms | 183.57ms | 1.54s | 270.63ms | 1.42s (partial) | 278.22ms | 248.11ms | 2.37s (partial) | 198.43ms |
| 1000x12 - 4 sources - dynamic (large) | 308.94ms | 359.18ms | 1.86s | 3.71s | 2.63s (partial) | 3.75s | 469.19ms | 4.09s (partial) | 347.12ms |
| 1000x5 - 25 sources (wide dense) | 461.96ms | 617.83ms | 3.55s | 2.69s | 4.12s | 3.57s | 589.92ms | 5.17s (partial) | 502.30ms |
| 5x500 - 3 sources (deep) | 206.71ms | 197.04ms | 1.16s | 231.17ms | 1.44s | 226.28ms | 257.02ms | 1.97s (partial) | 203.84ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.29ms | 285.01ms | 1.67s | 451.35ms | 1.71s (partial) | 476.68ms | 386.23ms | 2.84s (partial) | 262.68ms |

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
