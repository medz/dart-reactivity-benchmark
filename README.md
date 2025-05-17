# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.79s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.39s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.35s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.95s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.16s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.43s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.20s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.07s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 182.30ms | 156.91ms | 2.33s | 205.40ms | 1.40s | 211.40ms | 288.93ms | 2.16s | 156.43ms (fail) |
| broadPropagation | 381.86ms | 328.49ms | 4.24s | 456.02ms | 82.18ms (fail) | 462.26ms | 528.22ms | 5.37s | 6.04ms (fail) |
| deepPropagation | 128.26ms | 95.47ms | 1.50s | 174.36ms | 1.88s (fail) | 178.59ms | 176.39ms | 2.00s | 140.55ms (fail) |
| diamond | 235.50ms | 214.40ms | 2.42s | 285.76ms | 2.58s (fail) | 291.34ms | 369.05ms | 3.43s | 190.00ms (fail) |
| mux | 383.85ms | 343.72ms | 1.82s | 392.42ms | 573.40ms (fail) | 410.43ms | 448.62ms | 2.03s | 191.34ms (fail) |
| repeatedObservers | 48.14ms | 50.98ms | 232.44ms | 38.72ms | 386.43ms (fail) | 46.81ms | 79.15ms | 218.36ms | 52.51ms (fail) |
| triangle | 88.89ms | 75.03ms | 789.86ms | 101.28ms | 907.06ms (fail) | 103.43ms | 120.96ms | 1.13s | 77.93ms (fail) |
| unstable | 63.21ms | 68.47ms | 354.60ms | 71.04ms | 605.73ms (fail) | 78.78ms | 95.63ms | 347.31ms | 336.63ms (fail) |
| molBench | 483.57ms | 481.22ms | 579.77ms | 490.86ms | 11.79ms | 483.82ms | 493.39ms | 1.71s | 1.21ms |
| create_signals | 6.72ms | 26.39ms | 78.55ms | 5.16ms | 23.48ms | 25.20ms | 70.95ms | 45.27ms | 69.66ms |
| comp_0to1 | 24.43ms | 10.35ms | 36.09ms | 17.09ms | 13.64ms | 11.77ms | 26.52ms | 22.23ms | 55.61ms |
| comp_1to1 | 20.04ms | 24.05ms | 17.42ms | 14.21ms | 22.76ms | 26.48ms | 46.34ms | 43.30ms | 58.56ms |
| comp_2to1 | 20.62ms | 17.41ms | 23.57ms | 10.48ms | 30.17ms | 11.00ms | 34.98ms | 41.18ms | 41.96ms |
| comp_4to1 | 1.64ms | 7.07ms | 14.10ms | 11.07ms | 9.90ms | 3.41ms | 11.25ms | 24.30ms | 17.68ms |
| comp_1000to1 | 4μs | 4μs | 15μs | 5μs | 5μs | 6μs | 16μs | 3.29ms | 41μs |
| comp_1to2 | 9.24ms | 10.80ms | 41.30ms | 31.14ms | 12.82ms | 18.27ms | 26.18ms | 23.54ms | 44.86ms |
| comp_1to4 | 5.20ms | 18.31ms | 30.84ms | 31.12ms | 24.32ms | 21.11ms | 25.45ms | 34.05ms | 46.40ms |
| comp_1to8 | 6.64ms | 7.11ms | 21.49ms | 6.09ms | 6.38ms | 6.72ms | 23.37ms | 26.26ms | 43.92ms |
| comp_1to1000 | 3.63ms | 9.15ms | 15.32ms | 6.25ms | 5.86ms | 4.52ms | 15.62ms | 18.98ms | 38.60ms |
| update_1to1 | 4.89ms | 5.85ms | 21.83ms | 8.18ms | 82.87ms | 9.20ms | 16.26ms | 42.77ms | 5.73ms |
| update_2to1 | 2.45ms | 2.99ms | 10.65ms | 4.08ms | 43.59ms | 4.59ms | 7.98ms | 21.23ms | 2.87ms |
| update_4to1 | 1.29ms | 1.55ms | 5.36ms | 2.08ms | 20.67ms | 2.34ms | 4.04ms | 10.69ms | 1.48ms |
| update_1000to1 | 22μs | 14μs | 52μs | 20μs | 177μs | 23μs | 40μs | 119μs | 15μs |
| update_1to2 | 2.94ms | 2.94ms | 10.79ms | 4.10ms | 43.74ms | 4.92ms | 8.21ms | 21.09ms | 2.95ms |
| update_1to4 | 1.69ms | 1.51ms | 5.29ms | 2.06ms | 20.59ms | 2.33ms | 4.04ms | 10.73ms | 1.45ms |
| update_1to1000 | 62μs | 60μs | 173μs | 887μs | 150μs | 44μs | 150μs | 197μs | 376μs |
| cellx1000 | 7.36ms | 27.16ms | 71.48ms | 9.60ms | N/A | 9.47ms | 11.15ms | 158.48ms | 5.15ms |
| cellx2500 | 22.50ms | 127.38ms | 213.76ms | 24.81ms | N/A | 30.69ms | 30.29ms | 456.62ms | 22.38ms |
| cellx5000 | 42.61ms | 396.36ms | 548.68ms | 65.90ms | N/A | 57.69ms | 64.05ms | 1.11s | 72.10ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.31ms | 254.46ms | 2.00s | 440.79ms | 2.21s | 540.86ms | 369.66ms | 2.59s (partial) | 241.03ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 173.75ms | 189.43ms | 1.51s | 275.38ms | 1.49s (partial) | 290.19ms | 248.26ms | 2.35s (partial) | 199.09ms |
| 1000x12 - 4 sources - dynamic (large) | 295.71ms | 343.06ms | 1.86s | 3.49s | 2.50s (partial) | 3.76s | 464.02ms | 3.92s (partial) | 338.04ms |
| 1000x5 - 25 sources (wide dense) | 445.61ms | 613.72ms | 3.53s | 2.59s | 4.05s | 3.46s | 598.27ms | 4.99s (partial) | 504.29ms |
| 5x500 - 3 sources (deep) | 201.79ms | 196.16ms | 1.13s | 232.04ms | 1.35s | 230.37ms | 255.90ms | 1.96s (partial) | 204.41ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.88ms | 280.39ms | 1.69s | 449.96ms | 1.81s (partial) | 486.64ms | 386.98ms | 2.73s (partial) | 255.78ms |

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
