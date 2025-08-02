# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.16s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.24s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.13s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.83s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.47s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 160.35ms | 2.30s | 200.46ms | 1.50s | 208.09ms | 276.88ms | 167.91ms (fail) |
| broadPropagation | 325.50ms | 4.55s | 446.57ms | 84.75ms (fail) | 462.75ms | 452.62ms | 6.78ms (fail) |
| deepPropagation | 96.44ms | 1.56s | 178.37ms | 2.01s (fail) | 167.40ms | 146.72ms | 146.61ms (fail) |
| diamond | 218.45ms | 2.46s | 303.61ms | 2.71s (fail) | 279.39ms | 316.12ms | 190.00ms (fail) |
| mux | 343.01ms | 1.86s | 405.47ms | 556.49ms (fail) | 447.48ms | 400.90ms | 191.16ms (fail) |
| repeatedObservers | 50.34ms | 232.64ms | 40.42ms | 383.66ms (fail) | 44.78ms | 87.90ms | 52.55ms (fail) |
| triangle | 74.56ms | 757.63ms | 98.47ms | 995.73ms (fail) | 102.34ms | 95.57ms | 80.14ms (fail) |
| unstable | 136.67ms | 352.44ms | 70.06ms | 616.58ms (fail) | 79.01ms | 169.25ms | 335.18ms (fail) |
| molBench | 494.72ms | 575.50ms | 489.15ms | 10.69ms | 488.14ms | 494.67ms | 887μs |
| create_signals | 27.39ms | 68.23ms | 5.39ms | 23.54ms | 25.18ms | 76.51ms | 68.62ms |
| comp_0to1 | 11.24ms | 28.06ms | 17.52ms | 13.44ms | 10.88ms | 25.56ms | 56.09ms |
| comp_1to1 | 20.43ms | 43.09ms | 18.90ms | 27.76ms | 20.30ms | 44.30ms | 58.04ms |
| comp_2to1 | 12.69ms | 22.06ms | 22.85ms | 28.51ms | 8.19ms | 22.22ms | 43.07ms |
| comp_4to1 | 6.58ms | 24.30ms | 3.73ms | 7.09ms | 1.94ms | 4.39ms | 17.63ms |
| comp_1000to1 | 4μs | 16μs | 5μs | 4μs | 5μs | 18μs | 40μs |
| comp_1to2 | 9.79ms | 37.85ms | 10.03ms | 11.01ms | 17.27ms | 35.76ms | 46.87ms |
| comp_1to4 | 14.34ms | 19.80ms | 26.15ms | 19.44ms | 10.63ms | 15.66ms | 43.53ms |
| comp_1to8 | 8.04ms | 23.79ms | 16.97ms | 5.03ms | 6.14ms | 19.55ms | 42.59ms |
| comp_1to1000 | 4.11ms | 15.84ms | 8.14ms | 4.11ms | 4.11ms | 14.49ms | 38.91ms |
| update_1to1 | 5.59ms | 26.05ms | 8.97ms | 81.61ms | 8.99ms | 16.31ms | 5.66ms |
| update_2to1 | 2.77ms | 12.54ms | 4.74ms | 41.33ms | 4.48ms | 8.14ms | 2.87ms |
| update_4to1 | 1.40ms | 6.84ms | 2.32ms | 19.61ms | 2.48ms | 4.11ms | 1.48ms |
| update_1000to1 | 26μs | 66μs | 21μs | 167μs | 22μs | 40μs | 14μs |
| update_1to2 | 2.75ms | 12.07ms | 4.55ms | 42.28ms | 4.47ms | 8.27ms | 2.90ms |
| update_1to4 | 1.41ms | 6.00ms | 2.24ms | 20.73ms | 2.24ms | 4.09ms | 1.47ms |
| update_1to1000 | 38μs | 169μs | 45μs | 99μs | 58μs | 144μs | 374μs |
| cellx1000 | 7.02ms | 74.95ms | 10.16ms | N/A | 9.42ms | 10.68ms | 5.18ms |
| cellx2500 | 18.82ms | 249.63ms | 25.79ms | N/A | 30.33ms | 26.34ms | 23.57ms |
| cellx5000 | 47.80ms | 554.43ms | 64.91ms | N/A | 58.19ms | 59.47ms | 59.16ms |
| 10x5 - 2 sources - read 20.0% (simple) | 241.22ms | 2.00s | 438.46ms | 2.49s | 513.27ms | 326.52ms | 265.62ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 190.50ms | 1.58s | 271.95ms | 1.53s (partial) | 278.60ms | 224.85ms | 204.48ms |
| 1000x12 - 4 sources - dynamic (large) | 360.43ms | 1.93s | 3.65s | 2.68s (partial) | 3.72s | 432.91ms | 348.70ms |
| 1000x5 - 25 sources (wide dense) | 496.03ms | 3.57s | 2.71s | 4.23s | 3.41s | 784.49ms | 479.37ms |
| 5x500 - 3 sources (deep) | 195.16ms | 1.17s | 231.37ms | 1.42s | 220.65ms | 226.52ms | 206.34ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.29ms | 1.71s | 451.60ms | 1.91s (partial) | 480.25ms | 332.50ms | 268.90ms |

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
