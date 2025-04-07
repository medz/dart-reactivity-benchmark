# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.71s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.25s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.11s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.34s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.44s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.07s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.03ms | 2.32s | 204.89ms | 1.25s | 1.41s | 210.94ms | 277.77ms | 149.00ms (fail) |
| broadPropagation | 352.80ms | 4.21s | 470.88ms | 4.99s | 82.39ms (fail) | 455.00ms | 499.07ms | 6.17ms (fail) |
| deepPropagation | 124.66ms | 1.52s | 176.69ms | 4.00s | 1.97s (fail) | 178.21ms | 175.28ms | 141.70ms (fail) |
| diamond | 234.96ms | 2.40s | 279.88ms | 14.03s (fail) | 2.66s (fail) | 292.32ms | 357.69ms | 189.72ms (fail) |
| mux | 370.12ms | 1.82s | 385.97ms | 1.02s | 577.06ms (fail) | 406.31ms | 441.57ms | 192.14ms (fail) |
| repeatedObservers | 45.49ms | 228.25ms | 38.14ms | 9.74s | 398.96ms (fail) | 46.17ms | 78.50ms | 52.40ms (fail) |
| triangle | 83.71ms | 760.32ms | 99.03ms | 4.52s | 938.34ms (fail) | 101.98ms | 118.09ms | 75.63ms (fail) |
| unstable | 60.13ms | 354.00ms | 70.70ms | 7.64s | 626.49ms (fail) | 73.27ms | 96.63ms | 336.78ms (fail) |
| molBench | 491.68ms | 579.26ms | 491.91ms | 5.90s | 12.32ms | 486.37ms | 492.45ms | 992μs |
| create_signals | 21.39ms | 66.73ms | 4.74ms | 13.34ms | 24.21ms | 26.26ms | 74.04ms | 69.25ms |
| comp_0to1 | 8.27ms | 26.02ms | 18.57ms | 13.68ms | 14.16ms | 11.98ms | 28.02ms | 61.81ms |
| comp_1to1 | 4.44ms | 34.12ms | 14.45ms | 99.56ms | 23.61ms | 27.62ms | 49.71ms | 52.43ms |
| comp_2to1 | 2.38ms | 31.78ms | 17.13ms | 72.37ms | 24.75ms | 10.70ms | 31.80ms | 36.30ms |
| comp_4to1 | 8.90ms | 24.99ms | 10.56ms | 85.23ms | 6.05ms | 3.10ms | 4.76ms | 16.27ms |
| comp_1000to1 | 4μs | 15μs | 10μs | 59.32ms | 3μs | 9μs | 14μs | 41μs |
| comp_1to2 | 15.44ms | 35.15ms | 21.84ms | 66.89ms | 11.28ms | 13.89ms | 32.47ms | 47.60ms |
| comp_1to4 | 5.56ms | 17.56ms | 34.48ms | 99.18ms | 25.60ms | 19.00ms | 14.93ms | 44.50ms |
| comp_1to8 | 5.34ms | 19.68ms | 8.45ms | 116.37ms | 4.93ms | 6.17ms | 20.06ms | 43.89ms |
| comp_1to1000 | 3.57ms | 15.10ms | 7.50ms | 47.90ms | 4.79ms | 5.87ms | 14.79ms | 37.69ms |
| update_1to1 | 11.30ms | 21.76ms | 8.23ms | N/A | 85.91ms | 9.27ms | 16.14ms | 5.79ms |
| update_2to1 | 5.04ms | 10.57ms | 4.04ms | N/A | 43.79ms | 4.61ms | 7.90ms | 2.92ms |
| update_4to1 | 2.77ms | 6.79ms | 2.10ms | N/A | 20.84ms | 2.38ms | 4.04ms | 1.43ms |
| update_1000to1 | 10μs | 58μs | 20μs | N/A | 179μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.56ms | 12.21ms | 4.06ms | N/A | 48.21ms | 4.91ms | 8.11ms | 2.95ms |
| update_1to4 | 1.99ms | 6.62ms | 2.04ms | N/A | 21.00ms | 2.30ms | 4.07ms | 1.44ms |
| update_1to1000 | 50μs | 193μs | 856μs | N/A | 134μs | 55μs | 146μs | 380μs |
| cellx1000 | 7.66ms | 75.22ms | 9.67ms | N/A | N/A | 9.79ms | 11.29ms | 5.57ms |
| cellx2500 | 24.75ms | 265.53ms | 28.86ms | N/A | N/A | 26.38ms | 35.83ms | 23.79ms |
| cellx5000 | 59.04ms | 543.92ms | 72.30ms | N/A | N/A | 65.31ms | 64.47ms | 80.72ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.43ms | 2.01s | 443.06ms | N/A | 2.32s | 513.95ms | 349.07ms | 238.90ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.43ms | 1.57s | 271.62ms | N/A | 1.53s (partial) | 283.39ms | 243.48ms | 203.59ms |
| 1000x12 - 4 sources - dynamic (large) | 283.52ms | 1.89s | 3.59s | N/A | 2.61s (partial) | 3.79s | 461.77ms | 342.83ms |
| 1000x5 - 25 sources (wide dense) | 411.78ms | 3.64s | 2.63s | N/A | 4.35s | 3.54s | 596.40ms | 506.38ms |
| 5x500 - 3 sources (deep) | 188.69ms | 1.16s | 232.70ms | N/A | 1.41s | 228.86ms | 257.57ms | 205.66ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.78ms | 1.76s | 458.36ms | N/A | 1.81s (partial) | 487.35ms | 385.10ms | 259.51ms |

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
