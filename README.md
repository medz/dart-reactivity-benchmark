# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.90s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.59s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.32s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.65s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.99s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.72s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 213.77ms | 2.35s | 200.49ms | 1.37s | 208.50ms | 292.50ms | 166.27ms (fail) |
| broadPropagation | 393.15ms | 4.55s | 457.68ms | 79.40ms (fail) | 463.78ms | 526.15ms | 6.48ms (fail) |
| deepPropagation | 97.59ms | 1.56s | 177.39ms | 1.87s (fail) | 172.54ms | 168.88ms | 140.66ms (fail) |
| diamond | 227.01ms | 2.47s | 279.15ms | 2.52s (fail) | 279.43ms | 356.41ms | 188.95ms (fail) |
| mux | 401.49ms | 1.83s | 402.45ms | 586.72ms (fail) | 409.13ms | 445.60ms | 204.73ms (fail) |
| repeatedObservers | 48.01ms | 233.56ms | 40.00ms | 393.97ms (fail) | 44.84ms | 86.86ms | 53.74ms (fail) |
| triangle | 80.86ms | 812.49ms | 97.18ms | 967.82ms (fail) | 100.02ms | 129.40ms | 81.05ms (fail) |
| unstable | 71.40ms | 355.92ms | 70.41ms | 635.19ms (fail) | 79.69ms | 102.50ms | 339.87ms (fail) |
| molBench | 484.39ms | 574.75ms | 483.67ms | 13.07ms | 485.73ms | 503.04ms | 1.25ms |
| create_signals | 25.23ms | 91.63ms | 5.23ms | 26.98ms | 26.28ms | 68.45ms | 62.48ms |
| comp_0to1 | 11.75ms | 24.11ms | 17.61ms | 14.73ms | 10.75ms | 33.73ms | 55.73ms |
| comp_1to1 | 18.48ms | 53.81ms | 12.51ms | 21.79ms | 28.83ms | 41.85ms | 57.31ms |
| comp_2to1 | 12.66ms | 30.94ms | 17.45ms | 25.52ms | 9.81ms | 13.52ms | 37.44ms |
| comp_4to1 | 5.15ms | 17.58ms | 12.51ms | 3.04ms | 2.10ms | 21.87ms | 16.75ms |
| comp_1000to1 | 3μs | 21μs | 6μs | 12μs | 4μs | 25μs | 46μs |
| comp_1to2 | 14.14ms | 36.65ms | 15.76ms | 13.61ms | 19.53ms | 30.12ms | 46.14ms |
| comp_1to4 | 15.90ms | 20.16ms | 26.52ms | 22.70ms | 7.38ms | 33.02ms | 46.85ms |
| comp_1to8 | 9.54ms | 24.41ms | 6.81ms | 4.89ms | 6.38ms | 18.27ms | 44.41ms |
| comp_1to1000 | 5.53ms | 16.32ms | 4.74ms | 4.04ms | 4.21ms | 16.01ms | 39.66ms |
| update_1to1 | 5.11ms | 26.56ms | 8.56ms | 83.72ms | 8.89ms | 15.60ms | 5.66ms |
| update_2to1 | 2.63ms | 11.44ms | 4.23ms | 43.68ms | 4.51ms | 7.70ms | 2.87ms |
| update_4to1 | 1.29ms | 7.10ms | 2.21ms | 20.86ms | 2.34ms | 3.84ms | 1.46ms |
| update_1000to1 | 12μs | 68μs | 21μs | 172μs | 22μs | 38μs | 14μs |
| update_1to2 | 3.00ms | 10.96ms | 4.62ms | 45.12ms | 4.48ms | 7.67ms | 2.89ms |
| update_1to4 | 1.29ms | 7.11ms | 2.18ms | 21.08ms | 2.25ms | 3.84ms | 1.48ms |
| update_1to1000 | 50μs | 202μs | 168μs | 108μs | 42μs | 174μs | 383μs |
| cellx1000 | 10.95ms | 75.66ms | 10.96ms | N/A | 10.88ms | 13.81ms | 5.41ms |
| cellx2500 | 43.19ms | 271.41ms | 35.53ms | N/A | 45.42ms | 49.75ms | 30.41ms |
| cellx5000 | 98.12ms | 603.66ms | 88.04ms | N/A | 102.19ms | 156.14ms | 71.31ms |
| 10x5 - 2 sources - read 20.0% (simple) | 216.99ms | 2.01s | 436.97ms | 2.18s | 507.45ms | 354.43ms | 243.97ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 173.73ms | 1.54s | 272.21ms | 1.48s (partial) | 278.55ms | 244.72ms | 199.75ms |
| 1000x12 - 4 sources - dynamic (large) | 313.02ms | 1.84s | 3.70s | 2.53s (partial) | 4.02s | 468.51ms | 347.06ms |
| 1000x5 - 25 sources (wide dense) | 447.60ms | 3.54s | 2.74s | 4.42s | 3.58s | 726.17ms | 502.95ms |
| 5x500 - 3 sources (deep) | 192.88ms | 1.23s | 228.30ms | 1.53s | 227.32ms | 264.42ms | 203.40ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 258.23ms | 1.75s | 454.76ms | 1.81s (partial) | 488.29ms | 381.18ms | 258.97ms |

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
