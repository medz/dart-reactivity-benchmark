# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.84s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.40s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.40s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.03s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.26s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.66s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.39s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.23s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.40s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.83ms | 155.48ms | 2.29s | 205.93ms | 1.46s | 208.96ms | 278.02ms | 2.19s | 162.26ms (fail) |
| broadPropagation | 378.42ms | 326.17ms | 4.26s | 463.21ms | 87.14ms (fail) | 449.84ms | 509.64ms | 5.39s | 5.84ms (fail) |
| deepPropagation | 125.75ms | 96.52ms | 1.52s | 180.01ms | 1.97s (fail) | 182.34ms | 167.90ms | 2.02s | 141.68ms (fail) |
| diamond | 235.97ms | 209.21ms | 2.40s | 285.32ms | 2.66s (fail) | 289.67ms | 355.82ms | 3.48s | 187.90ms (fail) |
| mux | 378.10ms | 348.15ms | 1.84s | 394.65ms | 587.16ms (fail) | 412.29ms | 441.91ms | 2.01s | 195.28ms (fail) |
| repeatedObservers | 47.91ms | 51.23ms | 223.77ms | 39.01ms | 410.78ms (fail) | 46.33ms | 78.36ms | 220.80ms | 52.93ms (fail) |
| triangle | 86.20ms | 75.35ms | 762.28ms | 104.28ms | 960.41ms (fail) | 103.37ms | 128.13ms | 1.14s | 78.21ms (fail) |
| unstable | 62.12ms | 69.65ms | 347.47ms | 70.92ms | 630.68ms (fail) | 75.36ms | 94.09ms | 351.32ms | 337.79ms (fail) |
| molBench | 483.15ms | 482.11ms | 578.64ms | 493.99ms | 12.26ms | 488.54ms | 493.08ms | 1.71s | 952μs |
| create_signals | 7.58ms | 25.68ms | 89.37ms | 6.13ms | 24.58ms | 26.49ms | 93.49ms | 73.78ms | 58.13ms |
| comp_0to1 | 21.36ms | 9.76ms | 21.52ms | 17.72ms | 13.88ms | 12.19ms | 36.06ms | 37.10ms | 51.36ms |
| comp_1to1 | 11.54ms | 19.14ms | 48.43ms | 11.52ms | 21.90ms | 28.22ms | 46.92ms | 31.27ms | 52.30ms |
| comp_2to1 | 14.34ms | 8.82ms | 37.22ms | 10.81ms | 24.03ms | 19.07ms | 37.30ms | 26.85ms | 36.07ms |
| comp_4to1 | 1.57ms | 1.71ms | 17.66ms | 12.06ms | 6.12ms | 5.37ms | 13.26ms | 16.82ms | 15.71ms |
| comp_1000to1 | 4μs | 6μs | 27μs | 5μs | 4μs | 9μs | 15μs | 3.54ms | 39μs |
| comp_1to2 | 12.27ms | 11.88ms | 35.97ms | 25.66ms | 13.37ms | 22.23ms | 27.95ms | 27.27ms | 43.62ms |
| comp_1to4 | 7.82ms | 18.11ms | 19.03ms | 26.08ms | 24.06ms | 7.78ms | 21.34ms | 28.06ms | 42.20ms |
| comp_1to8 | 4.72ms | 4.95ms | 23.84ms | 10.70ms | 5.17ms | 6.97ms | 21.42ms | 25.35ms | 41.91ms |
| comp_1to1000 | 3.34ms | 3.28ms | 15.40ms | 7.65ms | 4.24ms | 5.04ms | 15.39ms | 18.01ms | 36.85ms |
| update_1to1 | 4.93ms | 5.65ms | 23.07ms | 8.23ms | 84.02ms | 9.22ms | 16.22ms | 43.17ms | 5.75ms |
| update_2to1 | 2.40ms | 2.81ms | 10.51ms | 4.06ms | 42.86ms | 4.62ms | 8.04ms | 21.37ms | 2.89ms |
| update_4to1 | 1.21ms | 1.44ms | 6.06ms | 2.04ms | 20.68ms | 2.33ms | 4.11ms | 10.76ms | 1.47ms |
| update_1000to1 | 21μs | 16μs | 74μs | 20μs | 217μs | 24μs | 40μs | 117μs | 15μs |
| update_1to2 | 2.85ms | 2.81ms | 11.39ms | 4.15ms | 42.69ms | 4.84ms | 8.19ms | 21.07ms | 2.93ms |
| update_1to4 | 1.20ms | 1.44ms | 5.34ms | 2.04ms | 21.02ms | 2.32ms | 4.06ms | 10.88ms | 1.46ms |
| update_1to1000 | 29μs | 40μs | 177μs | 227μs | 120μs | 43μs | 147μs | 201μs | 366μs |
| cellx1000 | 7.50ms | 32.93ms | 91.12ms | 9.99ms | N/A | 9.80ms | 12.94ms | 154.67ms | 5.25ms |
| cellx2500 | 26.26ms | 131.45ms | 303.53ms | 31.43ms | N/A | 35.87ms | 61.65ms | 471.87ms | 28.31ms |
| cellx5000 | 56.70ms | 436.15ms | 646.46ms | 81.58ms | N/A | 74.90ms | 101.92ms | 1.12s | 57.03ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.57ms | 228.75ms | 2.01s | 439.29ms | 2.35s | 508.78ms | 359.19ms | 2.64s (partial) | 238.19ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 183.36ms | 181.88ms | 1.53s | 268.56ms | 1.56s (partial) | 276.42ms | 244.27ms | 2.42s (partial) | 203.54ms |
| 1000x12 - 4 sources - dynamic (large) | 315.58ms | 364.81ms | 1.95s | 3.53s | 2.61s (partial) | 3.76s | 472.58ms | 3.95s (partial) | 341.87ms |
| 1000x5 - 25 sources (wide dense) | 455.00ms | 616.09ms | 3.59s | 2.60s | 4.28s | 3.46s | 604.59ms | 5.02s (partial) | 502.57ms |
| 5x500 - 3 sources (deep) | 214.12ms | 196.10ms | 1.22s | 233.24ms | 1.45s | 230.24ms | 255.72ms | 1.95s (partial) | 204.52ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 263.16ms | 280.75ms | 1.73s | 451.97ms | 1.85s (partial) | 490.66ms | 388.75ms | 2.75s (partial) | 257.22ms |

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
