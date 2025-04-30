# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.72s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.51s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.12s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.62s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.81s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.98s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.63ms | 2.39s | 196.71ms | 1.25s | 1.40s | 225.78ms | 294.69ms | 152.67ms (fail) |
| broadPropagation | 361.32ms | 4.33s | 456.44ms | 4.99s | 84.06ms (fail) | 462.98ms | 508.67ms | 5.97ms (fail) |
| deepPropagation | 128.73ms | 1.53s | 180.69ms | 4.00s | 2.07s (fail) | 185.08ms | 175.96ms | 140.54ms (fail) |
| diamond | 237.21ms | 2.47s | 285.00ms | 14.03s (fail) | 2.90s (fail) | 289.85ms | 366.72ms | 185.22ms (fail) |
| mux | 373.75ms | 1.86s | 379.73ms | 1.02s | 577.27ms (fail) | 410.92ms | 437.46ms | 194.84ms (fail) |
| repeatedObservers | 45.00ms | 239.64ms | 38.01ms | 9.74s | 385.99ms (fail) | 47.22ms | 78.44ms | 52.18ms (fail) |
| triangle | 86.17ms | 796.82ms | 100.65ms | 4.52s | 940.28ms (fail) | 102.36ms | 119.75ms | 76.36ms (fail) |
| unstable | 71.37ms | 358.89ms | 70.06ms | 7.64s | 633.83ms (fail) | 75.11ms | 93.85ms | 335.23ms (fail) |
| molBench | 491.77ms | 584.62ms | 493.09ms | 5.90s | 12.65ms | 488.69ms | 493.42ms | 1.15ms |
| create_signals | 24.10ms | 52.59ms | 5.45ms | 13.34ms | 25.15ms | 25.39ms | 77.98ms | 69.91ms |
| comp_0to1 | 7.88ms | 18.81ms | 17.55ms | 13.68ms | 15.30ms | 12.44ms | 26.79ms | 56.44ms |
| comp_1to1 | 4.14ms | 27.92ms | 11.93ms | 99.56ms | 25.33ms | 27.50ms | 38.92ms | 61.02ms |
| comp_2to1 | 2.25ms | 11.64ms | 11.82ms | 72.37ms | 25.55ms | 10.07ms | 43.55ms | 44.77ms |
| comp_4to1 | 8.79ms | 21.82ms | 15.01ms | 85.23ms | 5.95ms | 2.21ms | 4.53ms | 17.20ms |
| comp_1000to1 | 3μs | 15μs | 4μs | 59.32ms | 4μs | 5μs | 16μs | 41μs |
| comp_1to2 | 15.02ms | 35.48ms | 18.42ms | 66.89ms | 12.99ms | 13.93ms | 27.83ms | 46.22ms |
| comp_1to4 | 6.03ms | 24.16ms | 36.42ms | 99.18ms | 26.58ms | 11.32ms | 25.21ms | 44.62ms |
| comp_1to8 | 4.41ms | 23.92ms | 8.01ms | 116.37ms | 8.30ms | 6.89ms | 25.16ms | 44.42ms |
| comp_1to1000 | 3.57ms | 15.39ms | 5.95ms | 47.90ms | 4.87ms | 8.48ms | 15.12ms | 38.53ms |
| update_1to1 | 11.22ms | 24.80ms | 8.31ms | N/A | 91.79ms | 12.21ms | 16.26ms | 5.74ms |
| update_2to1 | 5.11ms | 11.05ms | 4.10ms | N/A | 44.59ms | 4.60ms | 7.92ms | 2.89ms |
| update_4to1 | 2.77ms | 6.07ms | 2.07ms | N/A | 21.16ms | 2.31ms | 4.07ms | 1.49ms |
| update_1000to1 | 23μs | 66μs | 20μs | N/A | 196μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.65ms | 10.88ms | 4.15ms | N/A | 45.43ms | 4.97ms | 8.23ms | 2.96ms |
| update_1to4 | 2.43ms | 5.41ms | 2.06ms | N/A | 22.15ms | 2.31ms | 4.08ms | 1.49ms |
| update_1to1000 | 47μs | 162μs | 172μs | N/A | 119μs | 43μs | 149μs | 379μs |
| cellx1000 | 7.49ms | 74.94ms | 9.87ms | N/A | N/A | 9.40ms | 17.66ms | 5.07ms |
| cellx2500 | 20.79ms | 241.85ms | 29.21ms | N/A | N/A | 31.13ms | 73.89ms | 21.70ms |
| cellx5000 | 50.17ms | 547.39ms | 86.62ms | N/A | N/A | 63.56ms | 193.31ms | 74.89ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.04ms | 2.10s | 446.73ms | N/A | 2.20s | 508.97ms | 350.34ms | 239.70ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.78ms | 1.61s | 279.07ms | N/A | 1.50s (partial) | 282.34ms | 243.09ms | 207.18ms |
| 1000x12 - 4 sources - dynamic (large) | 280.37ms | 1.85s | 3.58s | N/A | 2.50s (partial) | 4.03s | 485.19ms | 336.33ms |
| 1000x5 - 25 sources (wide dense) | 418.95ms | 3.65s | 2.65s | N/A | 4.26s | 3.56s | 600.66ms | 504.80ms |
| 5x500 - 3 sources (deep) | 188.11ms | 1.15s | 235.22ms | N/A | 1.34s | 228.41ms | 257.56ms | 206.22ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.79ms | 1.74s | 458.66ms | N/A | 1.79s (partial) | 477.63ms | 388.68ms | 259.56ms |

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
