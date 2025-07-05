# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.41s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.21s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.55s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.97s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.97s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 222.27ms | 2.34s | 200.98ms | 1.35s | 209.38ms | 288.20ms | 165.26ms (fail) |
| broadPropagation | 392.85ms | 4.43s | 455.21ms | 80.34ms (fail) | 457.56ms | 523.06ms | 6.08ms (fail) |
| deepPropagation | 97.01ms | 1.57s | 177.57ms | 1.92s (fail) | 170.94ms | 170.13ms | 142.22ms (fail) |
| diamond | 223.17ms | 2.44s | 280.64ms | 2.61s (fail) | 287.23ms | 352.72ms | 207.39ms (fail) |
| mux | 407.55ms | 1.84s | 403.28ms | 559.55ms (fail) | 451.60ms | 435.73ms | 193.22ms (fail) |
| repeatedObservers | 48.03ms | 236.45ms | 40.29ms | 382.02ms (fail) | 44.95ms | 87.39ms | 54.07ms (fail) |
| triangle | 80.67ms | 771.83ms | 99.13ms | 891.60ms (fail) | 104.04ms | 115.60ms | 82.64ms (fail) |
| unstable | 66.46ms | 349.09ms | 70.10ms | 597.88ms (fail) | 79.34ms | 102.01ms | 336.63ms (fail) |
| molBench | 484.37ms | 581.55ms | 487.50ms | 11.10ms | 487.07ms | 499.13ms | 884μs |
| create_signals | 26.37ms | 70.41ms | 5.28ms | 23.74ms | 26.29ms | 47.26ms | 58.23ms |
| comp_0to1 | 10.22ms | 32.73ms | 17.40ms | 14.65ms | 11.14ms | 45.95ms | 52.48ms |
| comp_1to1 | 25.85ms | 44.03ms | 13.96ms | 25.13ms | 19.84ms | 38.29ms | 54.60ms |
| comp_2to1 | 18.78ms | 34.61ms | 17.06ms | 24.95ms | 11.92ms | 14.99ms | 35.21ms |
| comp_4to1 | 4.04ms | 23.58ms | 14.05ms | 6.88ms | 10.87ms | 12.22ms | 15.88ms |
| comp_1000to1 | 4μs | 16μs | 5μs | 3μs | 4μs | 19μs | 41μs |
| comp_1to2 | 12.60ms | 46.48ms | 18.43ms | 11.05ms | 17.31ms | 21.22ms | 44.11ms |
| comp_1to4 | 14.55ms | 22.77ms | 32.35ms | 25.82ms | 12.11ms | 30.34ms | 43.32ms |
| comp_1to8 | 4.52ms | 23.95ms | 6.91ms | 8.02ms | 6.29ms | 27.31ms | 42.35ms |
| comp_1to1000 | 3.68ms | 15.93ms | 6.45ms | 5.28ms | 4.15ms | 16.00ms | 38.40ms |
| update_1to1 | 5.05ms | 27.85ms | 8.63ms | 82.53ms | 8.99ms | 15.59ms | 5.66ms |
| update_2to1 | 2.55ms | 12.80ms | 4.28ms | 42.12ms | 4.52ms | 7.69ms | 2.83ms |
| update_4to1 | 1.33ms | 6.54ms | 2.22ms | 20.05ms | 2.21ms | 3.85ms | 1.44ms |
| update_1000to1 | 23μs | 69μs | 29μs | 187μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.54ms | 13.11ms | 4.79ms | 41.66ms | 4.47ms | 7.67ms | 2.84ms |
| update_1to4 | 1.39ms | 6.90ms | 2.21ms | 20.87ms | 2.20ms | 3.85ms | 1.48ms |
| update_1to1000 | 52μs | 176μs | 832μs | 161μs | 42μs | 166μs | 376μs |
| cellx1000 | 11.59ms | 75.61ms | 9.70ms | N/A | 9.81ms | 11.36ms | 5.24ms |
| cellx2500 | 33.22ms | 277.63ms | 25.73ms | N/A | 33.78ms | 31.43ms | 23.75ms |
| cellx5000 | 74.06ms | 606.32ms | 67.48ms | N/A | 64.39ms | 71.24ms | 53.63ms |
| 10x5 - 2 sources - read 20.0% (simple) | 219.81ms | 2.06s | 437.10ms | 2.17s | 504.85ms | 352.25ms | 241.23ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.68ms | 1.54s | 269.42ms | 1.43s (partial) | 278.24ms | 244.17ms | 200.47ms |
| 1000x12 - 4 sources - dynamic (large) | 314.57ms | 1.96s | 3.63s | 2.46s (partial) | 3.97s | 463.59ms | 334.56ms |
| 1000x5 - 25 sources (wide dense) | 441.33ms | 3.62s | 2.71s | 4.12s | 3.56s | 719.51ms | 497.59ms |
| 5x500 - 3 sources (deep) | 192.74ms | 1.15s | 231.99ms | 1.33s | 225.59ms | 270.58ms | 205.84ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.46ms | 1.74s | 457.83ms | 1.71s (partial) | 477.54ms | 383.17ms | 259.49ms |

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
