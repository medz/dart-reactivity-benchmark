# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.18s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.43s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.08s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.79s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.39s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.31ms | 2.36s | 199.64ms | 1.40s | 213.16ms | 257.39ms | 153.99ms (fail) |
| broadPropagation | 314.30ms | 4.50s | 465.69ms | 79.55ms (fail) | 457.78ms | 456.21ms | 6.51ms (fail) |
| deepPropagation | 99.02ms | 1.56s | 183.77ms | 1.91s (fail) | 178.21ms | 141.32ms | 145.01ms (fail) |
| diamond | 225.43ms | 2.45s | 281.09ms | 2.55s (fail) | 282.09ms | 317.62ms | 190.79ms (fail) |
| mux | 340.20ms | 1.86s | 388.37ms | 589.75ms (fail) | 410.33ms | 400.44ms | 193.11ms (fail) |
| repeatedObservers | 50.28ms | 239.46ms | 39.91ms | 386.14ms (fail) | 46.22ms | 94.60ms | 52.48ms (fail) |
| triangle | 76.79ms | 782.99ms | 100.83ms | 900.35ms (fail) | 100.80ms | 98.56ms | 82.74ms (fail) |
| unstable | 139.11ms | 349.62ms | 73.97ms | 619.34ms (fail) | 76.18ms | 166.88ms | 338.91ms (fail) |
| molBench | 487.61ms | 584.64ms | 488.46ms | 11.30ms | 485.09ms | 501.02ms | 911μs |
| create_signals | 26.73ms | 71.76ms | 4.69ms | 23.13ms | 24.86ms | 77.25ms | 65.27ms |
| comp_0to1 | 10.78ms | 25.04ms | 17.45ms | 17.33ms | 11.09ms | 25.04ms | 54.87ms |
| comp_1to1 | 23.32ms | 17.26ms | 12.33ms | 31.77ms | 28.19ms | 46.36ms | 56.56ms |
| comp_2to1 | 17.54ms | 19.17ms | 18.00ms | 26.23ms | 14.24ms | 29.61ms | 37.58ms |
| comp_4to1 | 13.60ms | 29.32ms | 10.39ms | 7.10ms | 1.94ms | 15.77ms | 16.58ms |
| comp_1000to1 | 4μs | 15μs | 5μs | 3μs | 5μs | 18μs | 44μs |
| comp_1to2 | 11.07ms | 37.12ms | 30.64ms | 11.72ms | 20.04ms | 27.87ms | 48.15ms |
| comp_1to4 | 16.66ms | 24.43ms | 21.14ms | 20.04ms | 10.48ms | 23.68ms | 50.98ms |
| comp_1to8 | 7.55ms | 24.15ms | 12.01ms | 8.74ms | 7.71ms | 22.68ms | 45.48ms |
| comp_1to1000 | 6.28ms | 15.17ms | 7.87ms | 4.66ms | 4.33ms | 15.39ms | 41.15ms |
| update_1to1 | 5.71ms | 22.93ms | 8.27ms | 80.08ms | 10.26ms | 17.04ms | 6.03ms |
| update_2to1 | 2.82ms | 11.79ms | 4.46ms | 41.65ms | 4.57ms | 8.61ms | 3.08ms |
| update_4to1 | 1.46ms | 6.01ms | 2.21ms | 19.39ms | 2.58ms | 4.24ms | 1.58ms |
| update_1000to1 | 13μs | 54μs | 20μs | 177μs | 25μs | 42μs | 15μs |
| update_1to2 | 3.73ms | 11.45ms | 4.07ms | 43.01ms | 4.55ms | 8.56ms | 3.01ms |
| update_1to4 | 1.42ms | 5.63ms | 2.07ms | 19.66ms | 2.57ms | 4.22ms | 1.54ms |
| update_1to1000 | 55μs | 170μs | 40μs | 137μs | 42μs | 145μs | 421μs |
| cellx1000 | 7.14ms | 72.04ms | 9.62ms | N/A | 9.53ms | 9.56ms | 5.04ms |
| cellx2500 | 25.63ms | 241.43ms | 25.55ms | N/A | 30.72ms | 27.29ms | 20.24ms |
| cellx5000 | 41.15ms | 551.67ms | 63.43ms | N/A | 58.05ms | 62.27ms | 78.06ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.49ms | 2.06s | 446.90ms | 2.21s | 516.59ms | 328.91ms | 259.44ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 192.14ms | 1.54s | 278.52ms | 1.44s (partial) | 283.03ms | 221.88ms | 202.21ms |
| 1000x12 - 4 sources - dynamic (large) | 339.75ms | 1.89s | 3.78s | 2.58s (partial) | 3.77s | 429.36ms | 338.77ms |
| 1000x5 - 25 sources (wide dense) | 493.84ms | 3.56s | 2.76s | 4.17s | 3.31s | 784.36ms | 507.66ms |
| 5x500 - 3 sources (deep) | 199.77ms | 1.15s | 235.84ms | 1.35s | 225.16ms | 226.06ms | 203.94ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 287.03ms | 1.73s | 459.36ms | 1.84s (partial) | 479.76ms | 334.71ms | 259.84ms |

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
