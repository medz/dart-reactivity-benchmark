# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.41s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.33s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.34s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.85s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.83s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 38.79s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.61ms | 162.34ms | 2.32s | 200.81ms | 1.40s | 206.05ms | 284.89ms | 2.14s | 169.16ms (fail) |
| broadPropagation | 375.41ms | 318.10ms | 4.44s | 501.51ms | 80.01ms (fail) | 524.35ms | 516.81ms | 5.31s | 6.37ms (fail) |
| deepPropagation | 127.68ms | 98.72ms | 1.54s | 176.82ms | 1.89s (fail) | 166.62ms | 170.52ms | 1.94s | 145.85ms (fail) |
| diamond | 235.05ms | 219.17ms | 2.44s | 298.91ms | 2.55s (fail) | 292.96ms | 362.76ms | 3.39s | 182.73ms (fail) |
| mux | 379.36ms | 351.90ms | 1.83s | 402.94ms | 551.22ms (fail) | 410.03ms | 441.90ms | 1.99s | 194.49ms (fail) |
| repeatedObservers | 47.08ms | 50.01ms | 234.34ms | 41.89ms | 388.03ms (fail) | 46.48ms | 81.89ms | 222.03ms | 52.28ms (fail) |
| triangle | 99.13ms | 76.87ms | 770.01ms | 102.63ms | 930.75ms (fail) | 101.86ms | 118.52ms | 1.16s | 77.81ms (fail) |
| unstable | 62.05ms | 69.80ms | 345.16ms | 73.57ms | 603.86ms (fail) | 82.85ms | 97.93ms | 347.02ms | 340.80ms (fail) |
| molBench | 493.39ms | 493.88ms | 571.84ms | 485.91ms | 12.06ms | 485.81ms | 494.44ms | 1.70s | 919μs |
| create_signals | 8.05ms | 27.84ms | 61.78ms | 5.35ms | 23.19ms | 25.34ms | 66.44ms | 82.09ms | 66.50ms |
| comp_0to1 | 19.57ms | 11.04ms | 16.30ms | 17.51ms | 13.04ms | 11.45ms | 34.91ms | 33.94ms | 60.95ms |
| comp_1to1 | 11.89ms | 24.55ms | 46.28ms | 11.09ms | 22.18ms | 26.87ms | 44.37ms | 58.59ms | 58.72ms |
| comp_2to1 | 17.67ms | 15.36ms | 23.75ms | 18.00ms | 23.24ms | 8.86ms | 17.50ms | 38.65ms | 39.33ms |
| comp_4to1 | 1.57ms | 4.03ms | 17.45ms | 8.32ms | 7.19ms | 1.99ms | 9.22ms | 29.13ms | 17.01ms |
| comp_1000to1 | 3μs | 4μs | 21μs | 4μs | 4μs | 4μs | 22μs | 2.69ms | 41μs |
| comp_1to2 | 11.93ms | 9.84ms | 35.60ms | 15.28ms | 10.96ms | 22.80ms | 35.42ms | 25.93ms | 48.04ms |
| comp_1to4 | 8.13ms | 13.99ms | 19.99ms | 26.67ms | 22.37ms | 9.16ms | 19.21ms | 28.64ms | 47.31ms |
| comp_1to8 | 4.32ms | 6.62ms | 23.26ms | 6.70ms | 4.69ms | 8.56ms | 23.47ms | 23.86ms | 43.70ms |
| comp_1to1000 | 3.13ms | 4.72ms | 16.20ms | 4.80ms | 4.11ms | 7.03ms | 17.22ms | 18.92ms | 39.14ms |
| update_1to1 | 4.51ms | 5.49ms | 23.55ms | 8.60ms | 83.78ms | 8.87ms | 15.91ms | 43.08ms | 5.73ms |
| update_2to1 | 2.37ms | 2.78ms | 11.04ms | 4.24ms | 42.13ms | 4.57ms | 7.79ms | 21.39ms | 2.82ms |
| update_4to1 | 1.19ms | 1.42ms | 7.30ms | 2.14ms | 20.20ms | 2.25ms | 4.02ms | 10.83ms | 1.42ms |
| update_1000to1 | 16μs | 22μs | 71μs | 21μs | 174μs | 22μs | 40μs | 119μs | 15μs |
| update_1to2 | 2.34ms | 2.75ms | 11.78ms | 4.65ms | 42.38ms | 4.49ms | 7.83ms | 21.12ms | 2.83ms |
| update_1to4 | 1.23ms | 1.43ms | 6.56ms | 2.14ms | 20.66ms | 2.27ms | 3.99ms | 10.86ms | 1.42ms |
| update_1to1000 | 47μs | 73μs | 181μs | 145μs | 135μs | 42μs | 181μs | 224μs | 386μs |
| cellx1000 | 7.25ms | 30.89ms | 72.31ms | 9.97ms | N/A | 9.66ms | 11.78ms | 156.73ms | 5.19ms |
| cellx2500 | 24.04ms | 123.14ms | 247.23ms | 26.46ms | N/A | 31.31ms | 30.89ms | 448.69ms | 20.50ms |
| cellx5000 | 51.23ms | 407.22ms | 542.86ms | 66.59ms | N/A | 58.44ms | 65.10ms | 1.04s | 74.84ms |
| 10x5 - 2 sources - read 20.0% (simple) | 227.96ms | 230.74ms | 2.05s | 441.14ms | 2.13s | 504.25ms | 362.62ms | 2.57s (partial) | 245.26ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.84ms | 183.67ms | 1.54s | 268.98ms | 1.41s (partial) | 285.16ms | 244.66ms | 2.32s (partial) | 198.52ms |
| 1000x12 - 4 sources - dynamic (large) | 298.40ms | 354.01ms | 2.04s | 3.71s | 2.41s (partial) | 3.74s | 457.31ms | 3.98s (partial) | 338.20ms |
| 1000x5 - 25 sources (wide dense) | 456.53ms | 631.98ms | 3.69s | 2.71s | 4.12s | 3.52s | 589.78ms | 4.99s (partial) | 492.47ms |
| 5x500 - 3 sources (deep) | 203.72ms | 195.95ms | 1.14s | 227.89ms | 1.31s | 227.75ms | 250.49ms | 1.93s (partial) | 204.60ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.24ms | 279.08ms | 1.72s | 448.13ms | 1.71s (partial) | 491.43ms | 381.00ms | 2.70s (partial) | 256.87ms |

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
