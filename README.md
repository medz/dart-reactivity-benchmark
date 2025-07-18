# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.56s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.40s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.72s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.45s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.50s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 155.33ms | 2.30s | 200.41ms | 1.48s | 207.11ms | 292.46ms | 164.76ms (fail) |
| broadPropagation | 320.83ms | 4.60s | 502.27ms | 84.03ms (fail) | 446.54ms | 516.29ms | 6.41ms (fail) |
| deepPropagation | 95.83ms | 1.56s | 178.20ms | 2.02s (fail) | 167.80ms | 171.07ms | 142.21ms (fail) |
| diamond | 215.94ms | 2.48s | 299.94ms | 2.70s (fail) | 277.74ms | 358.41ms | 186.36ms (fail) |
| mux | 341.33ms | 1.89s | 406.35ms | 551.68ms (fail) | 453.35ms | 445.45ms | 195.77ms (fail) |
| repeatedObservers | 50.52ms | 236.28ms | 41.56ms | 373.97ms (fail) | 44.82ms | 86.45ms | 52.36ms (fail) |
| triangle | 74.49ms | 771.29ms | 104.46ms | 955.78ms (fail) | 100.65ms | 115.14ms | 78.90ms (fail) |
| unstable | 71.18ms | 352.67ms | 73.62ms | 618.25ms (fail) | 79.93ms | 103.33ms | 338.43ms (fail) |
| molBench | 485.75ms | 575.49ms | 490.39ms | 11.16ms | 488.25ms | 500.94ms | 948μs |
| create_signals | 25.04ms | 85.32ms | 5.22ms | 24.25ms | 26.90ms | 53.16ms | 65.38ms |
| comp_0to1 | 11.41ms | 28.92ms | 17.69ms | 13.90ms | 12.03ms | 33.61ms | 57.40ms |
| comp_1to1 | 18.49ms | 54.48ms | 12.35ms | 22.02ms | 29.91ms | 35.73ms | 62.88ms |
| comp_2to1 | 13.47ms | 24.89ms | 18.32ms | 24.75ms | 20.40ms | 23.38ms | 43.44ms |
| comp_4to1 | 1.92ms | 27.70ms | 8.32ms | 5.24ms | 5.70ms | 28.56ms | 16.55ms |
| comp_1000to1 | 4μs | 17μs | 5μs | 3μs | 6μs | 26μs | 40μs |
| comp_1to2 | 14.26ms | 37.60ms | 12.46ms | 11.57ms | 22.11ms | 30.82ms | 44.70ms |
| comp_1to4 | 18.83ms | 18.38ms | 29.55ms | 26.06ms | 7.27ms | 25.55ms | 43.43ms |
| comp_1to8 | 7.53ms | 22.05ms | 7.00ms | 4.86ms | 6.59ms | 20.62ms | 42.58ms |
| comp_1to1000 | 3.65ms | 16.20ms | 4.77ms | 4.44ms | 4.20ms | 15.78ms | 38.12ms |
| update_1to1 | 5.83ms | 27.34ms | 8.63ms | 84.57ms | 8.87ms | 15.62ms | 5.64ms |
| update_2to1 | 2.86ms | 13.47ms | 4.28ms | 42.04ms | 4.49ms | 7.66ms | 2.84ms |
| update_4to1 | 1.52ms | 7.09ms | 2.14ms | 20.35ms | 2.27ms | 3.85ms | 1.45ms |
| update_1000to1 | 26μs | 67μs | 21μs | 177μs | 22μs | 38μs | 15μs |
| update_1to2 | 2.91ms | 12.97ms | 4.47ms | 42.58ms | 4.47ms | 7.67ms | 2.91ms |
| update_1to4 | 1.51ms | 6.72ms | 2.15ms | 20.73ms | 2.24ms | 3.84ms | 1.44ms |
| update_1to1000 | 52μs | 172μs | 162μs | 142μs | 43μs | 169μs | 386μs |
| cellx1000 | 7.65ms | 93.29ms | 10.56ms | N/A | 10.41ms | 13.73ms | 6.31ms |
| cellx2500 | 22.79ms | 310.86ms | 36.91ms | N/A | 46.41ms | 48.16ms | 29.84ms |
| cellx5000 | 64.05ms | 659.92ms | 109.10ms | N/A | 107.36ms | 146.25ms | 80.17ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.99ms | 2.03s | 441.79ms | 2.39s | 523.27ms | 360.77ms | 236.08ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.67ms | 1.57s | 274.04ms | 1.51s (partial) | 292.75ms | 247.36ms | 199.43ms |
| 1000x12 - 4 sources - dynamic (large) | 353.28ms | 1.95s | 3.71s | 2.56s (partial) | 4.03s | 467.67ms | 350.16ms |
| 1000x5 - 25 sources (wide dense) | 496.60ms | 3.70s | 2.71s | 4.49s | 3.56s | 729.52ms | 498.12ms |
| 5x500 - 3 sources (deep) | 198.39ms | 1.20s | 227.44ms | 1.57s | 225.63ms | 264.86ms | 205.06ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 286.01ms | 1.78s | 449.51ms | 1.84s (partial) | 494.54ms | 384.15ms | 259.44ms |

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
