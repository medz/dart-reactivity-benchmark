# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.38s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.02s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.21s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.63s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.07s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.62s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 181.06ms | 158.01ms | 2.36s | 204.87ms | 1.41s | 206.26ms | 273.04ms | 2.16s | 165.69ms (fail) |
| broadPropagation | 384.42ms | 323.73ms | 4.26s | 454.35ms | 86.45ms (fail) | 457.49ms | 509.31ms | 5.48s | 6.57ms (fail) |
| deepPropagation | 127.32ms | 95.98ms | 1.53s | 176.93ms | 1.99s (fail) | 176.16ms | 169.44ms | 2.02s | 145.73ms (fail) |
| diamond | 237.08ms | 211.66ms | 2.43s | 282.99ms | 2.85s (fail) | 285.29ms | 367.63ms | 3.44s | 191.87ms (fail) |
| mux | 375.15ms | 345.83ms | 1.85s | 388.44ms | 586.20ms (fail) | 415.86ms | 447.00ms | 2.05s | 192.03ms (fail) |
| repeatedObservers | 47.95ms | 54.77ms | 229.69ms | 38.55ms | 409.41ms (fail) | 46.08ms | 78.83ms | 216.82ms | 57.75ms (fail) |
| triangle | 87.56ms | 76.46ms | 779.65ms | 99.36ms | 969.22ms (fail) | 109.04ms | 119.55ms | 1.13s | 79.74ms (fail) |
| unstable | 62.45ms | 70.46ms | 350.04ms | 70.86ms | 639.06ms (fail) | 70.92ms | 95.67ms | 351.87ms | 337.54ms (fail) |
| molBench | 482.82ms | 481.13ms | 583.76ms | 491.56ms | 12.60ms | 485.34ms | 493.46ms | 1.71s | 1.16ms |
| create_signals | 7.17ms | 26.32ms | 70.41ms | 5.25ms | 24.76ms | 27.23ms | 69.94ms | 52.29ms | 59.57ms |
| comp_0to1 | 23.14ms | 9.24ms | 23.63ms | 17.55ms | 16.23ms | 12.47ms | 26.54ms | 22.11ms | 53.18ms |
| comp_1to1 | 15.74ms | 23.68ms | 17.37ms | 10.85ms | 22.63ms | 27.16ms | 42.64ms | 45.16ms | 54.00ms |
| comp_2to1 | 15.75ms | 17.86ms | 16.96ms | 11.64ms | 24.01ms | 9.24ms | 16.78ms | 42.37ms | 36.20ms |
| comp_4to1 | 1.68ms | 3.82ms | 24.04ms | 16.55ms | 6.93ms | 2.07ms | 8.62ms | 34.71ms | 17.31ms |
| comp_1000to1 | 3μs | 4μs | 15μs | 11μs | 4μs | 5μs | 26μs | 2.79ms | 42μs |
| comp_1to2 | 10.20ms | 14.80ms | 33.72ms | 19.51ms | 12.45ms | 13.55ms | 38.49ms | 32.95ms | 48.20ms |
| comp_1to4 | 4.79ms | 15.38ms | 24.14ms | 31.54ms | 23.52ms | 13.73ms | 19.87ms | 28.40ms | 45.05ms |
| comp_1to8 | 6.98ms | 4.62ms | 23.92ms | 8.02ms | 5.29ms | 6.75ms | 23.28ms | 25.85ms | 44.09ms |
| comp_1to1000 | 3.51ms | 3.82ms | 15.07ms | 6.84ms | 4.33ms | 4.48ms | 14.67ms | 18.77ms | 39.16ms |
| update_1to1 | 4.90ms | 5.60ms | 22.68ms | 8.16ms | 89.17ms | 9.32ms | 16.10ms | 42.05ms | 5.73ms |
| update_2to1 | 2.38ms | 2.77ms | 10.87ms | 4.10ms | 45.40ms | 4.62ms | 7.91ms | 20.96ms | 2.91ms |
| update_4to1 | 1.24ms | 1.52ms | 6.29ms | 2.03ms | 22.61ms | 2.38ms | 4.03ms | 10.61ms | 1.50ms |
| update_1000to1 | 12μs | 27μs | 76μs | 20μs | 181μs | 22μs | 40μs | 129μs | 15μs |
| update_1to2 | 2.72ms | 2.80ms | 10.71ms | 4.11ms | 44.49ms | 4.90ms | 7.91ms | 20.82ms | 2.97ms |
| update_1to4 | 1.18ms | 1.41ms | 5.56ms | 2.04ms | 22.10ms | 2.32ms | 4.02ms | 10.61ms | 1.54ms |
| update_1to1000 | 30μs | 31μs | 162μs | 705μs | 114μs | 44μs | 145μs | 198μs | 395μs |
| cellx1000 | 9.39ms | 29.27ms | 73.59ms | 9.70ms | N/A | 9.81ms | 11.28ms | 156.09ms | 5.46ms |
| cellx2500 | 22.28ms | 136.07ms | 253.63ms | 25.78ms | N/A | 33.17ms | 30.77ms | 470.09ms | 28.62ms |
| cellx5000 | 43.58ms | 415.91ms | 599.50ms | 64.29ms | N/A | 67.34ms | 67.15ms | 1.13s | 75.37ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.94ms | 231.35ms | 2.01s | 442.26ms | 2.26s | 516.00ms | 365.36ms | 2.59s (partial) | 262.99ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.92ms | 183.76ms | 1.52s | 280.90ms | 1.52s (partial) | 285.14ms | 251.47ms | 2.48s (partial) | 222.38ms |
| 1000x12 - 4 sources - dynamic (large) | 301.97ms | 350.94ms | 1.94s | 3.53s | 2.56s (partial) | 3.76s | 474.47ms | 4.63s (partial) | 341.42ms |
| 1000x5 - 25 sources (wide dense) | 449.54ms | 613.64ms | 3.67s | 2.63s | 4.21s | 3.44s | 587.19ms | 5.35s (partial) | 511.62ms |
| 5x500 - 3 sources (deep) | 205.93ms | 195.29ms | 1.15s | 230.17ms | 1.41s | 233.66ms | 259.69ms | 1.96s (partial) | 203.07ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.95ms | 274.39ms | 1.74s | 451.02ms | 1.79s (partial) | 474.21ms | 388.50ms | 2.89s (partial) | 259.07ms |

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
