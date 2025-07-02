# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.87s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.40s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.39s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.18s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.93s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.02s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 41.16s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 176.28ms | 163.07ms | 2.36s | 199.84ms | 1.41s | 205.07ms | 276.44ms | 2.23s | 163.78ms (fail) |
| broadPropagation | 372.71ms | 318.27ms | 4.50s | 448.78ms | 82.32ms (fail) | 450.87ms | 501.70ms | 5.78s | 6.83ms (fail) |
| deepPropagation | 128.05ms | 97.89ms | 1.57s | 176.22ms | 1.86s (fail) | 171.02ms | 170.67ms | 2.09s | 143.03ms (fail) |
| diamond | 291.52ms | 210.79ms | 2.48s | 280.35ms | 2.53s (fail) | 279.29ms | 351.00ms | 3.67s | 185.43ms (fail) |
| mux | 379.26ms | 344.69ms | 1.83s | 401.56ms | 550.89ms (fail) | 412.27ms | 446.33ms | 2.12s | 192.72ms (fail) |
| repeatedObservers | 47.18ms | 50.74ms | 245.46ms | 40.35ms | 373.02ms (fail) | 45.07ms | 81.42ms | 227.63ms | 53.89ms (fail) |
| triangle | 87.83ms | 78.75ms | 760.59ms | 98.16ms | 865.67ms (fail) | 101.42ms | 118.11ms | 1.19s | 75.36ms (fail) |
| unstable | 63.19ms | 69.85ms | 353.12ms | 69.58ms | 629.71ms (fail) | 80.10ms | 100.83ms | 365.79ms | 340.17ms (fail) |
| molBench | 493.08ms | 492.18ms | 574.24ms | 483.71ms | 12.67ms | 485.58ms | 493.18ms | 1.73s | 1.22ms |
| create_signals | 7.12ms | 26.52ms | 83.00ms | 4.58ms | 28.24ms | 25.64ms | 76.75ms | 51.07ms | 66.37ms |
| comp_0to1 | 23.45ms | 10.79ms | 22.48ms | 17.42ms | 15.32ms | 11.24ms | 28.05ms | 23.63ms | 59.38ms |
| comp_1to1 | 19.61ms | 24.36ms | 37.90ms | 14.68ms | 26.11ms | 17.50ms | 39.51ms | 33.35ms | 61.55ms |
| comp_2to1 | 14.83ms | 18.88ms | 34.91ms | 16.34ms | 25.49ms | 14.21ms | 38.15ms | 39.75ms | 39.45ms |
| comp_4to1 | 1.66ms | 3.98ms | 13.85ms | 13.64ms | 5.70ms | 3.55ms | 17.83ms | 28.04ms | 17.80ms |
| comp_1000to1 | 4μs | 4μs | 22μs | 5μs | 5μs | 5μs | 17μs | 4.72ms | 48μs |
| comp_1to2 | 11.40ms | 11.73ms | 35.72ms | 24.63ms | 16.89ms | 20.49ms | 36.89ms | 26.26ms | 52.18ms |
| comp_1to4 | 8.47ms | 16.81ms | 19.40ms | 21.35ms | 31.14ms | 10.82ms | 23.13ms | 29.62ms | 50.35ms |
| comp_1to8 | 4.51ms | 5.41ms | 24.00ms | 8.04ms | 7.49ms | 6.12ms | 25.27ms | 24.46ms | 49.24ms |
| comp_1to1000 | 3.44ms | 3.98ms | 15.93ms | 8.26ms | 4.38ms | 4.30ms | 16.86ms | 18.59ms | 45.40ms |
| update_1to1 | 4.50ms | 5.47ms | 26.99ms | 8.91ms | 82.01ms | 8.85ms | 16.00ms | 43.33ms | 5.65ms |
| update_2to1 | 2.37ms | 2.78ms | 11.54ms | 4.34ms | 42.12ms | 4.49ms | 7.81ms | 21.45ms | 2.91ms |
| update_4to1 | 1.19ms | 1.42ms | 6.31ms | 2.29ms | 20.89ms | 2.21ms | 4.03ms | 10.85ms | 1.48ms |
| update_1000to1 | 16μs | 13μs | 69μs | 22μs | 229μs | 22μs | 40μs | 119μs | 14μs |
| update_1to2 | 2.35ms | 2.74ms | 10.98ms | 4.64ms | 44.28ms | 6.40ms | 8.02ms | 21.22ms | 2.85ms |
| update_1to4 | 1.22ms | 1.45ms | 5.70ms | 2.21ms | 21.64ms | 2.25ms | 4.04ms | 10.81ms | 1.55ms |
| update_1to1000 | 47μs | 58μs | 184μs | 2.59ms | 160μs | 43μs | 182μs | 218μs | 446μs |
| cellx1000 | 7.33ms | 29.59ms | 76.36ms | 9.94ms | N/A | 9.86ms | 14.41ms | 189.76ms | 5.44ms |
| cellx2500 | 22.78ms | 130.49ms | 275.73ms | 27.82ms | N/A | 32.40ms | 50.41ms | 537.90ms | 26.85ms |
| cellx5000 | 51.01ms | 404.83ms | 594.93ms | 81.50ms | N/A | 71.22ms | 148.62ms | 1.28s | 57.02ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.51ms | 233.53ms | 2.03s | 443.65ms | 2.23s | 505.63ms | 356.73ms | 2.72s (partial) | 244.47ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.97ms | 184.61ms | 1.58s | 274.94ms | 1.41s (partial) | 290.84ms | 241.57ms | 2.41s (partial) | 201.98ms |
| 1000x12 - 4 sources - dynamic (large) | 303.97ms | 354.96ms | 1.95s | 3.71s | 2.53s (partial) | 3.91s | 469.02ms | 4.17s (partial) | 342.63ms |
| 1000x5 - 25 sources (wide dense) | 454.36ms | 624.37ms | 3.50s | 2.70s | 4.13s | 3.28s | 589.78ms | 5.20s (partial) | 502.99ms |
| 5x500 - 3 sources (deep) | 203.94ms | 196.57ms | 1.17s | 229.24ms | 1.34s | 229.97ms | 252.63ms | 2.04s (partial) | 204.92ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.04ms | 274.80ms | 1.73s | 450.53ms | 1.70s (partial) | 481.37ms | 380.08ms | 2.82s (partial) | 265.53ms |

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
