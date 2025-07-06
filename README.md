# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.89s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.48s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.25s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.30s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.52s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.12s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 216.23ms | 2.32s | 209.19ms | 1.34s | 204.95ms | 294.82ms | 171.65ms (fail) |
| broadPropagation | 407.99ms | 4.38s | 453.54ms | 78.56ms (fail) | 453.02ms | 532.42ms | 6.97ms (fail) |
| deepPropagation | 94.01ms | 1.56s | 174.72ms | 1.87s (fail) | 170.41ms | 179.19ms | 150.19ms (fail) |
| diamond | 223.48ms | 2.41s | 277.72ms | 2.56s (fail) | 279.58ms | 359.27ms | 199.14ms (fail) |
| mux | 406.76ms | 1.85s | 397.42ms | 587.80ms (fail) | 410.51ms | 447.79ms | 191.10ms (fail) |
| repeatedObservers | 48.11ms | 232.38ms | 40.54ms | 436.91ms (fail) | 44.91ms | 87.75ms | 53.45ms (fail) |
| triangle | 77.96ms | 769.61ms | 99.02ms | 831.73ms (fail) | 101.77ms | 115.76ms | 79.02ms (fail) |
| unstable | 66.67ms | 340.92ms | 71.22ms | 577.96ms (fail) | 79.52ms | 103.22ms | 337.68ms (fail) |
| molBench | 485.35ms | 569.38ms | 488.53ms | 11.02ms | 485.87ms | 500.06ms | 1.22ms |
| create_signals | 26.25ms | 81.58ms | 16.23ms | 23.94ms | 24.38ms | 47.45ms | 59.01ms |
| comp_0to1 | 10.04ms | 23.85ms | 14.64ms | 13.83ms | 11.41ms | 46.04ms | 52.84ms |
| comp_1to1 | 17.02ms | 52.60ms | 7.08ms | 26.73ms | 27.54ms | 40.05ms | 54.37ms |
| comp_2to1 | 10.40ms | 23.77ms | 9.86ms | 31.33ms | 9.11ms | 13.32ms | 35.84ms |
| comp_4to1 | 5.12ms | 17.40ms | 8.67ms | 12.30ms | 1.83ms | 14.50ms | 16.13ms |
| comp_1000to1 | 4μs | 17μs | 5μs | 5μs | 7μs | 29μs | 41μs |
| comp_1to2 | 14.35ms | 38.05ms | 20.35ms | 13.34ms | 16.11ms | 30.70ms | 44.76ms |
| comp_1to4 | 23.10ms | 19.50ms | 25.42ms | 21.49ms | 11.78ms | 31.19ms | 43.42ms |
| comp_1to8 | 8.23ms | 23.80ms | 5.72ms | 9.07ms | 7.87ms | 17.62ms | 42.44ms |
| comp_1to1000 | 4.17ms | 16.26ms | 5.43ms | 6.16ms | 4.16ms | 15.63ms | 38.48ms |
| update_1to1 | 5.05ms | 25.98ms | 8.80ms | 82.59ms | 9.01ms | 15.46ms | 5.96ms |
| update_2to1 | 2.53ms | 12.52ms | 4.30ms | 40.81ms | 4.53ms | 7.67ms | 2.97ms |
| update_4to1 | 1.30ms | 6.87ms | 2.15ms | 19.67ms | 2.20ms | 3.85ms | 1.54ms |
| update_1000to1 | 12μs | 71μs | 21μs | 167μs | 22μs | 38μs | 15μs |
| update_1to2 | 2.52ms | 12.30ms | 4.73ms | 44.37ms | 4.51ms | 7.69ms | 3.00ms |
| update_1to4 | 1.30ms | 6.53ms | 2.15ms | 20.32ms | 2.19ms | 3.84ms | 1.53ms |
| update_1to1000 | 38μs | 185μs | 835μs | 132μs | 71μs | 171μs | 377μs |
| cellx1000 | 10.42ms | 71.64ms | 9.71ms | N/A | 9.68ms | 11.64ms | 5.16ms |
| cellx2500 | 36.92ms | 255.32ms | 26.27ms | N/A | 31.01ms | 33.20ms | 23.69ms |
| cellx5000 | 85.38ms | 569.49ms | 71.13ms | N/A | 61.12ms | 76.79ms | 57.12ms |
| 10x5 - 2 sources - read 20.0% (simple) | 222.90ms | 2.03s | 432.42ms | 2.18s | 525.29ms | 370.90ms | 242.69ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.91ms | 1.53s | 270.76ms | 1.46s (partial) | 279.29ms | 244.02ms | 198.06ms |
| 1000x12 - 4 sources - dynamic (large) | 311.84ms | 1.87s | 3.69s | 2.62s (partial) | 3.74s | 459.13ms | 337.16ms |
| 1000x5 - 25 sources (wide dense) | 441.56ms | 3.54s | 2.72s | 4.10s | 3.57s | 721.90ms | 476.27ms |
| 5x500 - 3 sources (deep) | 190.74ms | 1.17s | 230.32ms | 1.36s | 225.24ms | 266.90ms | 203.07ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.26ms | 1.70s | 455.17ms | 1.76s (partial) | 489.55ms | 378.94ms | 257.23ms |

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
