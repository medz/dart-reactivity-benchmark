# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.46s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.39s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.25s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.87s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.83s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.35s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.68s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.26s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 179.21ms | 160.87ms | 2.33s | 214.24ms | 1.37s | 206.91ms | 286.93ms | 2.15s | 147.54ms (fail) |
| broadPropagation | 375.95ms | 315.88ms | 4.41s | 458.99ms | 87.60ms (fail) | 527.13ms | 510.18ms | 5.43s | 6.24ms (fail) |
| deepPropagation | 130.74ms | 98.18ms | 1.54s | 177.39ms | 1.91s (fail) | 173.93ms | 171.98ms | 1.97s | 146.52ms (fail) |
| diamond | 241.35ms | 220.92ms | 2.43s | 285.41ms | 2.86s (fail) | 292.93ms | 354.97ms | 3.39s | 183.38ms (fail) |
| mux | 384.03ms | 343.72ms | 1.81s | 403.29ms | 557.40ms (fail) | 413.66ms | 448.06ms | 1.98s | 194.41ms (fail) |
| repeatedObservers | 47.27ms | 50.02ms | 234.48ms | 40.23ms | 386.61ms (fail) | 46.73ms | 83.96ms | 213.35ms | 53.14ms (fail) |
| triangle | 89.82ms | 78.59ms | 764.16ms | 102.53ms | 950.90ms (fail) | 102.23ms | 124.70ms | 1.12s | 78.29ms (fail) |
| unstable | 61.67ms | 69.70ms | 352.20ms | 69.84ms | 631.81ms (fail) | 82.04ms | 95.85ms | 351.94ms | 337.27ms (fail) |
| molBench | 494.32ms | 492.02ms | 574.22ms | 483.25ms | 11.95ms | 486.04ms | 492.41ms | 1.70s | 905μs |
| create_signals | 7.56ms | 34.99ms | 90.00ms | 5.29ms | 26.89ms | 24.29ms | 98.19ms | 77.56ms | 59.02ms |
| comp_0to1 | 21.39ms | 13.58ms | 38.47ms | 17.08ms | 16.52ms | 10.84ms | 37.53ms | 37.34ms | 53.03ms |
| comp_1to1 | 23.15ms | 20.54ms | 18.31ms | 12.58ms | 23.26ms | 27.10ms | 54.64ms | 23.85ms | 54.68ms |
| comp_2to1 | 20.07ms | 17.24ms | 20.57ms | 16.73ms | 24.52ms | 9.09ms | 48.13ms | 34.48ms | 35.58ms |
| comp_4to1 | 1.71ms | 3.87ms | 28.07ms | 10.76ms | 4.65ms | 1.96ms | 5.03ms | 18.24ms | 16.24ms |
| comp_1000to1 | 3μs | 4μs | 17μs | 4μs | 3μs | 5μs | 18μs | 2.11ms | 42μs |
| comp_1to2 | 9.46ms | 9.71ms | 38.34ms | 29.39ms | 10.67ms | 21.17ms | 42.79ms | 40.90ms | 44.75ms |
| comp_1to4 | 4.51ms | 22.17ms | 25.34ms | 20.75ms | 25.78ms | 9.41ms | 23.19ms | 25.61ms | 43.77ms |
| comp_1to8 | 7.98ms | 7.24ms | 21.74ms | 12.56ms | 5.52ms | 12.65ms | 22.63ms | 22.78ms | 42.62ms |
| comp_1to1000 | 3.26ms | 4.92ms | 16.33ms | 6.64ms | 5.13ms | 6.63ms | 16.93ms | 17.08ms | 38.64ms |
| update_1to1 | 4.53ms | 5.42ms | 27.41ms | 8.59ms | 85.15ms | 8.99ms | 16.20ms | 42.80ms | 5.66ms |
| update_2to1 | 2.30ms | 2.74ms | 10.91ms | 4.34ms | 43.49ms | 4.53ms | 8.00ms | 21.63ms | 2.82ms |
| update_4to1 | 1.12ms | 1.34ms | 7.09ms | 2.59ms | 20.61ms | 2.23ms | 4.06ms | 10.73ms | 1.42ms |
| update_1000to1 | 11μs | 13μs | 70μs | 21μs | 177μs | 23μs | 40μs | 118μs | 14μs |
| update_1to2 | 2.30ms | 2.79ms | 12.12ms | 4.63ms | 42.82ms | 4.69ms | 8.19ms | 21.12ms | 2.86ms |
| update_1to4 | 1.15ms | 2.25ms | 6.03ms | 2.19ms | 21.39ms | 2.31ms | 4.05ms | 10.68ms | 1.41ms |
| update_1to1000 | 30μs | 36μs | 173μs | 65μs | 127μs | 43μs | 180μs | 209μs | 384μs |
| cellx1000 | 8.85ms | 28.70ms | 72.27ms | 9.76ms | N/A | 10.14ms | 14.97ms | 149.35ms | 5.13ms |
| cellx2500 | 24.76ms | 129.87ms | 255.61ms | 26.41ms | N/A | 35.24ms | 34.85ms | 475.11ms | 22.33ms |
| cellx5000 | 53.05ms | 422.60ms | 554.22ms | 71.17ms | N/A | 72.69ms | 83.23ms | 1.21s | 53.61ms |
| 10x5 - 2 sources - read 20.0% (simple) | 249.16ms | 233.25ms | 2.01s | 456.89ms | 2.20s | 518.39ms | 365.32ms | 2.57s (partial) | 242.51ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.27ms | 184.69ms | 1.55s | 271.01ms | 1.45s (partial) | 280.35ms | 245.20ms | 2.36s (partial) | 200.42ms |
| 1000x12 - 4 sources - dynamic (large) | 302.86ms | 363.31ms | 2.07s | 3.61s | 2.60s (partial) | 4.09s | 458.81ms | 4.04s (partial) | 333.04ms |
| 1000x5 - 25 sources (wide dense) | 446.74ms | 627.75ms | 3.63s | 2.74s | 4.22s | 3.68s | 586.71ms | 5.04s (partial) | 485.34ms |
| 5x500 - 3 sources (deep) | 208.94ms | 199.01ms | 1.13s | 224.97ms | 1.35s | 230.86ms | 263.11ms | 1.95s (partial) | 203.99ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.49ms | 287.96ms | 1.75s | 445.00ms | 1.74s (partial) | 477.78ms | 377.15ms | 2.76s (partial) | 255.09ms |

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
