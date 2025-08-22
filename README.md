# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.76s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.39s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.33s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.57s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.61s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.63s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.81ms | 2.36s | 211.93ms | 1.46s | 216.81ms | 262.40ms | 166.38ms (fail) |
| broadPropagation | 316.82ms | 4.38s | 472.07ms | 88.75ms (fail) | 461.02ms | 458.27ms | 6.68ms (fail) |
| deepPropagation | 99.08ms | 1.57s | 194.38ms | 1.98s (fail) | 173.04ms | 142.32ms | 148.73ms (fail) |
| diamond | 220.39ms | 2.40s | 278.70ms | 2.66s (fail) | 291.60ms | 313.70ms | 202.99ms (fail) |
| mux | 344.72ms | 1.83s | 393.46ms | 579.98ms (fail) | 412.89ms | 397.24ms | 196.52ms (fail) |
| repeatedObservers | 50.53ms | 230.63ms | 40.79ms | 419.81ms (fail) | 46.55ms | 90.32ms | 52.80ms (fail) |
| triangle | 76.43ms | 761.95ms | 98.99ms | 978.94ms (fail) | 102.06ms | 110.83ms | 80.98ms (fail) |
| unstable | 140.00ms | 341.34ms | 74.02ms | 647.44ms (fail) | 76.58ms | 167.50ms | 337.97ms (fail) |
| molBench | 364.32ms | 585.30ms | 488.30ms | 11.80ms | 486.27ms | 500.52ms | 910μs |
| create_signals | 28.72ms | 86.30ms | 5.19ms | 24.87ms | 26.18ms | 51.55ms | 66.98ms |
| comp_0to1 | 11.00ms | 49.16ms | 22.14ms | 14.63ms | 11.88ms | 25.11ms | 62.69ms |
| comp_1to1 | 20.23ms | 29.65ms | 12.45ms | 22.41ms | 27.70ms | 37.38ms | 66.97ms |
| comp_2to1 | 16.22ms | 11.87ms | 17.78ms | 25.82ms | 10.20ms | 32.78ms | 46.48ms |
| comp_4to1 | 3.70ms | 19.21ms | 9.79ms | 4.06ms | 2.12ms | 12.10ms | 18.44ms |
| comp_1000to1 | 5μs | 35μs | 6μs | 10μs | 5μs | 24μs | 47μs |
| comp_1to2 | 9.71ms | 32.86ms | 13.64ms | 11.20ms | 20.64ms | 33.82ms | 52.01ms |
| comp_1to4 | 25.44ms | 23.48ms | 25.49ms | 25.31ms | 10.65ms | 31.43ms | 49.13ms |
| comp_1to8 | 10.63ms | 25.07ms | 6.95ms | 5.28ms | 6.37ms | 19.84ms | 49.21ms |
| comp_1to1000 | 6.06ms | 15.89ms | 5.63ms | 4.58ms | 4.32ms | 15.06ms | 43.49ms |
| update_1to1 | 5.56ms | 27.23ms | 8.29ms | 81.38ms | 10.62ms | 20.71ms | 6.01ms |
| update_2to1 | 2.84ms | 13.84ms | 4.37ms | 41.83ms | 4.62ms | 10.49ms | 3.10ms |
| update_4to1 | 1.42ms | 6.82ms | 2.08ms | 20.12ms | 2.59ms | 5.06ms | 1.55ms |
| update_1000to1 | 25μs | 67μs | 21μs | 172μs | 25μs | 48μs | 15μs |
| update_1to2 | 2.75ms | 13.39ms | 4.15ms | 42.26ms | 4.72ms | 10.35ms | 3.06ms |
| update_1to4 | 1.46ms | 6.74ms | 2.10ms | 20.65ms | 2.59ms | 5.45ms | 1.57ms |
| update_1to1000 | 51μs | 179μs | 138μs | 94μs | 42μs | 151μs | 451μs |
| cellx1000 | 8.01ms | 71.97ms | 9.84ms | N/A | 9.76ms | 11.78ms | 5.34ms |
| cellx2500 | 21.51ms | 255.24ms | 30.86ms | N/A | 33.09ms | 38.65ms | 22.96ms |
| cellx5000 | 56.42ms | 586.62ms | 82.25ms | N/A | 71.50ms | 122.23ms | 91.91ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.08ms | 2.03s | 452.56ms | 2.17s | 509.78ms | 324.94ms | 271.48ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 192.06ms | 1.53s | 278.03ms | 1.45s (partial) | 283.26ms | 219.11ms | 203.17ms |
| 1000x12 - 4 sources - dynamic (large) | 354.46ms | 1.93s | 3.72s | 2.53s (partial) | 3.76s | 445.36ms | 360.33ms |
| 1000x5 - 25 sources (wide dense) | 495.62ms | 3.49s | 2.73s | 4.19s | 3.55s | 805.86ms | 515.13ms |
| 5x500 - 3 sources (deep) | 199.97ms | 1.13s | 235.45ms | 1.37s | 220.81ms | 229.14ms | 212.14ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 282.24ms | 1.71s | 462.62ms | 1.75s (partial) | 475.39ms | 334.30ms | 266.18ms |

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
