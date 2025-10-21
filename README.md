# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.48s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.06s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.46s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.29s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.78s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 139.13ms | 2.34s | 199.96ms | 1.47s | 211.47ms | 234.96ms | 176.26ms (fail) |
| broadPropagation | 266.37ms | 4.30s | 461.06ms | 81.43ms (fail) | 452.47ms | 448.23ms | 6.60ms (fail) |
| deepPropagation | 80.69ms | 1.55s | 181.69ms | 2.02s (fail) | 171.41ms | 132.59ms | 146.28ms (fail) |
| diamond | 181.42ms | 2.42s | 281.43ms | 2.58s (fail) | 281.50ms | 313.75ms | 187.41ms (fail) |
| mux | 332.67ms | 1.87s | 407.28ms | 568.33ms (fail) | 410.93ms | 397.24ms | 197.35ms (fail) |
| repeatedObservers | 49.20ms | 229.45ms | 40.59ms | 388.35ms (fail) | 48.33ms | 88.91ms | 53.94ms (fail) |
| triangle | 66.77ms | 793.51ms | 100.12ms | 989.72ms (fail) | 103.33ms | 99.67ms | 79.72ms (fail) |
| unstable | 61.62ms | 344.65ms | 73.89ms | 681.38ms (fail) | 76.53ms | 101.60ms | 342.37ms (fail) |
| molBench | 484.35ms | 583.12ms | 483.87ms | 10.95ms | 485.41ms | 498.38ms | 928μs |
| create_signals | 25.63ms | 81.92ms | 5.21ms | 23.83ms | 25.72ms | 69.77ms | 62.61ms |
| comp_0to1 | 8.43ms | 15.49ms | 17.79ms | 12.93ms | 11.90ms | 26.71ms | 56.51ms |
| comp_1to1 | 12.70ms | 45.76ms | 11.01ms | 26.94ms | 18.60ms | 40.93ms | 57.95ms |
| comp_2to1 | 2.42ms | 24.25ms | 11.58ms | 32.67ms | 19.07ms | 15.06ms | 38.23ms |
| comp_4to1 | 6.62ms | 26.16ms | 12.37ms | 7.45ms | 2.00ms | 15.37ms | 17.45ms |
| comp_1000to1 | 3μs | 15μs | 5μs | 4μs | 7μs | 15μs | 44μs |
| comp_1to2 | 13.24ms | 32.35ms | 18.23ms | 13.06ms | 25.90ms | 27.33ms | 48.65ms |
| comp_1to4 | 19.64ms | 17.59ms | 32.23ms | 21.91ms | 14.77ms | 22.17ms | 47.52ms |
| comp_1to8 | 7.47ms | 19.90ms | 6.73ms | 6.51ms | 6.48ms | 21.38ms | 46.45ms |
| comp_1to1000 | 9.70ms | 15.30ms | 7.19ms | 6.01ms | 4.35ms | 14.36ms | 42.45ms |
| update_1to1 | 9.12ms | 26.35ms | 8.48ms | 88.19ms | 10.08ms | 16.67ms | 6.04ms |
| update_2to1 | 5.90ms | 10.88ms | 4.39ms | 45.56ms | 4.50ms | 8.16ms | 3.08ms |
| update_4to1 | 1.35ms | 7.30ms | 2.13ms | 21.89ms | 2.53ms | 4.10ms | 1.50ms |
| update_1000to1 | 24μs | 68μs | 20μs | 172μs | 26μs | 39μs | 15μs |
| update_1to2 | 3.47ms | 12.29ms | 4.42ms | 43.13ms | 4.51ms | 8.48ms | 3.07ms |
| update_1to4 | 1.69ms | 6.36ms | 2.10ms | 20.94ms | 2.44ms | 4.11ms | 1.51ms |
| update_1to1000 | 42μs | 177μs | 755μs | 124μs | 42μs | 179μs | 417μs |
| cellx1000 | 6.25ms | 75.09ms | 11.55ms | N/A | 9.59ms | 9.25ms | 5.63ms |
| cellx2500 | 17.33ms | 262.76ms | 26.61ms | N/A | 31.79ms | 29.42ms | 31.09ms |
| cellx5000 | 60.78ms | 619.14ms | 69.15ms | N/A | 70.49ms | 69.37ms | 51.43ms |
| 10x5 - 2 sources - read 20.0% (simple) | 197.89ms | 2.01s | 518.46ms | 2.26s | 511.68ms | 324.75ms | 240.14ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 165.43ms | 1.53s | 289.10ms | 1.50s (partial) | 281.01ms | 218.87ms | 195.97ms |
| 1000x12 - 4 sources - dynamic (large) | 267.67ms | 1.86s | 3.73s | 2.57s (partial) | 3.88s | 437.49ms | 332.23ms |
| 1000x5 - 25 sources (wide dense) | 551.28ms | 3.46s | 2.73s | 4.13s | 3.40s | 799.61ms | 505.25ms |
| 5x500 - 3 sources (deep) | 175.00ms | 1.11s | 246.93ms | 1.38s | 222.39ms | 229.76ms | 203.50ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 247.74ms | 1.70s | 470.35ms | 1.77s (partial) | 484.93ms | 333.91ms | 258.00ms |

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
