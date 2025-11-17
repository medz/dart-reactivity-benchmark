# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.29s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.68s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.14s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.06s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.40s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.15s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.28s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 125.57ms | 2.38s | 207.30ms | 1.44s | 215.67ms | 238.56ms | 171.08ms |
| broadPropagation | 240.67ms | 4.43s | 452.39ms | 84.48ms (fail) | 458.29ms | 436.37ms | 407.77ms |
| deepPropagation | 78.61ms | 1.50s | 176.20ms | 1.93s (fail) | 167.04ms | 131.72ms | 156.85ms |
| diamond | 153.59ms | 2.35s | 291.29ms | 2.67s (fail) | 294.19ms | 308.51ms | 218.42ms |
| mux | 297.22ms | 1.85s | 372.32ms | 548.09ms (fail) | 389.00ms | 373.49ms | 357.32ms |
| repeatedObservers | 27.05ms | 226.70ms | 40.66ms | 418.23ms (fail) | 46.54ms | 87.26ms | 59.06ms |
| triangle | 64.10ms | 734.96ms | 101.52ms | 863.04ms (fail) | 102.78ms | 97.93ms | 86.55ms |
| unstable | 47.60ms | 340.09ms | 70.37ms | 632.61ms (fail) | 78.52ms | 107.59ms | 343.44ms |
| molBench | 485.80ms | 590.45ms | 484.92ms | 12.34ms | 429.81ms | 497.03ms | 493.33ms |
| create_signals | 11.10ms | 53.73ms | 4.70ms | 24.36ms | 26.89ms | 50.93ms | 67.99ms |
| comp_0to1 | 11.50ms | 19.12ms | 17.52ms | 15.32ms | 12.45ms | 23.16ms | 57.79ms |
| comp_1to1 | 16.82ms | 42.03ms | 12.58ms | 28.11ms | 30.52ms | 35.78ms | 61.77ms |
| comp_2to1 | 8.07ms | 8.68ms | 22.54ms | 27.02ms | 19.68ms | 44.90ms | 39.76ms |
| comp_4to1 | 1.83ms | 24.14ms | 13.76ms | 3.00ms | 5.29ms | 37.01ms | 17.47ms |
| comp_1000to1 | 3μs | 15μs | 4μs | 3μs | 5μs | 15μs | 41μs |
| comp_1to2 | 19.12ms | 37.55ms | 18.49ms | 14.79ms | 13.95ms | 35.54ms | 45.48ms |
| comp_1to4 | 17.33ms | 28.38ms | 26.83ms | 29.46ms | 15.07ms | 31.08ms | 45.72ms |
| comp_1to8 | 6.64ms | 25.05ms | 6.10ms | 8.48ms | 7.73ms | 18.81ms | 44.29ms |
| comp_1to1000 | 8.07ms | 15.85ms | 5.49ms | 4.66ms | 4.47ms | 14.27ms | 38.58ms |
| update_1to1 | 6.72ms | 22.39ms | 8.84ms | 81.89ms | 9.29ms | 14.28ms | 6.11ms |
| update_2to1 | 4.25ms | 11.90ms | 5.04ms | 41.69ms | 4.76ms | 6.95ms | 3.12ms |
| update_4to1 | 1.84ms | 5.61ms | 2.17ms | 20.05ms | 2.35ms | 3.70ms | 1.55ms |
| update_1000to1 | 17μs | 58μs | 22μs | 173μs | 23μs | 46μs | 15μs |
| update_1to2 | 4.96ms | 10.83ms | 4.43ms | 41.00ms | 4.64ms | 6.97ms | 3.06ms |
| update_1to4 | 2.42ms | 5.49ms | 2.21ms | 20.61ms | 2.58ms | 3.49ms | 1.52ms |
| update_1to1000 | 31μs | 160μs | 882μs | 139μs | 45μs | 147μs | 377μs |
| cellx1000 | 5.62ms | 75.20ms | 9.99ms | N/A | 10.25ms | 11.53ms | 9.45ms |
| cellx2500 | 15.99ms | 281.44ms | 28.61ms | N/A | 41.41ms | 34.15ms | 29.15ms |
| cellx5000 | 39.86ms | 615.45ms | 79.36ms | N/A | 92.88ms | 79.64ms | 96.61ms |
| 10x5 - 2 sources - read 20.0% (simple) | 180.31ms | 1.93s | 436.29ms | 2.16s | 516.11ms | 319.98ms | 247.87ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.61ms | 1.45s | 273.67ms | 1.45s (partial) | 283.25ms | 223.70ms | 209.20ms |
| 1000x12 - 4 sources - dynamic (large) | 289.63ms | 1.86s | 3.71s | 2.45s (partial) | 3.87s | 468.93ms | 386.30ms |
| 1000x5 - 25 sources (wide dense) | 554.77ms | 3.42s | 2.51s | 4.14s | 3.54s | 830.12ms | 500.98ms |
| 5x500 - 3 sources (deep) | 159.35ms | 1.12s | 227.06ms | 1.36s | 223.32ms | 227.59ms | 208.96ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 247.85ms | 1.69s | 444.91ms | 1.77s (partial) | 477.54ms | 338.90ms | 264.80ms |

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
