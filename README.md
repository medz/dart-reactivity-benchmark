# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.85s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.21s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.22s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.61s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.73s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.27s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.84ms | 2.33s | 198.82ms | 1.42s | 206.77ms | 262.17ms | 166.01ms (fail) |
| broadPropagation | 323.05ms | 4.45s | 448.93ms | 89.66ms (fail) | 459.60ms | 456.07ms | 7.16ms (fail) |
| deepPropagation | 95.45ms | 1.56s | 176.14ms | 2.08s (fail) | 178.64ms | 143.55ms | 142.30ms (fail) |
| diamond | 218.83ms | 2.41s | 279.13ms | 2.90s (fail) | 280.30ms | 314.72ms | 198.63ms (fail) |
| mux | 343.88ms | 1.81s | 404.65ms | 568.19ms (fail) | 446.04ms | 409.47ms | 193.63ms (fail) |
| repeatedObservers | 50.48ms | 234.86ms | 39.66ms | 384.10ms (fail) | 44.62ms | 89.81ms | 54.72ms (fail) |
| triangle | 73.03ms | 756.52ms | 97.86ms | 934.80ms (fail) | 100.75ms | 95.83ms | 78.71ms (fail) |
| unstable | 137.22ms | 353.78ms | 70.18ms | 627.26ms (fail) | 78.98ms | 172.98ms | 339.66ms (fail) |
| molBench | 493.81ms | 572.80ms | 483.11ms | 11.96ms | 486.92ms | 494.19ms | 992μs |
| create_signals | 26.54ms | 79.41ms | 4.56ms | 24.40ms | 25.09ms | 56.62ms | 63.87ms |
| comp_0to1 | 12.63ms | 21.95ms | 17.28ms | 14.97ms | 11.21ms | 24.56ms | 53.12ms |
| comp_1to1 | 18.38ms | 25.07ms | 14.52ms | 25.06ms | 28.38ms | 41.86ms | 53.88ms |
| comp_2to1 | 19.62ms | 12.28ms | 16.78ms | 25.76ms | 7.50ms | 10.59ms | 36.09ms |
| comp_4to1 | 4.12ms | 27.46ms | 11.12ms | 7.04ms | 1.92ms | 12.92ms | 16.47ms |
| comp_1000to1 | 3μs | 17μs | 5μs | 3μs | 5μs | 14μs | 41μs |
| comp_1to2 | 13.58ms | 35.40ms | 14.88ms | 11.42ms | 18.59ms | 34.52ms | 46.38ms |
| comp_1to4 | 15.85ms | 24.39ms | 20.11ms | 25.48ms | 10.28ms | 20.11ms | 43.15ms |
| comp_1to8 | 5.22ms | 22.30ms | 6.57ms | 8.51ms | 6.21ms | 21.55ms | 43.59ms |
| comp_1to1000 | 3.72ms | 16.49ms | 5.60ms | 4.43ms | 4.23ms | 14.91ms | 38.35ms |
| update_1to1 | 5.54ms | 26.99ms | 8.72ms | 86.82ms | 8.97ms | 16.58ms | 5.67ms |
| update_2to1 | 2.79ms | 13.31ms | 4.28ms | 44.35ms | 4.46ms | 8.26ms | 2.83ms |
| update_4to1 | 1.47ms | 7.19ms | 2.19ms | 20.97ms | 2.29ms | 4.16ms | 1.44ms |
| update_1000to1 | 25μs | 69μs | 22μs | 184μs | 22μs | 40μs | 15μs |
| update_1to2 | 2.77ms | 12.60ms | 4.70ms | 43.67ms | 4.49ms | 8.43ms | 2.85ms |
| update_1to4 | 2.53ms | 6.90ms | 2.20ms | 21.79ms | 2.25ms | 4.13ms | 1.46ms |
| update_1to1000 | 72μs | 172μs | 389μs | 118μs | 43μs | 144μs | 386μs |
| cellx1000 | 7.56ms | 71.31ms | 9.60ms | N/A | 9.64ms | 10.84ms | 8.38ms |
| cellx2500 | 19.50ms | 280.25ms | 26.20ms | N/A | 30.93ms | 33.90ms | 28.71ms |
| cellx5000 | 59.98ms | 582.62ms | 69.53ms | N/A | 67.51ms | 96.16ms | 91.27ms |
| 10x5 - 2 sources - read 20.0% (simple) | 237.34ms | 2.01s | 436.19ms | 2.30s | 518.99ms | 322.74ms | 248.31ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 186.94ms | 1.58s | 267.92ms | 1.50s (partial) | 282.81ms | 223.49ms | 210.31ms |
| 1000x12 - 4 sources - dynamic (large) | 338.00ms | 1.93s | 3.69s | 2.64s (partial) | 4.01s | 440.61ms | 345.60ms |
| 1000x5 - 25 sources (wide dense) | 492.08ms | 3.58s | 2.71s | 4.26s | 3.56s | 803.65ms | 498.55ms |
| 5x500 - 3 sources (deep) | 195.53ms | 1.18s | 229.26ms | 1.41s | 223.64ms | 227.32ms | 206.74ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 285.91ms | 1.71s | 447.27ms | 1.77s (partial) | 483.89ms | 337.47ms | 264.61ms |

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
