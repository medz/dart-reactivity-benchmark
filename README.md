# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.84s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.47s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.24s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.33s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.37s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.28s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.27s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.14s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.25ms | 168.29ms | 2.39s | 203.35ms | 1.38s | 205.78ms | 274.69ms | 2.13s | 165.17ms (fail) |
| broadPropagation | 373.38ms | 327.45ms | 4.52s | 456.76ms | 81.22ms (fail) | 449.30ms | 507.05ms | 5.46s | 5.95ms (fail) |
| deepPropagation | 131.85ms | 100.83ms | 1.58s | 175.76ms | 1.93s (fail) | 176.68ms | 168.90ms | 1.97s | 140.94ms (fail) |
| diamond | 234.82ms | 214.37ms | 2.48s | 283.39ms | 2.60s (fail) | 277.48ms | 349.62ms | 3.44s | 180.04ms (fail) |
| mux | 381.54ms | 347.50ms | 1.88s | 401.38ms | 562.32ms (fail) | 411.96ms | 444.68ms | 1.97s | 190.39ms (fail) |
| repeatedObservers | 47.28ms | 50.22ms | 237.01ms | 39.92ms | 375.52ms (fail) | 45.16ms | 81.96ms | 220.55ms | 52.29ms (fail) |
| triangle | 97.35ms | 78.94ms | 766.65ms | 98.03ms | 867.16ms (fail) | 99.90ms | 116.55ms | 1.12s | 76.12ms (fail) |
| unstable | 62.70ms | 69.95ms | 356.96ms | 69.90ms | 603.35ms (fail) | 79.09ms | 98.64ms | 345.23ms | 338.88ms (fail) |
| molBench | 494.14ms | 492.42ms | 570.45ms | 490.78ms | 11.67ms | 486.57ms | 494.38ms | 1.71s | 873μs |
| create_signals | 6.93ms | 28.41ms | 71.75ms | 16.76ms | 28.47ms | 25.17ms | 73.56ms | 57.72ms | 64.54ms |
| comp_0to1 | 22.12ms | 10.98ms | 25.73ms | 15.54ms | 13.83ms | 11.08ms | 27.82ms | 40.20ms | 55.60ms |
| comp_1to1 | 16.98ms | 25.82ms | 21.98ms | 7.07ms | 22.56ms | 26.98ms | 38.90ms | 46.92ms | 55.32ms |
| comp_2to1 | 14.16ms | 22.35ms | 9.30ms | 10.44ms | 25.31ms | 9.20ms | 25.14ms | 37.97ms | 41.92ms |
| comp_4to1 | 1.81ms | 7.42ms | 28.26ms | 9.07ms | 4.05ms | 1.88ms | 15.16ms | 18.63ms | 17.08ms |
| comp_1000to1 | 5μs | 7μs | 35μs | 6μs | 4μs | 5μs | 21μs | 2.89ms | 42μs |
| comp_1to2 | 14.73ms | 11.41ms | 38.65ms | 24.26ms | 15.59ms | 13.19ms | 40.66ms | 27.02ms | 48.87ms |
| comp_1to4 | 7.95ms | 15.60ms | 25.21ms | 13.63ms | 27.18ms | 11.47ms | 22.71ms | 23.94ms | 47.72ms |
| comp_1to8 | 3.66ms | 4.75ms | 22.90ms | 5.19ms | 4.76ms | 6.07ms | 22.21ms | 18.88ms | 44.66ms |
| comp_1to1000 | 3.06ms | 4.03ms | 16.21ms | 4.21ms | 4.04ms | 4.20ms | 17.01ms | 17.32ms | 39.33ms |
| update_1to1 | 4.49ms | 5.72ms | 26.07ms | 8.67ms | 83.24ms | 8.97ms | 15.96ms | 43.54ms | 5.64ms |
| update_2to1 | 2.30ms | 2.77ms | 13.26ms | 4.29ms | 43.73ms | 4.46ms | 7.94ms | 21.44ms | 2.84ms |
| update_4to1 | 1.12ms | 1.43ms | 6.90ms | 2.22ms | 20.03ms | 2.25ms | 3.98ms | 11.11ms | 1.41ms |
| update_1000to1 | 11μs | 13μs | 70μs | 22μs | 172μs | 22μs | 40μs | 118μs | 15μs |
| update_1to2 | 2.31ms | 2.72ms | 11.10ms | 4.60ms | 42.22ms | 4.47ms | 7.99ms | 21.14ms | 2.90ms |
| update_1to4 | 1.16ms | 1.41ms | 6.81ms | 2.23ms | 20.48ms | 2.26ms | 3.98ms | 10.79ms | 1.44ms |
| update_1to1000 | 28μs | 33μs | 175μs | 63μs | 94μs | 43μs | 174μs | 217μs | 374μs |
| cellx1000 | 7.25ms | 28.35ms | 81.55ms | 9.81ms | N/A | 9.61ms | 11.78ms | 144.61ms | 5.24ms |
| cellx2500 | 26.09ms | 127.32ms | 272.11ms | 30.14ms | N/A | 32.56ms | 32.38ms | 463.65ms | 24.37ms |
| cellx5000 | 79.03ms | 437.00ms | 565.78ms | 84.53ms | N/A | 83.84ms | 69.09ms | 1.06s | 78.09ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.53ms | 233.93ms | 2.04s | 438.31ms | 2.14s | 517.04ms | 353.38ms | 2.55s (partial) | 241.16ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.60ms | 184.54ms | 1.58s | 268.03ms | 1.44s (partial) | 287.40ms | 243.70ms | 2.35s (partial) | 201.87ms |
| 1000x12 - 4 sources - dynamic (large) | 310.93ms | 363.66ms | 2.03s | 3.77s | 2.47s (partial) | 3.77s | 455.03ms | 4.11s (partial) | 342.01ms |
| 1000x5 - 25 sources (wide dense) | 432.58ms | 619.22ms | 3.65s | 2.71s | 4.26s | 3.60s | 589.12ms | 5.11s (partial) | 499.87ms |
| 5x500 - 3 sources (deep) | 192.54ms | 197.16ms | 1.21s | 229.83ms | 1.45s | 221.73ms | 244.57ms | 1.91s (partial) | 207.46ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 276.57ms | 282.58ms | 1.75s | 441.34ms | 1.74s (partial) | 491.33ms | 381.49ms | 2.70s (partial) | 258.87ms |

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
