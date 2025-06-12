# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.40s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.23s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.17s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.85s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.38s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.21s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.16s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 174.47ms | 163.27ms | 2.32s | 198.29ms | 1.39s | 219.16ms | 278.77ms | 2.14s | 147.54ms (fail) |
| broadPropagation | 376.20ms | 329.27ms | 4.52s | 455.95ms | 82.74ms (fail) | 455.06ms | 506.56ms | 5.40s | 5.95ms (fail) |
| deepPropagation | 129.90ms | 98.80ms | 1.57s | 178.70ms | 1.90s (fail) | 171.35ms | 171.10ms | 1.99s | 140.61ms (fail) |
| diamond | 240.21ms | 216.39ms | 2.42s | 279.84ms | 2.62s (fail) | 280.47ms | 360.00ms | 3.43s | 188.14ms (fail) |
| mux | 382.26ms | 345.90ms | 1.86s | 401.57ms | 558.24ms (fail) | 408.34ms | 443.13ms | 1.98s | 196.28ms (fail) |
| repeatedObservers | 47.16ms | 52.36ms | 226.19ms | 39.41ms | 376.19ms (fail) | 45.20ms | 82.27ms | 215.79ms | 52.58ms (fail) |
| triangle | 88.78ms | 80.37ms | 762.23ms | 100.52ms | 897.80ms (fail) | 101.27ms | 120.42ms | 1.11s | 81.31ms (fail) |
| unstable | 61.03ms | 71.84ms | 342.65ms | 70.78ms | 609.78ms (fail) | 79.77ms | 97.87ms | 346.79ms | 334.73ms (fail) |
| molBench | 493.02ms | 492.89ms | 571.23ms | 488.66ms | 11.71ms | 485.58ms | 494.65ms | 1.70s | 894μs |
| create_signals | 6.83ms | 26.43ms | 68.17ms | 5.34ms | 23.20ms | 24.60ms | 53.25ms | 55.70ms | 60.48ms |
| comp_0to1 | 20.78ms | 9.64ms | 28.25ms | 17.14ms | 13.28ms | 10.74ms | 26.72ms | 40.37ms | 54.20ms |
| comp_1to1 | 17.51ms | 18.74ms | 41.38ms | 12.47ms | 22.71ms | 28.82ms | 38.03ms | 45.02ms | 54.76ms |
| comp_2to1 | 19.47ms | 19.57ms | 21.69ms | 19.82ms | 24.11ms | 7.83ms | 32.51ms | 25.08ms | 36.24ms |
| comp_4to1 | 2.49ms | 3.37ms | 17.21ms | 21.33ms | 5.57ms | 2.88ms | 5.05ms | 29.87ms | 16.23ms |
| comp_1000to1 | 4μs | 4μs | 21μs | 4μs | 3μs | 8μs | 18μs | 2.75ms | 42μs |
| comp_1to2 | 13.40ms | 13.66ms | 34.81ms | 15.71ms | 11.31ms | 25.25ms | 32.25ms | 20.18ms | 45.01ms |
| comp_1to4 | 9.76ms | 12.80ms | 19.72ms | 20.22ms | 22.60ms | 6.68ms | 21.79ms | 23.31ms | 44.19ms |
| comp_1to8 | 3.92ms | 6.22ms | 23.78ms | 15.53ms | 4.74ms | 6.37ms | 24.43ms | 19.15ms | 42.99ms |
| comp_1to1000 | 3.27ms | 9.47ms | 16.16ms | 6.10ms | 4.24ms | 4.12ms | 17.43ms | 17.16ms | 39.21ms |
| update_1to1 | 4.51ms | 5.74ms | 28.81ms | 8.77ms | 83.91ms | 8.86ms | 16.73ms | 43.87ms | 5.64ms |
| update_2to1 | 2.33ms | 2.80ms | 14.47ms | 4.48ms | 42.22ms | 4.47ms | 8.19ms | 21.75ms | 2.88ms |
| update_4to1 | 1.17ms | 1.55ms | 7.21ms | 2.19ms | 20.44ms | 2.63ms | 4.17ms | 11.24ms | 1.47ms |
| update_1000to1 | 11μs | 24μs | 91μs | 21μs | 190μs | 22μs | 41μs | 120μs | 14μs |
| update_1to2 | 2.38ms | 2.77ms | 13.50ms | 4.68ms | 42.64ms | 4.71ms | 8.36ms | 21.67ms | 2.88ms |
| update_1to4 | 1.20ms | 1.46ms | 7.13ms | 2.23ms | 20.61ms | 2.21ms | 4.18ms | 11.22ms | 1.49ms |
| update_1to1000 | 48μs | 61μs | 173μs | 39μs | 142μs | 42μs | 172μs | 227μs | 383μs |
| cellx1000 | 7.31ms | 28.08ms | 70.30ms | 9.62ms | N/A | 10.32ms | 11.85ms | 165.40ms | 5.32ms |
| cellx2500 | 22.09ms | 126.11ms | 256.23ms | 25.15ms | N/A | 31.48ms | 32.89ms | 454.45ms | 26.62ms |
| cellx5000 | 42.85ms | 397.89ms | 586.70ms | 69.26ms | N/A | 59.91ms | 68.09ms | 1.07s | 69.55ms |
| 10x5 - 2 sources - read 20.0% (simple) | 232.70ms | 234.36ms | 2.04s | 440.18ms | 2.17s | 517.95ms | 364.73ms | 2.57s (partial) | 235.85ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.39ms | 183.91ms | 1.52s | 268.95ms | 1.42s (partial) | 283.49ms | 251.16ms | 2.32s (partial) | 197.20ms |
| 1000x12 - 4 sources - dynamic (large) | 299.04ms | 348.61ms | 1.95s | 3.68s | 2.53s (partial) | 3.74s | 460.11ms | 4.10s (partial) | 334.93ms |
| 1000x5 - 25 sources (wide dense) | 450.25ms | 617.91ms | 3.60s | 2.69s | 4.22s | 3.43s | 592.70ms | 5.06s (partial) | 493.24ms |
| 5x500 - 3 sources (deep) | 204.47ms | 198.09ms | 1.17s | 229.26ms | 1.32s | 225.67ms | 253.23ms | 1.97s (partial) | 204.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.95ms | 284.04ms | 1.73s | 441.35ms | 1.75s (partial) | 479.81ms | 384.49ms | 2.73s (partial) | 257.92ms |

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
