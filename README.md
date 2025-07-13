# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.90s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.51s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.17s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.56s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.06s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.61s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 221.20ms | 2.36s | 201.51ms | 1.37s | 208.44ms | 294.60ms | 148.67ms (fail) |
| broadPropagation | 398.52ms | 4.46s | 449.58ms | 83.80ms (fail) | 454.88ms | 533.95ms | 5.90ms (fail) |
| deepPropagation | 96.92ms | 1.55s | 175.99ms | 1.98s (fail) | 166.77ms | 170.12ms | 144.08ms (fail) |
| diamond | 225.55ms | 2.49s | 282.01ms | 2.60s (fail) | 276.83ms | 353.11ms | 188.56ms (fail) |
| mux | 402.65ms | 1.86s | 411.29ms | 570.03ms (fail) | 408.96ms | 437.67ms | 200.49ms (fail) |
| repeatedObservers | 49.10ms | 246.90ms | 40.22ms | 386.15ms (fail) | 44.84ms | 87.81ms | 52.56ms (fail) |
| triangle | 80.95ms | 778.72ms | 98.86ms | 928.32ms (fail) | 104.63ms | 114.90ms | 76.10ms (fail) |
| unstable | 66.53ms | 359.80ms | 71.35ms | 617.97ms (fail) | 79.08ms | 103.81ms | 410.33ms (fail) |
| molBench | 484.94ms | 574.42ms | 489.65ms | 11.68ms | 486.12ms | 500.82ms | 993μs |
| create_signals | 26.59ms | 72.79ms | 5.22ms | 23.71ms | 25.16ms | 51.26ms | 63.10ms |
| comp_0to1 | 12.96ms | 26.49ms | 17.30ms | 13.06ms | 11.41ms | 50.31ms | 53.78ms |
| comp_1to1 | 24.27ms | 24.02ms | 12.43ms | 26.84ms | 27.31ms | 40.31ms | 56.13ms |
| comp_2to1 | 19.00ms | 19.52ms | 17.05ms | 23.65ms | 12.79ms | 21.50ms | 43.37ms |
| comp_4to1 | 4.36ms | 28.22ms | 11.60ms | 7.09ms | 6.40ms | 13.79ms | 18.73ms |
| comp_1000to1 | 4μs | 17μs | 6μs | 4μs | 5μs | 19μs | 41μs |
| comp_1to2 | 9.65ms | 37.72ms | 14.66ms | 11.48ms | 21.27ms | 22.45ms | 47.24ms |
| comp_1to4 | 20.12ms | 25.18ms | 25.83ms | 23.89ms | 7.42ms | 25.72ms | 44.57ms |
| comp_1to8 | 6.41ms | 22.88ms | 6.87ms | 5.03ms | 6.40ms | 24.22ms | 43.93ms |
| comp_1to1000 | 3.76ms | 16.20ms | 4.59ms | 4.04ms | 4.44ms | 15.87ms | 38.70ms |
| update_1to1 | 5.04ms | 26.70ms | 8.54ms | 87.52ms | 8.85ms | 15.41ms | 5.64ms |
| update_2to1 | 2.58ms | 13.22ms | 4.25ms | 43.75ms | 4.50ms | 7.88ms | 2.83ms |
| update_4to1 | 1.36ms | 7.11ms | 2.19ms | 20.43ms | 2.25ms | 3.87ms | 1.40ms |
| update_1000to1 | 24μs | 81μs | 21μs | 214μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.65ms | 12.49ms | 4.66ms | 41.54ms | 4.48ms | 7.68ms | 2.83ms |
| update_1to4 | 1.28ms | 6.42ms | 2.18ms | 20.35ms | 2.28ms | 3.84ms | 1.42ms |
| update_1to1000 | 54μs | 174μs | 171μs | 141μs | 43μs | 174μs | 370μs |
| cellx1000 | 10.95ms | 72.07ms | 9.60ms | N/A | 9.60ms | 12.23ms | 6.00ms |
| cellx2500 | 39.61ms | 256.91ms | 25.78ms | N/A | 30.69ms | 37.01ms | 35.09ms |
| cellx5000 | 71.97ms | 542.80ms | 76.96ms | N/A | 58.23ms | 95.33ms | 75.23ms |
| 10x5 - 2 sources - read 20.0% (simple) | 221.66ms | 2.04s | 443.51ms | 2.22s | 515.54ms | 363.58ms | 239.56ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 174.26ms | 1.53s | 267.10ms | 1.49s (partial) | 280.65ms | 244.88ms | 199.73ms |
| 1000x12 - 4 sources - dynamic (large) | 317.80ms | 1.99s | 3.63s | 2.48s (partial) | 4.00s | 471.07ms | 357.30ms |
| 1000x5 - 25 sources (wide dense) | 443.87ms | 3.70s | 2.70s | 4.18s | 3.57s | 732.45ms | 498.08ms |
| 5x500 - 3 sources (deep) | 192.32ms | 1.16s | 226.27ms | 1.56s | 227.18ms | 272.36ms | 204.31ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.62ms | 1.74s | 439.32ms | 1.76s (partial) | 488.60ms | 380.16ms | 269.52ms |

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
