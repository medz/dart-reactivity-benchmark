# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.38s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.34s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.37s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.32s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.08s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.81s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.24s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.11ms | 162.44ms | 2.34s | 197.12ms | 1.52s | 206.01ms | 278.50ms | 2.18s | 148.13ms (fail) |
| broadPropagation | 371.57ms | 314.93ms | 4.53s | 492.58ms | 81.78ms (fail) | 454.64ms | 504.56ms | 5.42s | 6.16ms (fail) |
| deepPropagation | 128.13ms | 98.22ms | 1.57s | 176.56ms | 1.94s (fail) | 176.59ms | 170.12ms | 2.00s | 144.63ms (fail) |
| diamond | 237.66ms | 212.90ms | 2.51s | 298.45ms | 2.66s (fail) | 285.25ms | 362.31ms | 3.44s | 185.08ms (fail) |
| mux | 380.16ms | 346.62ms | 1.88s | 400.71ms | 587.79ms (fail) | 407.27ms | 451.38ms | 2.01s | 197.99ms (fail) |
| repeatedObservers | 47.04ms | 50.22ms | 241.32ms | 40.88ms | 377.20ms (fail) | 45.17ms | 83.81ms | 218.54ms | 52.60ms (fail) |
| triangle | 87.88ms | 78.53ms | 780.74ms | 102.04ms | 984.51ms (fail) | 101.23ms | 117.87ms | 1.12s | 79.11ms (fail) |
| unstable | 62.61ms | 69.60ms | 351.54ms | 72.85ms | 620.48ms (fail) | 79.31ms | 98.29ms | 352.82ms | 338.19ms (fail) |
| molBench | 494.40ms | 491.86ms | 577.25ms | 486.37ms | 11.51ms | 485.55ms | 494.85ms | 1.70s | 975μs |
| create_signals | 6.88ms | 25.21ms | 81.32ms | 4.58ms | 23.93ms | 25.73ms | 100.37ms | 82.19ms | 59.82ms |
| comp_0to1 | 20.14ms | 11.11ms | 16.32ms | 17.29ms | 13.15ms | 11.29ms | 37.43ms | 35.36ms | 52.50ms |
| comp_1to1 | 19.77ms | 18.37ms | 40.59ms | 12.48ms | 22.11ms | 28.80ms | 40.36ms | 40.34ms | 55.70ms |
| comp_2to1 | 13.71ms | 12.49ms | 34.88ms | 17.39ms | 27.30ms | 7.99ms | 37.45ms | 39.86ms | 36.26ms |
| comp_4to1 | 1.69ms | 1.76ms | 13.68ms | 22.29ms | 6.85ms | 1.96ms | 11.79ms | 21.44ms | 16.32ms |
| comp_1000to1 | 4μs | 4μs | 16μs | 8μs | 4μs | 7μs | 18μs | 3.04ms | 41μs |
| comp_1to2 | 11.16ms | 10.77ms | 38.82ms | 18.15ms | 12.12ms | 19.82ms | 33.31ms | 30.19ms | 45.04ms |
| comp_1to4 | 8.22ms | 13.83ms | 18.43ms | 29.18ms | 20.02ms | 16.70ms | 23.46ms | 30.17ms | 43.46ms |
| comp_1to8 | 3.92ms | 4.31ms | 20.81ms | 8.15ms | 4.89ms | 7.39ms | 25.98ms | 23.52ms | 42.19ms |
| comp_1to1000 | 3.25ms | 3.96ms | 15.83ms | 6.28ms | 4.25ms | 4.15ms | 17.05ms | 18.02ms | 38.11ms |
| update_1to1 | 4.55ms | 5.42ms | 27.96ms | 8.96ms | 86.32ms | 9.04ms | 15.99ms | 43.22ms | 5.71ms |
| update_2to1 | 2.31ms | 2.81ms | 13.59ms | 4.28ms | 43.71ms | 4.46ms | 7.84ms | 21.42ms | 2.83ms |
| update_4to1 | 1.12ms | 1.41ms | 7.06ms | 2.26ms | 20.73ms | 2.25ms | 4.01ms | 10.83ms | 1.45ms |
| update_1000to1 | 11μs | 25μs | 68μs | 21μs | 197μs | 22μs | 40μs | 119μs | 14μs |
| update_1to2 | 2.31ms | 2.75ms | 13.82ms | 4.80ms | 43.77ms | 4.48ms | 8.14ms | 21.16ms | 2.85ms |
| update_1to4 | 1.17ms | 1.43ms | 7.01ms | 2.21ms | 21.65ms | 2.23ms | 4.00ms | 10.83ms | 1.44ms |
| update_1to1000 | 30μs | 58μs | 183μs | 756μs | 140μs | 42μs | 171μs | 210μs | 404μs |
| cellx1000 | 7.38ms | 28.43ms | 73.14ms | 9.80ms | N/A | 9.46ms | 13.13ms | 165.40ms | 5.38ms |
| cellx2500 | 23.20ms | 120.72ms | 249.71ms | 26.88ms | N/A | 31.78ms | 36.12ms | 492.02ms | 23.82ms |
| cellx5000 | 48.41ms | 398.45ms | 588.85ms | 72.26ms | N/A | 63.96ms | 81.11ms | 1.15s | 57.95ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.87ms | 240.62ms | 2.05s | 434.73ms | 2.48s | 517.77ms | 353.13ms | 2.57s (partial) | 260.90ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 181.84ms | 183.37ms | 1.56s | 273.57ms | 1.58s (partial) | 282.42ms | 242.73ms | 2.31s (partial) | 223.47ms |
| 1000x12 - 4 sources - dynamic (large) | 302.63ms | 351.52ms | 1.89s | 3.73s | 2.65s (partial) | 3.75s | 464.09ms | 4.00s (partial) | 346.83ms |
| 1000x5 - 25 sources (wide dense) | 455.47ms | 630.39ms | 3.62s | 2.71s | 4.69s | 3.57s | 588.84ms | 5.02s (partial) | 503.37ms |
| 5x500 - 3 sources (deep) | 203.58ms | 199.12ms | 1.15s | 231.03ms | 1.39s | 226.02ms | 250.30ms | 1.94s (partial) | 205.52ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.21ms | 285.50ms | 1.76s | 455.31ms | 1.88s (partial) | 477.31ms | 381.16ms | 2.72s (partial) | 266.25ms |

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
