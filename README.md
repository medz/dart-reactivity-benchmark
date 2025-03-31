# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.27s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.96s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.41s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.46s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.52s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.86ms | 2.33s | 203.80ms | 1.25s | 1.41s | 211.04ms | 275.55ms | 153.56ms (fail) |
| broadPropagation | 355.67ms | 4.25s | 462.53ms | 4.99s | 82.63ms (fail) | 452.09ms | 503.72ms | 5.91ms (fail) |
| deepPropagation | 123.97ms | 1.51s | 178.17ms | 4.00s | 1.92s (fail) | 172.57ms | 173.09ms | 141.05ms (fail) |
| diamond | 237.17ms | 2.41s | 283.14ms | 14.03s (fail) | 2.58s (fail) | 291.35ms | 349.71ms | 186.24ms (fail) |
| mux | 372.96ms | 1.83s | 379.92ms | 1.02s | 586.10ms (fail) | 418.43ms | 434.65ms | 191.38ms (fail) |
| repeatedObservers | 44.86ms | 229.67ms | 38.89ms | 9.74s | 387.60ms (fail) | 46.77ms | 78.56ms | 52.21ms (fail) |
| triangle | 84.33ms | 774.35ms | 99.19ms | 4.52s | 932.98ms (fail) | 104.79ms | 118.95ms | 76.54ms (fail) |
| unstable | 59.18ms | 347.61ms | 70.75ms | 7.64s | 609.63ms (fail) | 75.61ms | 93.67ms | 336.47ms (fail) |
| molBench | 491.63ms | 578.72ms | 491.98ms | 5.90s | 11.66ms | 488.40ms | 493.35ms | 1.00ms |
| create_signals | 27.38ms | 80.26ms | 4.65ms | 13.34ms | 23.78ms | 25.76ms | 74.94ms | 62.84ms |
| comp_0to1 | 7.44ms | 26.51ms | 17.58ms | 13.68ms | 13.84ms | 12.30ms | 27.29ms | 53.13ms |
| comp_1to1 | 4.07ms | 41.28ms | 14.08ms | 99.56ms | 20.80ms | 27.51ms | 28.05ms | 56.09ms |
| comp_2to1 | 2.20ms | 25.45ms | 15.43ms | 72.37ms | 31.76ms | 11.51ms | 42.14ms | 43.73ms |
| comp_4to1 | 8.14ms | 24.63ms | 15.06ms | 85.23ms | 11.39ms | 3.70ms | 4.81ms | 18.61ms |
| comp_1000to1 | 3μs | 15μs | 4μs | 59.32ms | 6μs | 6μs | 14μs | 42μs |
| comp_1to2 | 11.16ms | 34.31ms | 17.32ms | 66.89ms | 13.06ms | 20.65ms | 34.41ms | 46.35ms |
| comp_1to4 | 12.42ms | 17.12ms | 34.48ms | 99.18ms | 26.39ms | 9.80ms | 21.28ms | 48.09ms |
| comp_1to8 | 4.11ms | 19.46ms | 6.55ms | 116.37ms | 6.68ms | 6.79ms | 21.74ms | 43.53ms |
| comp_1to1000 | 3.28ms | 14.92ms | 6.88ms | 47.90ms | 5.78ms | 4.52ms | 15.35ms | 38.66ms |
| update_1to1 | 11.26ms | 22.18ms | 8.22ms | N/A | 83.64ms | 9.25ms | 16.27ms | 5.73ms |
| update_2to1 | 4.90ms | 10.83ms | 4.06ms | N/A | 41.73ms | 4.60ms | 7.96ms | 3.48ms |
| update_4to1 | 2.74ms | 6.00ms | 2.08ms | N/A | 20.47ms | 2.34ms | 4.08ms | 1.51ms |
| update_1000to1 | 13μs | 82μs | 20μs | N/A | 185μs | 23μs | 41μs | 15μs |
| update_1to2 | 5.57ms | 11.62ms | 4.08ms | N/A | 44.09ms | 4.89ms | 8.08ms | 2.96ms |
| update_1to4 | 2.45ms | 5.23ms | 2.08ms | N/A | 20.95ms | 2.33ms | 4.05ms | 1.54ms |
| update_1to1000 | 49μs | 162μs | 766μs | N/A | 140μs | 44μs | 153μs | 391μs |
| cellx1000 | 7.39ms | 73.59ms | 9.62ms | N/A | N/A | 9.77ms | 11.57ms | 5.31ms |
| cellx2500 | 19.85ms | 261.19ms | 26.29ms | N/A | N/A | 33.78ms | 38.48ms | 27.06ms |
| cellx5000 | 44.95ms | 594.03ms | 71.40ms | N/A | N/A | 71.41ms | 87.17ms | 85.52ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.88ms | 2.01s | 442.88ms | N/A | 2.28s | 510.30ms | 350.04ms | 242.13ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.14ms | 1.55s | 280.86ms | N/A | 1.49s (partial) | 285.64ms | 244.04ms | 201.69ms |
| 1000x12 - 4 sources - dynamic (large) | 282.45ms | 1.85s | 3.50s | N/A | 2.50s (partial) | 3.96s | 474.73ms | 348.27ms |
| 1000x5 - 25 sources (wide dense) | 417.67ms | 3.59s | 2.59s | N/A | 4.14s | 3.42s | 588.73ms | 512.18ms |
| 5x500 - 3 sources (deep) | 192.02ms | 1.15s | 228.29ms | N/A | 1.42s | 225.50ms | 255.18ms | 204.79ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.28ms | 1.73s | 445.06ms | N/A | 1.82s (partial) | 484.63ms | 385.48ms | 257.19ms |

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
