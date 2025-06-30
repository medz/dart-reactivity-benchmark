# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.27s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.31s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.20s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.16s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.22s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.87s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.34s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 176.48ms | 165.18ms | 2.35s | 202.01ms | 1.34s | 213.65ms | 272.37ms | 2.14s | 165.13ms (fail) |
| broadPropagation | 372.42ms | 316.98ms | 4.52s | 450.98ms | 77.94ms (fail) | 463.10ms | 501.47ms | 5.47s | 5.94ms (fail) |
| deepPropagation | 135.28ms | 98.10ms | 1.57s | 179.50ms | 1.87s (fail) | 167.33ms | 168.57ms | 2.00s | 141.20ms (fail) |
| diamond | 240.70ms | 213.05ms | 2.47s | 278.19ms | 2.49s (fail) | 282.82ms | 346.49ms | 3.46s | 186.82ms (fail) |
| mux | 378.67ms | 347.00ms | 1.87s | 400.19ms | 550.67ms (fail) | 407.65ms | 439.86ms | 2.01s | 191.96ms (fail) |
| repeatedObservers | 47.23ms | 50.04ms | 232.41ms | 39.74ms | 426.28ms (fail) | 44.73ms | 81.12ms | 220.18ms | 55.03ms (fail) |
| triangle | 86.61ms | 77.96ms | 791.02ms | 98.09ms | 918.59ms (fail) | 101.52ms | 117.57ms | 1.13s | 87.06ms (fail) |
| unstable | 61.04ms | 70.08ms | 353.11ms | 72.16ms | 582.72ms (fail) | 78.68ms | 96.72ms | 351.90ms | 337.79ms (fail) |
| molBench | 491.06ms | 490.35ms | 584.71ms | 487.55ms | 11.30ms | 487.13ms | 492.29ms | 1.71s | 862μs |
| create_signals | 7.71ms | 27.98ms | 83.81ms | 5.43ms | 23.64ms | 25.11ms | 93.11ms | 51.13ms | 58.59ms |
| comp_0to1 | 22.07ms | 11.80ms | 16.46ms | 17.22ms | 13.37ms | 11.51ms | 35.52ms | 22.47ms | 52.71ms |
| comp_1to1 | 21.29ms | 23.92ms | 53.78ms | 14.55ms | 22.89ms | 20.34ms | 49.58ms | 46.79ms | 54.72ms |
| comp_2to1 | 13.59ms | 15.38ms | 24.53ms | 16.93ms | 23.52ms | 7.79ms | 37.77ms | 37.79ms | 35.47ms |
| comp_4to1 | 1.72ms | 3.79ms | 25.97ms | 14.69ms | 6.32ms | 2.73ms | 5.00ms | 35.90ms | 15.79ms |
| comp_1000to1 | 4μs | 4μs | 16μs | 4μs | 3μs | 8μs | 17μs | 2.70ms | 40μs |
| comp_1to2 | 11.14ms | 33.06ms | 38.74ms | 18.86ms | 12.83ms | 15.21ms | 35.09ms | 27.94ms | 52.01ms |
| comp_1to4 | 8.64ms | 21.48ms | 20.33ms | 27.87ms | 22.62ms | 6.99ms | 17.22ms | 28.30ms | 44.31ms |
| comp_1to8 | 3.96ms | 5.74ms | 24.75ms | 6.26ms | 5.12ms | 6.16ms | 23.27ms | 22.94ms | 42.40ms |
| comp_1to1000 | 3.25ms | 4.39ms | 16.29ms | 6.67ms | 4.12ms | 4.14ms | 16.94ms | 18.18ms | 55.43ms |
| update_1to1 | 4.54ms | 5.41ms | 27.49ms | 8.66ms | 83.56ms | 8.91ms | 16.25ms | 43.74ms | 6.66ms |
| update_2to1 | 2.31ms | 2.78ms | 12.10ms | 4.25ms | 41.21ms | 4.48ms | 7.89ms | 21.42ms | 2.83ms |
| update_4to1 | 1.13ms | 1.34ms | 7.43ms | 2.17ms | 20.20ms | 2.20ms | 4.02ms | 10.79ms | 1.44ms |
| update_1000to1 | 11μs | 31μs | 69μs | 21μs | 193μs | 22μs | 51μs | 119μs | 14μs |
| update_1to2 | 2.30ms | 2.70ms | 13.56ms | 4.62ms | 41.83ms | 4.48ms | 8.02ms | 21.16ms | 2.83ms |
| update_1to4 | 1.16ms | 1.36ms | 6.78ms | 2.28ms | 20.37ms | 2.23ms | 4.01ms | 10.79ms | 1.44ms |
| update_1to1000 | 31μs | 32μs | 174μs | 977μs | 143μs | 42μs | 172μs | 210μs | 375μs |
| cellx1000 | 7.42ms | 28.98ms | 84.26ms | 9.72ms | N/A | 9.55ms | 13.11ms | 152.46ms | 5.25ms |
| cellx2500 | 26.70ms | 123.90ms | 302.13ms | 26.66ms | N/A | 32.02ms | 41.18ms | 445.55ms | 23.97ms |
| cellx5000 | 48.80ms | 389.73ms | 600.94ms | 69.86ms | N/A | 68.64ms | 86.82ms | 1.05s | 51.38ms |
| 10x5 - 2 sources - read 20.0% (simple) | 240.53ms | 232.50ms | 2.06s | 446.71ms | 2.08s | 509.02ms | 359.08ms | 2.60s (partial) | 235.69ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.66ms | 186.25ms | 1.57s | 268.71ms | 1.42s (partial) | 279.74ms | 242.69ms | 2.37s (partial) | 200.49ms |
| 1000x12 - 4 sources - dynamic (large) | 303.63ms | 340.24ms | 1.96s | 3.63s | 2.55s (partial) | 3.88s | 469.68ms | 4.06s (partial) | 344.48ms |
| 1000x5 - 25 sources (wide dense) | 453.88ms | 496.55ms | 3.58s | 2.70s | 4.18s | 3.31s | 583.69ms | 5.05s (partial) | 491.98ms |
| 5x500 - 3 sources (deep) | 205.22ms | 195.56ms | 1.18s | 223.98ms | 1.32s | 223.50ms | 254.07ms | 1.97s (partial) | 206.41ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.95ms | 282.24ms | 1.77s | 460.69ms | 1.72s (partial) | 477.93ms | 387.45ms | 2.76s (partial) | 255.24ms |

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
