# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.86s |
| 🥈 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.42s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.37s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.05s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.20s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.02s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.49s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.59s |
| [solidart(v1)](https://github.com/nank1ro/solidart) | 82.9% | 29/35 | 39.34s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals(v0.3)](https://github.com/medz/alien-signals-dart) | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [solidart(v1)](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.62ms | 164.79ms | 2.41s | 205.63ms | 1.55s | 206.96ms | 270.82ms | 2.18s | 171.26ms (fail) |
| broadPropagation | 378.97ms | 324.20ms | 4.35s | 469.43ms | 85.96ms (fail) | 462.66ms | 497.15ms | 5.41s | 6.60ms (fail) |
| deepPropagation | 128.18ms | 96.46ms | 1.54s | 178.22ms | 2.05s (fail) | 179.81ms | 167.24ms | 2.04s | 156.71ms (fail) |
| diamond | 235.86ms | 209.27ms | 2.46s | 283.96ms | 2.87s (fail) | 286.73ms | 347.57ms | 3.45s | 191.89ms (fail) |
| mux | 382.58ms | 342.61ms | 1.87s | 385.89ms | 575.68ms (fail) | 417.65ms | 439.65ms | 2.00s | 197.03ms (fail) |
| repeatedObservers | 47.95ms | 51.02ms | 247.68ms | 38.10ms | 403.57ms (fail) | 46.00ms | 80.72ms | 218.15ms | 53.04ms (fail) |
| triangle | 88.64ms | 74.50ms | 776.11ms | 99.59ms | 1.02s (fail) | 103.78ms | 116.21ms | 1.15s | 84.93ms (fail) |
| unstable | 62.97ms | 68.44ms | 358.04ms | 69.96ms | 646.18ms (fail) | 71.91ms | 93.56ms | 351.77ms | 340.74ms (fail) |
| molBench | 482.30ms | 480.81ms | 583.41ms | 491.94ms | 11.73ms | 488.09ms | 493.35ms | 1.71s | 1.01ms |
| create_signals | 7.57ms | 26.36ms | 65.12ms | 4.60ms | 24.07ms | 26.85ms | 75.36ms | 82.56ms | 58.44ms |
| comp_0to1 | 20.18ms | 9.49ms | 14.76ms | 17.58ms | 17.19ms | 12.51ms | 27.16ms | 40.42ms | 55.54ms |
| comp_1to1 | 12.07ms | 24.36ms | 44.59ms | 11.62ms | 22.26ms | 26.38ms | 49.09ms | 44.34ms | 58.66ms |
| comp_2to1 | 14.34ms | 16.09ms | 34.33ms | 17.14ms | 23.33ms | 14.52ms | 25.35ms | 25.50ms | 41.42ms |
| comp_4to1 | 1.68ms | 3.65ms | 14.44ms | 12.26ms | 6.61ms | 1.99ms | 10.03ms | 28.66ms | 17.91ms |
| comp_1000to1 | 4μs | 6μs | 20μs | 5μs | 6μs | 5μs | 15μs | 2.65ms | 43μs |
| comp_1to2 | 12.90ms | 13.89ms | 29.80ms | 26.70ms | 13.48ms | 19.68ms | 32.96ms | 31.05ms | 46.95ms |
| comp_1to4 | 9.47ms | 23.30ms | 23.73ms | 25.17ms | 22.68ms | 12.66ms | 23.06ms | 28.50ms | 49.60ms |
| comp_1to8 | 4.44ms | 4.69ms | 23.12ms | 6.04ms | 4.92ms | 6.64ms | 24.08ms | 24.09ms | 43.96ms |
| comp_1to1000 | 3.27ms | 3.28ms | 14.69ms | 6.45ms | 3.87ms | 4.48ms | 15.26ms | 19.29ms | 37.77ms |
| update_1to1 | 5.01ms | 6.86ms | 23.04ms | 8.29ms | 85.04ms | 9.32ms | 16.20ms | 42.22ms | 5.74ms |
| update_2to1 | 2.38ms | 2.78ms | 11.06ms | 4.08ms | 44.62ms | 4.58ms | 7.92ms | 20.94ms | 3.18ms |
| update_4to1 | 1.31ms | 1.45ms | 6.32ms | 2.09ms | 21.49ms | 2.54ms | 4.06ms | 10.51ms | 1.44ms |
| update_1000to1 | 21μs | 14μs | 65μs | 20μs | 198μs | 23μs | 40μs | 129μs | 15μs |
| update_1to2 | 2.98ms | 2.81ms | 10.69ms | 4.11ms | 45.18ms | 4.97ms | 8.12ms | 20.91ms | 2.95ms |
| update_1to4 | 1.28ms | 1.45ms | 6.08ms | 2.11ms | 21.64ms | 2.35ms | 4.08ms | 10.57ms | 1.45ms |
| update_1to1000 | 49μs | 32μs | 164μs | 888μs | 143μs | 44μs | 153μs | 203μs | 370μs |
| cellx1000 | 7.59ms | 28.52ms | 78.32ms | 10.36ms | N/A | 10.35ms | 14.07ms | 152.35ms | 5.28ms |
| cellx2500 | 28.06ms | 139.67ms | 286.04ms | 37.27ms | N/A | 38.56ms | 49.39ms | 458.22ms | 27.51ms |
| cellx5000 | 57.87ms | 418.86ms | 598.41ms | 97.40ms | N/A | 86.47ms | 154.69ms | 1.08s | 85.22ms |
| 10x5 - 2 sources - read 20.0% (simple) | 244.94ms | 228.95ms | 2.03s | 450.09ms | 2.50s | 504.69ms | 355.14ms | 2.58s (partial) | 242.77ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.72ms | 181.85ms | 1.59s | 275.30ms | 1.65s (partial) | 277.38ms | 243.22ms | 2.40s (partial) | 198.22ms |
| 1000x12 - 4 sources - dynamic (large) | 313.66ms | 368.28ms | 1.95s | 3.54s | 2.79s (partial) | 3.77s | 478.25ms | 3.97s (partial) | 346.81ms |
| 1000x5 - 25 sources (wide dense) | 465.16ms | 628.98ms | 3.62s | 2.59s | 4.56s | 3.40s | 602.93ms | 5.03s (partial) | 494.25ms |
| 5x500 - 3 sources (deep) | 207.41ms | 193.06ms | 1.20s | 229.92ms | 1.59s | 225.89ms | 254.51ms | 1.98s (partial) | 205.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.05ms | 277.84ms | 1.74s | 449.07ms | 1.94s (partial) | 472.76ms | 384.18ms | 2.74s (partial) | 257.35ms |

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
