# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.37s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.41s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.34s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.28s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.92s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 21.88s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 38.93s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 175.99ms | 161.43ms | 2.32s | 200.12ms | 1.34s | 208.03ms | 269.23ms | 2.13s | 170.74ms (fail) |
| broadPropagation | 373.40ms | 317.22ms | 4.66s | 456.09ms | 80.71ms (fail) | 459.05ms | 507.06ms | 5.39s | 6.69ms (fail) |
| deepPropagation | 130.13ms | 99.59ms | 1.56s | 180.03ms | 1.90s (fail) | 173.60ms | 167.92ms | 1.96s | 142.39ms (fail) |
| diamond | 237.11ms | 213.13ms | 2.46s | 283.92ms | 2.48s (fail) | 282.26ms | 349.33ms | 3.43s | 188.74ms (fail) |
| mux | 376.77ms | 347.02ms | 1.87s | 394.58ms | 558.05ms (fail) | 446.86ms | 447.13ms | 1.96s | 194.72ms (fail) |
| repeatedObservers | 47.44ms | 50.04ms | 228.59ms | 40.88ms | 383.34ms (fail) | 44.84ms | 80.86ms | 212.82ms | 52.29ms (fail) |
| triangle | 87.82ms | 79.33ms | 778.45ms | 97.33ms | 843.43ms (fail) | 99.25ms | 118.62ms | 1.11s | 76.69ms (fail) |
| unstable | 61.46ms | 69.64ms | 354.96ms | 70.25ms | 599.64ms (fail) | 79.31ms | 98.15ms | 339.43ms | 341.43ms (fail) |
| molBench | 492.66ms | 492.14ms | 573.87ms | 487.34ms | 11.26ms | 487.44ms | 493.41ms | 1.70s | 939μs |
| create_signals | 7.63ms | 27.78ms | 71.83ms | 15.99ms | 27.39ms | 26.57ms | 97.97ms | 49.18ms | 65.20ms |
| comp_0to1 | 21.61ms | 9.75ms | 28.16ms | 34.61ms | 14.05ms | 12.01ms | 37.86ms | 22.52ms | 56.97ms |
| comp_1to1 | 18.31ms | 23.78ms | 38.89ms | 7.18ms | 23.50ms | 32.75ms | 53.56ms | 47.69ms | 56.10ms |
| comp_2to1 | 19.98ms | 17.13ms | 32.22ms | 13.32ms | 29.47ms | 9.63ms | 45.09ms | 43.71ms | 39.92ms |
| comp_4to1 | 2.22ms | 3.71ms | 25.08ms | 12.61ms | 9.64ms | 1.99ms | 16.55ms | 36.67ms | 16.43ms |
| comp_1000to1 | 4μs | 4μs | 17μs | 6μs | 4μs | 4μs | 18μs | 2.58ms | 44μs |
| comp_1to2 | 13.42ms | 15.84ms | 37.30ms | 23.92ms | 11.19ms | 15.70ms | 34.65ms | 31.28ms | 45.38ms |
| comp_1to4 | 9.34ms | 12.71ms | 18.41ms | 22.41ms | 21.83ms | 13.13ms | 21.75ms | 31.59ms | 44.62ms |
| comp_1to8 | 4.25ms | 10.50ms | 20.65ms | 7.76ms | 5.39ms | 6.91ms | 25.02ms | 24.25ms | 43.45ms |
| comp_1to1000 | 3.34ms | 9.02ms | 15.83ms | 6.74ms | 4.27ms | 4.36ms | 16.90ms | 17.76ms | 39.93ms |
| update_1to1 | 4.49ms | 5.59ms | 24.09ms | 8.69ms | 82.64ms | 8.90ms | 16.08ms | 43.20ms | 5.89ms |
| update_2to1 | 2.31ms | 2.87ms | 12.46ms | 4.38ms | 41.37ms | 4.50ms | 7.80ms | 21.48ms | 2.91ms |
| update_4to1 | 1.12ms | 1.43ms | 7.62ms | 2.23ms | 19.96ms | 2.30ms | 4.06ms | 10.83ms | 1.41ms |
| update_1000to1 | 11μs | 13μs | 70μs | 21μs | 173μs | 22μs | 40μs | 120μs | 15μs |
| update_1to2 | 2.31ms | 3.54ms | 12.89ms | 4.65ms | 41.59ms | 4.49ms | 8.00ms | 21.29ms | 2.84ms |
| update_1to4 | 1.15ms | 1.52ms | 6.71ms | 2.21ms | 19.87ms | 2.27ms | 4.00ms | 10.84ms | 1.46ms |
| update_1to1000 | 29μs | 64μs | 172μs | 65μs | 97μs | 43μs | 182μs | 210μs | 387μs |
| cellx1000 | 7.32ms | 27.06ms | 81.74ms | 10.33ms | N/A | 10.56ms | 13.41ms | 163.72ms | 5.24ms |
| cellx2500 | 22.35ms | 123.59ms | 276.88ms | 41.63ms | N/A | 44.29ms | 46.84ms | 460.95ms | 21.81ms |
| cellx5000 | 44.23ms | 389.25ms | 605.64ms | 95.94ms | N/A | 97.68ms | 140.46ms | 1.10s | 58.16ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.69ms | 235.32ms | 2.01s | 437.67ms | 2.11s | 530.77ms | 351.45ms | 2.57s (partial) | 238.90ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.84ms | 186.26ms | 1.51s | 272.37ms | 1.44s (partial) | 283.00ms | 244.03ms | 2.31s (partial) | 197.90ms |
| 1000x12 - 4 sources - dynamic (large) | 300.93ms | 346.56ms | 1.91s | 3.72s | 2.47s (partial) | 3.76s | 470.22ms | 4.00s (partial) | 331.63ms |
| 1000x5 - 25 sources (wide dense) | 448.19ms | 610.21ms | 3.47s | 2.70s | 4.11s | 3.41s | 586.51ms | 5.08s (partial) | 499.20ms |
| 5x500 - 3 sources (deep) | 206.56ms | 194.72ms | 1.19s | 228.73ms | 1.44s | 226.45ms | 252.94ms | 1.91s (partial) | 204.83ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.03ms | 283.60ms | 1.71s | 454.42ms | 1.76s (partial) | 486.87ms | 378.30ms | 2.71s (partial) | 258.45ms |

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
