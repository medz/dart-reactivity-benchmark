# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.78s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.40s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.94s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.59s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.12s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.59s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.05s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 181.27ms | 157.46ms | 2.32s | 203.82ms | 1.44s | 206.90ms | 285.90ms | 2.20s | 151.07ms (fail) |
| broadPropagation | 379.05ms | 322.00ms | 4.27s | 455.88ms | 81.15ms (fail) | 464.02ms | 502.94ms | 5.41s | 5.79ms (fail) |
| deepPropagation | 132.71ms | 96.88ms | 1.52s | 178.18ms | 1.89s (fail) | 175.23ms | 169.47ms | 2.02s | 138.15ms (fail) |
| diamond | 236.73ms | 213.01ms | 2.40s | 280.94ms | 2.66s (fail) | 287.98ms | 357.35ms | 3.44s | 186.20ms (fail) |
| mux | 375.13ms | 341.83ms | 1.83s | 388.31ms | 557.88ms (fail) | 414.32ms | 439.85ms | 2.01s | 191.82ms (fail) |
| repeatedObservers | 47.98ms | 51.43ms | 230.21ms | 37.87ms | 399.90ms (fail) | 46.14ms | 78.99ms | 218.72ms | 52.22ms (fail) |
| triangle | 87.46ms | 74.84ms | 762.82ms | 99.09ms | 915.51ms (fail) | 102.60ms | 119.81ms | 1.14s | 76.60ms (fail) |
| unstable | 62.39ms | 70.83ms | 346.45ms | 70.92ms | 615.55ms (fail) | 75.11ms | 95.97ms | 355.38ms | 336.19ms (fail) |
| molBench | 482.84ms | 482.07ms | 576.52ms | 492.12ms | 11.70ms | 490.19ms | 493.19ms | 1.71s | 872μs |
| create_signals | 7.72ms | 26.96ms | 49.67ms | 5.23ms | 22.67ms | 25.85ms | 72.22ms | 78.54ms | 60.77ms |
| comp_0to1 | 21.91ms | 10.32ms | 15.79ms | 17.43ms | 13.60ms | 12.05ms | 25.87ms | 33.43ms | 55.33ms |
| comp_1to1 | 23.11ms | 22.84ms | 35.53ms | 11.03ms | 23.55ms | 29.12ms | 44.64ms | 42.01ms | 57.39ms |
| comp_2to1 | 20.85ms | 15.91ms | 22.85ms | 13.51ms | 23.73ms | 9.19ms | 35.95ms | 42.51ms | 37.62ms |
| comp_4to1 | 1.71ms | 3.56ms | 13.70ms | 11.82ms | 6.39ms | 3.05ms | 4.48ms | 35.47ms | 17.13ms |
| comp_1000to1 | 3μs | 7μs | 15μs | 4μs | 3μs | 5μs | 15μs | 2.72ms | 45μs |
| comp_1to2 | 12.51ms | 15.95ms | 36.37ms | 25.72ms | 13.79ms | 15.75ms | 36.07ms | 30.52ms | 49.15ms |
| comp_1to4 | 4.67ms | 18.73ms | 22.77ms | 20.10ms | 24.94ms | 10.80ms | 20.35ms | 28.71ms | 47.08ms |
| comp_1to8 | 7.41ms | 7.34ms | 21.88ms | 10.37ms | 5.07ms | 9.66ms | 23.41ms | 24.15ms | 46.56ms |
| comp_1to1000 | 3.52ms | 4.26ms | 15.21ms | 4.40ms | 4.17ms | 7.46ms | 14.37ms | 19.31ms | 42.41ms |
| update_1to1 | 5.01ms | 5.66ms | 24.53ms | 8.17ms | 85.37ms | 9.29ms | 16.19ms | 42.78ms | 5.75ms |
| update_2to1 | 2.94ms | 2.82ms | 11.63ms | 4.06ms | 42.74ms | 5.11ms | 7.91ms | 21.28ms | 2.88ms |
| update_4to1 | 1.29ms | 1.45ms | 6.05ms | 2.09ms | 21.48ms | 2.28ms | 4.05ms | 10.70ms | 1.47ms |
| update_1000to1 | 18μs | 14μs | 66μs | 20μs | 181μs | 23μs | 41μs | 119μs | 15μs |
| update_1to2 | 2.88ms | 2.80ms | 11.07ms | 4.06ms | 42.94ms | 4.87ms | 8.12ms | 21.03ms | 2.94ms |
| update_1to4 | 1.70ms | 1.41ms | 5.42ms | 2.07ms | 21.36ms | 2.33ms | 4.04ms | 10.71ms | 1.46ms |
| update_1to1000 | 49μs | 33μs | 212μs | 65μs | 99μs | 44μs | 163μs | 202μs | 405μs |
| cellx1000 | 7.42ms | 32.19ms | 68.42ms | 12.01ms | N/A | 10.50ms | 12.10ms | 162.71ms | 5.20ms |
| cellx2500 | 22.83ms | 128.05ms | 234.39ms | 25.95ms | N/A | 36.39ms | 33.70ms | 477.82ms | 24.41ms |
| cellx5000 | 49.51ms | 427.07ms | 536.27ms | 62.92ms | N/A | 78.25ms | 80.98ms | 1.08s | 64.65ms |
| 10x5 - 2 sources - read 20.0% (simple) | 228.80ms | 229.16ms | 2.00s | 440.55ms | 2.26s | 511.88ms | 352.92ms | 2.60s (partial) | 239.56ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 172.43ms | 184.51ms | 1.52s | 269.94ms | 1.50s (partial) | 283.58ms | 243.42ms | 2.39s (partial) | 200.40ms |
| 1000x12 - 4 sources - dynamic (large) | 297.36ms | 351.32ms | 1.82s | 3.50s | 2.54s (partial) | 4.00s | 471.65ms | 4.44s (partial) | 342.05ms |
| 1000x5 - 25 sources (wide dense) | 434.31ms | 621.10ms | 3.54s | 2.60s | 4.20s | 3.56s | 594.63ms | 5.18s (partial) | 504.17ms |
| 5x500 - 3 sources (deep) | 199.34ms | 197.22ms | 1.14s | 230.96ms | 1.39s | 228.96ms | 254.58ms | 1.98s (partial) | 205.00ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.16ms | 280.86ms | 1.71s | 450.28ms | 1.78s (partial) | 473.38ms | 383.66ms | 2.80s (partial) | 265.45ms |

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
