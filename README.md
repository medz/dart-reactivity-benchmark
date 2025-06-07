# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.88s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.46s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.41s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.36s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.42s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.04s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.36s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 40.58s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 176.42ms | 161.65ms | 2.36s | 198.33ms | 1.48s | 204.73ms | 270.96ms | 2.24s | 170.92ms (fail) |
| broadPropagation | 378.05ms | 328.24ms | 4.48s | 450.83ms | 87.06ms (fail) | 455.35ms | 503.46ms | 5.68s | 6.33ms (fail) |
| deepPropagation | 127.72ms | 101.01ms | 1.56s | 177.28ms | 2.06s (fail) | 167.47ms | 163.58ms | 2.07s | 143.29ms (fail) |
| diamond | 236.92ms | 225.06ms | 2.43s | 279.57ms | 2.80s (fail) | 280.66ms | 350.34ms | 3.54s | 181.30ms (fail) |
| mux | 387.27ms | 341.94ms | 1.83s | 404.47ms | 565.73ms (fail) | 412.46ms | 446.69ms | 2.05s | 193.14ms (fail) |
| repeatedObservers | 47.17ms | 52.48ms | 233.50ms | 39.69ms | 384.73ms (fail) | 44.59ms | 80.71ms | 223.39ms | 55.37ms (fail) |
| triangle | 89.47ms | 79.73ms | 755.40ms | 99.13ms | 991.12ms (fail) | 103.73ms | 117.93ms | 1.22s | 75.70ms (fail) |
| unstable | 62.11ms | 71.84ms | 356.19ms | 72.37ms | 646.84ms (fail) | 79.32ms | 97.61ms | 359.79ms | 336.05ms (fail) |
| molBench | 496.25ms | 488.41ms | 578.01ms | 489.30ms | 10.87ms | 486.12ms | 492.23ms | 1.72s | 964μs |
| create_signals | 7.15ms | 24.75ms | 54.42ms | 5.21ms | 23.47ms | 26.24ms | 98.53ms | 57.00ms | 60.98ms |
| comp_0to1 | 21.70ms | 12.13ms | 16.30ms | 17.36ms | 13.64ms | 11.89ms | 39.13ms | 22.15ms | 54.27ms |
| comp_1to1 | 20.36ms | 18.76ms | 42.49ms | 12.39ms | 23.57ms | 22.12ms | 53.50ms | 39.91ms | 57.14ms |
| comp_2to1 | 19.76ms | 13.51ms | 35.80ms | 17.25ms | 24.76ms | 23.25ms | 45.86ms | 31.89ms | 37.07ms |
| comp_4to1 | 1.81ms | 6.51ms | 14.24ms | 12.05ms | 4.42ms | 6.69ms | 20.04ms | 23.99ms | 16.50ms |
| comp_1000to1 | 3μs | 4μs | 21μs | 10μs | 6μs | 4μs | 17μs | 3.05ms | 43μs |
| comp_1to2 | 9.93ms | 14.10ms | 32.96ms | 30.86ms | 12.86ms | 16.36ms | 38.94ms | 30.31ms | 45.71ms |
| comp_1to4 | 5.68ms | 16.68ms | 45.22ms | 34.90ms | 24.14ms | 14.21ms | 22.14ms | 27.66ms | 45.01ms |
| comp_1to8 | 8.35ms | 9.62ms | 21.61ms | 7.52ms | 5.00ms | 11.32ms | 26.17ms | 23.70ms | 43.86ms |
| comp_1to1000 | 3.52ms | 5.67ms | 15.70ms | 6.21ms | 4.27ms | 4.20ms | 17.08ms | 17.95ms | 39.52ms |
| update_1to1 | 4.51ms | 5.41ms | 23.61ms | 8.60ms | 82.55ms | 9.10ms | 16.02ms | 43.72ms | 5.71ms |
| update_2to1 | 2.31ms | 2.86ms | 11.05ms | 4.28ms | 41.46ms | 4.47ms | 7.90ms | 21.53ms | 2.82ms |
| update_4to1 | 1.16ms | 1.44ms | 6.80ms | 2.16ms | 19.61ms | 2.25ms | 4.02ms | 10.84ms | 1.44ms |
| update_1000to1 | 11μs | 24μs | 69μs | 21μs | 197μs | 22μs | 40μs | 120μs | 15μs |
| update_1to2 | 2.33ms | 2.97ms | 13.04ms | 4.65ms | 40.85ms | 4.47ms | 8.09ms | 21.22ms | 2.85ms |
| update_1to4 | 1.19ms | 1.48ms | 7.13ms | 2.17ms | 20.05ms | 2.22ms | 4.00ms | 10.85ms | 1.44ms |
| update_1to1000 | 39μs | 59μs | 173μs | 778μs | 121μs | 43μs | 182μs | 212μs | 389μs |
| cellx1000 | 8.15ms | 29.77ms | 96.42ms | 9.99ms | N/A | 10.83ms | 13.58ms | 168.39ms | 5.72ms |
| cellx2500 | 28.18ms | 131.69ms | 254.92ms | 28.48ms | N/A | 36.59ms | 43.65ms | 491.91ms | 29.04ms |
| cellx5000 | 70.58ms | 421.68ms | 598.86ms | 87.31ms | N/A | 72.01ms | 148.61ms | 1.18s | 73.72ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.03ms | 232.15ms | 2.04s | 478.00ms | 2.42s | 512.87ms | 352.25ms | 2.73s (partial) | 235.26ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.57ms | 181.93ms | 1.55s | 283.81ms | 1.53s (partial) | 279.08ms | 241.80ms | 2.43s (partial) | 197.55ms |
| 1000x12 - 4 sources - dynamic (large) | 312.88ms | 370.41ms | 1.95s | 3.70s | 2.62s (partial) | 3.79s | 467.66ms | 4.12s (partial) | 354.70ms |
| 1000x5 - 25 sources (wide dense) | 461.72ms | 619.87ms | 3.73s | 2.69s | 4.19s | 3.62s | 586.51ms | 5.08s (partial) | 500.41ms |
| 5x500 - 3 sources (deep) | 206.52ms | 201.59ms | 1.16s | 227.31ms | 1.46s | 226.06ms | 251.59ms | 2.05s (partial) | 203.79ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 266.32ms | 285.89ms | 1.73s | 473.84ms | 1.79s (partial) | 479.49ms | 380.22ms | 2.84s (partial) | 259.51ms |

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
