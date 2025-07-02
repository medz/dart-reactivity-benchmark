# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.85s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.46s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.28s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.13s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.17s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.15s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 198.61ms | 2.35s | 199.76ms | 1.36s | 206.99ms | 290.63ms | 165.09ms (fail) |
| broadPropagation | 387.62ms | 4.47s | 452.70ms | 78.94ms (fail) | 451.65ms | 522.78ms | 6.45ms (fail) |
| deepPropagation | 98.17ms | 1.58s | 174.93ms | 1.89s (fail) | 166.78ms | 171.08ms | 145.73ms (fail) |
| diamond | 216.91ms | 2.48s | 279.56ms | 2.51s (fail) | 280.33ms | 351.92ms | 183.07ms (fail) |
| mux | 406.99ms | 1.87s | 400.29ms | 551.89ms (fail) | 402.17ms | 442.68ms | 192.06ms (fail) |
| repeatedObservers | 47.99ms | 235.57ms | 39.45ms | 386.02ms (fail) | 44.78ms | 86.21ms | 53.11ms (fail) |
| triangle | 76.64ms | 775.84ms | 98.45ms | 874.51ms (fail) | 98.27ms | 114.88ms | 76.12ms (fail) |
| unstable | 66.18ms | 354.46ms | 70.44ms | 603.27ms (fail) | 78.81ms | 102.05ms | 337.46ms (fail) |
| molBench | 486.76ms | 586.77ms | 485.23ms | 11.34ms | 486.80ms | 499.96ms | 930μs |
| create_signals | 27.20ms | 71.19ms | 5.26ms | 23.89ms | 25.64ms | 68.44ms | 65.53ms |
| comp_0to1 | 9.49ms | 28.21ms | 17.11ms | 13.73ms | 11.55ms | 33.24ms | 56.70ms |
| comp_1to1 | 24.18ms | 32.82ms | 12.36ms | 27.09ms | 27.21ms | 41.98ms | 62.66ms |
| comp_2to1 | 18.62ms | 25.84ms | 17.42ms | 24.79ms | 10.16ms | 9.89ms | 43.70ms |
| comp_4to1 | 4.04ms | 14.42ms | 18.08ms | 7.25ms | 1.95ms | 15.80ms | 17.19ms |
| comp_1000to1 | 4μs | 23μs | 4μs | 3μs | 6μs | 27μs | 41μs |
| comp_1to2 | 12.32ms | 30.33ms | 26.32ms | 9.76ms | 20.23ms | 30.91ms | 45.48ms |
| comp_1to4 | 24.76ms | 25.02ms | 32.86ms | 23.40ms | 9.26ms | 29.04ms | 46.85ms |
| comp_1to8 | 5.73ms | 28.17ms | 6.54ms | 5.11ms | 6.79ms | 29.99ms | 42.44ms |
| comp_1to1000 | 3.67ms | 15.94ms | 6.42ms | 4.41ms | 4.18ms | 16.73ms | 38.33ms |
| update_1to1 | 4.82ms | 26.61ms | 8.62ms | 85.06ms | 9.07ms | 15.76ms | 5.88ms |
| update_2to1 | 2.50ms | 11.22ms | 4.30ms | 43.29ms | 4.51ms | 7.71ms | 2.94ms |
| update_4to1 | 1.24ms | 6.34ms | 2.14ms | 20.20ms | 2.23ms | 3.85ms | 1.45ms |
| update_1000to1 | 12μs | 71μs | 21μs | 182μs | 22μs | 38μs | 14μs |
| update_1to2 | 2.43ms | 11.42ms | 4.55ms | 42.30ms | 4.51ms | 7.71ms | 2.92ms |
| update_1to4 | 1.24ms | 6.19ms | 2.18ms | 20.07ms | 2.21ms | 3.84ms | 1.47ms |
| update_1to1000 | 51μs | 172μs | 747μs | 122μs | 43μs | 171μs | 386μs |
| cellx1000 | 10.39ms | 75.43ms | 9.60ms | N/A | 9.75ms | 11.36ms | 5.19ms |
| cellx2500 | 35.02ms | 260.99ms | 27.51ms | N/A | 31.76ms | 32.86ms | 24.54ms |
| cellx5000 | 83.65ms | 606.08ms | 102.79ms | N/A | 68.12ms | 77.51ms | 83.11ms |
| 10x5 - 2 sources - read 20.0% (simple) | 213.63ms | 2.04s | 444.87ms | 2.14s | 521.81ms | 369.77ms | 238.16ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 169.14ms | 1.52s | 271.48ms | 1.45s (partial) | 282.99ms | 243.97ms | 199.25ms |
| 1000x12 - 4 sources - dynamic (large) | 313.09ms | 2.05s | 3.69s | 2.48s (partial) | 3.73s | 456.62ms | 343.75ms |
| 1000x5 - 25 sources (wide dense) | 447.24ms | 3.61s | 2.70s | 4.37s | 3.43s | 726.99ms | 497.61ms |
| 5x500 - 3 sources (deep) | 190.80ms | 1.19s | 225.09ms | 1.36s | 223.13ms | 265.64ms | 204.88ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.40ms | 1.77s | 450.05ms | 1.73s (partial) | 477.60ms | 381.71ms | 258.19ms |

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
