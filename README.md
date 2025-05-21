# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.82s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.42s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.37s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.41s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.37s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.46s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.50s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.47s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.12s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.91ms | 161.79ms | 2.37s | 200.63ms | 1.41s | 207.31ms | 276.02ms | 2.16s | 171.35ms (fail) |
| broadPropagation | 368.17ms | 326.73ms | 4.58s | 498.41ms | 81.91ms (fail) | 453.71ms | 516.93ms | 5.36s | 6.49ms (fail) |
| deepPropagation | 123.40ms | 99.03ms | 1.60s | 177.44ms | 1.95s (fail) | 165.68ms | 171.05ms | 1.98s | 144.09ms (fail) |
| diamond | 240.83ms | 221.90ms | 2.50s | 297.22ms | 2.66s (fail) | 281.61ms | 352.61ms | 3.40s | 193.41ms (fail) |
| mux | 379.73ms | 342.49ms | 1.93s | 402.77ms | 586.30ms (fail) | 415.86ms | 443.68ms | 1.97s | 195.27ms (fail) |
| repeatedObservers | 47.46ms | 52.19ms | 232.43ms | 41.07ms | 388.18ms (fail) | 45.17ms | 81.78ms | 217.87ms | 52.67ms (fail) |
| triangle | 86.58ms | 81.02ms | 790.33ms | 102.43ms | 952.20ms (fail) | 104.32ms | 117.13ms | 1.12s | 76.58ms (fail) |
| unstable | 61.36ms | 72.03ms | 355.59ms | 73.43ms | 618.09ms (fail) | 78.99ms | 98.84ms | 345.42ms | 337.46ms (fail) |
| molBench | 495.63ms | 493.28ms | 573.92ms | 489.05ms | 12.11ms | 485.08ms | 494.93ms | 1.70s | 1.09ms |
| create_signals | 7.42ms | 27.31ms | 69.64ms | 4.53ms | 23.04ms | 26.97ms | 56.75ms | 89.25ms | 65.01ms |
| comp_0to1 | 21.86ms | 9.55ms | 28.63ms | 17.34ms | 13.51ms | 11.67ms | 28.29ms | 35.49ms | 57.13ms |
| comp_1to1 | 18.43ms | 24.51ms | 42.39ms | 12.40ms | 21.02ms | 27.32ms | 37.40ms | 40.06ms | 62.12ms |
| comp_2to1 | 17.68ms | 19.56ms | 22.55ms | 18.89ms | 23.82ms | 8.85ms | 38.94ms | 25.41ms | 42.41ms |
| comp_4to1 | 2.61ms | 6.08ms | 31.54ms | 21.97ms | 6.99ms | 1.86ms | 5.04ms | 25.83ms | 17.55ms |
| comp_1000to1 | 3μs | 4μs | 16μs | 10μs | 3μs | 7μs | 20μs | 4.09ms | 41μs |
| comp_1to2 | 9.95ms | 11.71ms | 36.61ms | 20.39ms | 10.25ms | 22.91ms | 37.20ms | 25.93ms | 45.39ms |
| comp_1to4 | 5.63ms | 16.33ms | 18.61ms | 29.99ms | 22.58ms | 9.87ms | 23.01ms | 28.19ms | 43.99ms |
| comp_1to8 | 8.59ms | 7.07ms | 21.07ms | 5.25ms | 4.75ms | 9.01ms | 23.07ms | 23.37ms | 42.75ms |
| comp_1to1000 | 3.53ms | 4.64ms | 15.98ms | 5.45ms | 4.30ms | 7.24ms | 17.24ms | 17.90ms | 38.38ms |
| update_1to1 | 4.50ms | 5.41ms | 22.29ms | 8.63ms | 89.33ms | 8.94ms | 15.98ms | 43.61ms | 5.75ms |
| update_2to1 | 2.37ms | 2.77ms | 10.91ms | 4.34ms | 45.60ms | 4.59ms | 7.85ms | 21.48ms | 2.90ms |
| update_4to1 | 1.16ms | 1.37ms | 5.58ms | 2.17ms | 21.30ms | 2.22ms | 3.98ms | 10.86ms | 1.47ms |
| update_1000to1 | 21μs | 13μs | 54μs | 22μs | 203μs | 22μs | 40μs | 119μs | 14μs |
| update_1to2 | 2.43ms | 2.70ms | 10.82ms | 4.69ms | 44.36ms | 4.53ms | 8.04ms | 21.23ms | 2.89ms |
| update_1to4 | 1.25ms | 1.39ms | 5.46ms | 2.13ms | 22.17ms | 2.21ms | 4.01ms | 10.85ms | 1.48ms |
| update_1to1000 | 47μs | 33μs | 171μs | 822μs | 145μs | 42μs | 174μs | 214μs | 375μs |
| cellx1000 | 7.92ms | 31.52ms | 72.17ms | 9.66ms | N/A | 9.78ms | 16.31ms | 156.50ms | 7.84ms |
| cellx2500 | 25.48ms | 124.44ms | 254.56ms | 26.63ms | N/A | 33.54ms | 53.62ms | 460.69ms | 24.45ms |
| cellx5000 | 58.44ms | 393.80ms | 562.83ms | 71.59ms | N/A | 74.04ms | 128.53ms | 1.13s | 71.59ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.63ms | 234.12ms | 2.12s | 433.24ms | 2.18s | 509.07ms | 352.59ms | 2.58s (partial) | 240.14ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.27ms | 183.78ms | 1.59s | 271.78ms | 1.45s (partial) | 279.65ms | 247.65ms | 2.34s (partial) | 202.34ms |
| 1000x12 - 4 sources - dynamic (large) | 302.92ms | 350.21ms | 1.96s | 3.73s | 2.48s (partial) | 3.75s | 476.86ms | 4.05s (partial) | 358.85ms |
| 1000x5 - 25 sources (wide dense) | 463.75ms | 627.70ms | 3.66s | 2.73s | 4.20s | 3.61s | 586.61ms | 5.05s (partial) | 507.29ms |
| 5x500 - 3 sources (deep) | 207.41ms | 195.28ms | 1.22s | 235.01ms | 1.37s | 228.19ms | 255.75ms | 1.95s (partial) | 208.60ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.61ms | 284.54ms | 1.75s | 457.03ms | 1.77s (partial) | 487.02ms | 387.34ms | 2.71s (partial) | 268.52ms |

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
