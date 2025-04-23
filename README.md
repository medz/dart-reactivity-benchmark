# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.41s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 4.91s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.18s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.32s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 25.93s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.23s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 20.84s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.65ms | 2.28s | 191.80ms | 1.25s | 1.28s | 192.53ms | 256.63ms | 158.31ms (fail) |
| broadPropagation | 326.71ms | 4.02s | 440.65ms | 4.99s | 76.49ms (fail) | 432.93ms | 467.25ms | 5.92ms (fail) |
| deepPropagation | 114.59ms | 1.45s | 164.87ms | 4.00s | 1.76s (fail) | 166.61ms | 162.11ms | 133.70ms (fail) |
| diamond | 220.19ms | 2.31s | 260.06ms | 14.03s (fail) | 2.42s (fail) | 271.70ms | 326.99ms | 179.68ms (fail) |
| mux | 346.97ms | 1.69s | 354.72ms | 1.02s | 535.48ms (fail) | 382.09ms | 406.91ms | 180.91ms (fail) |
| repeatedObservers | 41.17ms | 221.04ms | 35.20ms | 9.74s | 358.01ms (fail) | 42.42ms | 72.19ms | 48.60ms (fail) |
| triangle | 78.67ms | 725.07ms | 92.63ms | 4.52s | 821.68ms (fail) | 102.51ms | 110.95ms | 75.95ms (fail) |
| unstable | 56.04ms | 329.62ms | 65.95ms | 7.64s | 582.34ms (fail) | 67.72ms | 87.77ms | 315.57ms (fail) |
| molBench | 452.93ms | 535.47ms | 453.18ms | 5.90s | 11.18ms | 449.29ms | 455.27ms | 1.08ms |
| create_signals | 25.54ms | 74.14ms | 4.57ms | 13.34ms | 22.07ms | 28.31ms | 68.03ms | 65.98ms |
| comp_0to1 | 7.48ms | 32.52ms | 16.97ms | 13.68ms | 12.54ms | 12.56ms | 24.45ms | 51.80ms |
| comp_1to1 | 3.99ms | 25.51ms | 13.24ms | 99.56ms | 17.61ms | 25.09ms | 43.88ms | 55.25ms |
| comp_2to1 | 2.20ms | 18.50ms | 17.89ms | 72.37ms | 21.43ms | 11.35ms | 22.67ms | 41.62ms |
| comp_4to1 | 7.80ms | 26.75ms | 10.46ms | 85.23ms | 6.18ms | 2.11ms | 13.27ms | 16.75ms |
| comp_1000to1 | 3μs | 36μs | 3μs | 59.32ms | 3μs | 5μs | 18μs | 40μs |
| comp_1to2 | 9.75ms | 34.45ms | 16.31ms | 66.89ms | 10.01ms | 18.06ms | 34.73ms | 43.86ms |
| comp_1to4 | 12.50ms | 23.31ms | 18.54ms | 99.18ms | 23.23ms | 8.74ms | 19.04ms | 43.57ms |
| comp_1to8 | 3.87ms | 20.31ms | 8.33ms | 116.37ms | 4.51ms | 5.93ms | 23.48ms | 40.11ms |
| comp_1to1000 | 3.08ms | 14.92ms | 5.57ms | 47.90ms | 3.99ms | 4.39ms | 14.80ms | 35.42ms |
| update_1to1 | 10.64ms | 21.89ms | 7.82ms | N/A | 83.10ms | 8.82ms | 15.45ms | 5.55ms |
| update_2to1 | 4.73ms | 10.32ms | 3.79ms | N/A | 41.80ms | 4.27ms | 7.49ms | 2.67ms |
| update_4to1 | 2.67ms | 5.79ms | 2.02ms | N/A | 20.11ms | 2.34ms | 3.80ms | 1.38ms |
| update_1000to1 | 21μs | 66μs | 18μs | N/A | 174μs | 23μs | 37μs | 14μs |
| update_1to2 | 5.19ms | 11.70ms | 3.80ms | N/A | 41.70ms | 4.54ms | 7.57ms | 2.81ms |
| update_1to4 | 2.36ms | 4.88ms | 1.87ms | N/A | 20.39ms | 2.17ms | 3.80ms | 1.44ms |
| update_1to1000 | 41μs | 160μs | 375μs | N/A | 92μs | 40μs | 138μs | 349μs |
| cellx1000 | 6.65ms | 64.88ms | 9.02ms | N/A | N/A | 8.94ms | 10.60ms | 4.80ms |
| cellx2500 | 17.90ms | 230.85ms | 23.58ms | N/A | N/A | 29.50ms | 28.33ms | 21.99ms |
| cellx5000 | 37.77ms | 501.69ms | 62.59ms | N/A | N/A | 55.14ms | 73.25ms | 64.80ms |
| 10x5 - 2 sources - read 20.0% (simple) | 214.43ms | 1.88s | 409.36ms | N/A | 2.04s | 470.01ms | 359.63ms | 226.41ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 161.67ms | 1.45s | 251.43ms | N/A | 1.31s (partial) | 255.31ms | 229.69ms | 187.12ms |
| 1000x12 - 4 sources - dynamic (large) | 258.02ms | 1.82s | 3.23s | N/A | 2.33s (partial) | 3.46s | 423.18ms | 314.50ms |
| 1000x5 - 25 sources (wide dense) | 374.89ms | 3.44s | 2.39s | N/A | 4.05s | 3.15s | 545.63ms | 463.05ms |
| 5x500 - 3 sources (deep) | 178.31ms | 1.07s | 208.80ms | N/A | 1.29s | 206.82ms | 232.53ms | 202.41ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 242.81ms | 1.60s | 410.81ms | N/A | 1.64s (partial) | 439.20ms | 359.84ms | 234.23ms |

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
