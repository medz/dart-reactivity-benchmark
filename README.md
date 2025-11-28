# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.26s |
| 🥈 | [state_beacon](https://github.com/jinyus/dart_beacon) | 100.0% | 35/35 | 4.59s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.13s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.98s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.28s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.68s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 126.49ms | 2.37s | 208.36ms | 1.35s | 219.41ms | 248.96ms | 170.15ms |
| broadPropagation | 242.00ms | 4.41s | 457.64ms | 83.58ms (fail) | 457.51ms | 449.78ms | 402.00ms |
| deepPropagation | 79.19ms | 1.49s | 181.48ms | 2.04s (fail) | 172.29ms | 130.81ms | 156.06ms |
| diamond | 157.91ms | 2.39s | 283.21ms | 2.83s (fail) | 286.72ms | 310.62ms | 219.45ms |
| mux | 292.17ms | 1.84s | 370.80ms | 553.22ms (fail) | 389.88ms | 371.11ms | 360.09ms |
| repeatedObservers | 27.00ms | 236.04ms | 40.86ms | 408.55ms (fail) | 46.73ms | 88.04ms | 58.93ms |
| triangle | 64.22ms | 750.42ms | 102.04ms | 886.85ms (fail) | 101.85ms | 98.29ms | 92.45ms |
| unstable | 50.17ms | 345.29ms | 71.78ms | 652.48ms (fail) | 80.53ms | 102.50ms | 343.11ms |
| molBench | 484.21ms | 591.69ms | 481.11ms | 11.78ms | 496.18ms | 495.43ms | 492.81ms |
| create_signals | 10.11ms | 69.08ms | 5.30ms | 24.43ms | 25.61ms | 75.39ms | 68.53ms |
| comp_0to1 | 10.95ms | 32.93ms | 17.94ms | 15.24ms | 10.86ms | 23.75ms | 55.28ms |
| comp_1to1 | 18.77ms | 39.84ms | 14.02ms | 22.66ms | 27.12ms | 35.26ms | 53.41ms |
| comp_2to1 | 8.77ms | 21.88ms | 18.04ms | 33.74ms | 7.88ms | 31.65ms | 36.31ms |
| comp_4to1 | 1.86ms | 13.88ms | 15.02ms | 8.73ms | 1.88ms | 29.81ms | 16.04ms |
| comp_1000to1 | 3μs | 19μs | 4μs | 4μs | 6μs | 14μs | 39μs |
| comp_1to2 | 27.13ms | 36.23ms | 18.30ms | 22.53ms | 15.78ms | 33.17ms | 44.33ms |
| comp_1to4 | 16.32ms | 17.77ms | 33.17ms | 25.69ms | 19.61ms | 35.01ms | 43.69ms |
| comp_1to8 | 8.18ms | 20.93ms | 7.15ms | 10.12ms | 5.79ms | 22.42ms | 41.74ms |
| comp_1to1000 | 3.68ms | 14.84ms | 4.77ms | 9.34ms | 5.54ms | 14.37ms | 37.62ms |
| update_1to1 | 7.83ms | 22.10ms | 8.80ms | 94.91ms | 9.34ms | 14.06ms | 6.10ms |
| update_2to1 | 3.08ms | 11.29ms | 4.35ms | 42.97ms | 4.69ms | 6.94ms | 3.08ms |
| update_4to1 | 2.25ms | 5.93ms | 2.25ms | 20.79ms | 2.40ms | 3.59ms | 1.58ms |
| update_1000to1 | 16μs | 53μs | 22μs | 173μs | 24μs | 36μs | 15μs |
| update_1to2 | 2.57ms | 10.63ms | 4.40ms | 44.98ms | 4.64ms | 6.98ms | 3.08ms |
| update_1to4 | 1.83ms | 5.61ms | 2.27ms | 20.98ms | 2.57ms | 3.50ms | 1.55ms |
| update_1to1000 | 44μs | 156μs | 164μs | 131μs | 60μs | 260μs | 374μs |
| cellx1000 | 5.67ms | 79.74ms | 9.76ms | N/A | 9.70ms | 9.65ms | 9.69ms |
| cellx2500 | 17.83ms | 284.92ms | 26.67ms | N/A | 27.43ms | 28.87ms | 29.39ms |
| cellx5000 | 33.38ms | 625.18ms | 77.79ms | N/A | 73.76ms | 66.39ms | 87.60ms |
| 10x5 - 2 sources - read 20.0% (simple) | 182.12ms | 1.98s | 428.82ms | 2.19s | 505.20ms | 321.65ms | 235.04ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 156.91ms | 1.49s | 269.23ms | 1.47s (partial) | 278.13ms | 223.16ms | 199.25ms |
| 1000x12 - 4 sources - dynamic (large) | 277.49ms | 1.80s | 3.65s | 2.53s (partial) | 3.82s | 450.64ms | 361.77ms |
| 1000x5 - 25 sources (wide dense) | 536.44ms | 3.44s | 2.48s | 4.14s | 3.38s | 829.57ms | 495.54ms |
| 5x500 - 3 sources (deep) | 158.38ms | 1.14s | 229.44ms | 1.38s | 225.43ms | 231.76ms | 207.75ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 248.03ms | 1.69s | 450.32ms | 1.76s (partial) | 481.69ms | 333.23ms | 260.49ms |

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
