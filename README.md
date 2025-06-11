# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.81s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.45s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.41s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.18s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.47s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.32s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.04s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.94s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 172.82ms | 168.11ms | 2.38s | 201.71ms | 1.38s | 207.26ms | 278.98ms | 2.28s | 164.13ms (fail) |
| broadPropagation | 363.91ms | 318.57ms | 4.49s | 445.72ms | 79.67ms (fail) | 462.74ms | 504.09ms | 5.78s | 5.86ms (fail) |
| deepPropagation | 128.72ms | 98.60ms | 1.59s | 174.60ms | 1.91s (fail) | 169.09ms | 168.39ms | 2.08s | 141.97ms (fail) |
| diamond | 238.60ms | 215.47ms | 2.52s | 277.94ms | 2.58s (fail) | 283.16ms | 353.81ms | 3.62s | 183.20ms (fail) |
| mux | 387.02ms | 346.02ms | 1.88s | 406.47ms | 553.88ms (fail) | 446.16ms | 441.95ms | 2.13s | 199.57ms (fail) |
| repeatedObservers | 47.04ms | 50.08ms | 242.10ms | 39.53ms | 370.70ms (fail) | 44.50ms | 81.44ms | 224.79ms | 54.86ms (fail) |
| triangle | 87.25ms | 79.30ms | 794.73ms | 98.63ms | 885.74ms (fail) | 100.48ms | 118.54ms | 1.17s | 90.65ms (fail) |
| unstable | 60.64ms | 69.72ms | 360.73ms | 69.67ms | 606.77ms (fail) | 80.16ms | 99.35ms | 364.21ms | 337.76ms (fail) |
| molBench | 493.01ms | 492.35ms | 573.32ms | 488.91ms | 11.11ms | 487.91ms | 492.74ms | 1.73s | 1.22ms |
| create_signals | 7.31ms | 27.15ms | 92.80ms | 5.49ms | 24.10ms | 25.62ms | 99.11ms | 89.79ms | 66.53ms |
| comp_0to1 | 22.08ms | 11.23ms | 42.13ms | 17.45ms | 13.78ms | 11.97ms | 36.90ms | 35.50ms | 56.84ms |
| comp_1to1 | 19.24ms | 19.25ms | 18.79ms | 14.19ms | 23.30ms | 27.47ms | 57.15ms | 43.60ms | 63.39ms |
| comp_2to1 | 16.18ms | 20.70ms | 21.48ms | 16.99ms | 30.03ms | 9.08ms | 46.94ms | 26.59ms | 42.07ms |
| comp_4to1 | 2.29ms | 3.99ms | 15.32ms | 14.92ms | 9.85ms | 1.92ms | 14.83ms | 30.30ms | 18.90ms |
| comp_1000to1 | 20μs | 4μs | 17μs | 4μs | 6μs | 4μs | 17μs | 3.02ms | 40μs |
| comp_1to2 | 10.03ms | 10.09ms | 39.85ms | 17.81ms | 20.06ms | 21.01ms | 37.05ms | 20.75ms | 45.13ms |
| comp_1to4 | 4.61ms | 22.79ms | 24.22ms | 35.47ms | 21.86ms | 9.49ms | 22.87ms | 36.59ms | 44.19ms |
| comp_1to8 | 7.47ms | 7.24ms | 22.25ms | 7.84ms | 7.44ms | 6.24ms | 24.59ms | 27.11ms | 44.57ms |
| comp_1to1000 | 3.49ms | 4.99ms | 16.22ms | 5.13ms | 7.05ms | 4.22ms | 17.00ms | 17.80ms | 38.80ms |
| update_1to1 | 4.53ms | 5.42ms | 26.55ms | 8.63ms | 86.66ms | 9.03ms | 15.91ms | 44.66ms | 5.75ms |
| update_2to1 | 2.32ms | 2.80ms | 13.01ms | 4.25ms | 41.27ms | 4.52ms | 7.69ms | 22.04ms | 2.85ms |
| update_4to1 | 1.12ms | 1.52ms | 7.05ms | 2.16ms | 19.86ms | 2.24ms | 3.91ms | 11.20ms | 1.44ms |
| update_1000to1 | 11μs | 23μs | 70μs | 21μs | 172μs | 22μs | 39μs | 121μs | 15μs |
| update_1to2 | 2.32ms | 2.70ms | 13.06ms | 4.82ms | 41.13ms | 4.51ms | 7.84ms | 22.11ms | 2.85ms |
| update_1to4 | 2.12ms | 1.35ms | 6.16ms | 2.15ms | 20.49ms | 2.20ms | 3.91ms | 11.16ms | 1.44ms |
| update_1to1000 | 49μs | 31μs | 172μs | 159μs | 102μs | 43μs | 171μs | 216μs | 381μs |
| cellx1000 | 7.83ms | 30.91ms | 74.60ms | 9.90ms | N/A | 9.96ms | 13.88ms | 171.57ms | 5.25ms |
| cellx2500 | 23.85ms | 131.95ms | 262.95ms | 26.74ms | N/A | 34.28ms | 46.89ms | 520.40ms | 24.50ms |
| cellx5000 | 51.78ms | 430.42ms | 566.82ms | 73.66ms | N/A | 90.40ms | 113.11ms | 1.28s | 79.82ms |
| 10x5 - 2 sources - read 20.0% (simple) | 227.30ms | 233.72ms | 2.09s | 441.11ms | 2.16s | 514.67ms | 364.95ms | 2.71s (partial) | 241.14ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.53ms | 184.51ms | 1.56s | 272.76ms | 1.43s (partial) | 281.44ms | 243.89ms | 2.38s (partial) | 199.32ms |
| 1000x12 - 4 sources - dynamic (large) | 308.23ms | 352.97ms | 2.00s | 3.60s | 2.49s (partial) | 3.84s | 469.08ms | 4.12s (partial) | 336.01ms |
| 1000x5 - 25 sources (wide dense) | 452.80ms | 623.32ms | 3.63s | 2.72s | 4.08s | 3.57s | 592.16ms | 5.07s (partial) | 492.65ms |
| 5x500 - 3 sources (deep) | 211.74ms | 198.36ms | 1.20s | 226.77ms | 1.35s | 226.88ms | 249.79ms | 2.05s (partial) | 200.15ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.16ms | 286.37ms | 1.75s | 446.54ms | 1.77s (partial) | 484.14ms | 379.91ms | 2.82s (partial) | 253.37ms |

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
