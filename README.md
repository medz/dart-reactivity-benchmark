# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.71s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.97s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.02s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.41s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.78s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 184.84ms | 2.32s | 206.15ms | 1.25s | 1.42s | 206.92ms | 279.18ms | 149.00ms (fail) |
| broadPropagation | 354.00ms | 4.28s | 457.11ms | 4.99s | 81.74ms (fail) | 450.90ms | 524.93ms | 6.49ms (fail) |
| deepPropagation | 125.42ms | 1.53s | 177.39ms | 4.00s | 1.91s (fail) | 174.34ms | 178.26ms | 152.80ms (fail) |
| diamond | 235.40ms | 2.41s | 284.93ms | 14.03s (fail) | 2.61s (fail) | 296.01ms | 367.55ms | 180.97ms (fail) |
| mux | 373.92ms | 1.86s | 389.20ms | 1.02s | 630.79ms (fail) | 410.31ms | 444.97ms | 194.07ms (fail) |
| repeatedObservers | 44.75ms | 225.93ms | 38.51ms | 9.74s | 425.21ms (fail) | 46.63ms | 78.08ms | 53.18ms (fail) |
| triangle | 84.61ms | 776.80ms | 99.49ms | 4.52s | 926.38ms (fail) | 102.62ms | 119.71ms | 76.93ms (fail) |
| unstable | 60.82ms | 350.60ms | 70.68ms | 7.64s | 618.07ms (fail) | 73.50ms | 93.87ms | 336.74ms (fail) |
| molBench | 487.06ms | 585.53ms | 490.88ms | 5.90s | 11.32ms | 486.88ms | 493.73ms | 864μs |
| create_signals | 26.92ms | 87.79ms | 4.70ms | 13.34ms | 23.05ms | 24.53ms | 67.87ms | 64.69ms |
| comp_0to1 | 6.96ms | 26.98ms | 17.70ms | 13.68ms | 13.19ms | 11.52ms | 29.10ms | 53.10ms |
| comp_1to1 | 4.09ms | 30.66ms | 12.22ms | 99.56ms | 20.50ms | 26.02ms | 42.59ms | 56.59ms |
| comp_2to1 | 2.24ms | 34.27ms | 16.48ms | 72.37ms | 23.23ms | 10.40ms | 21.45ms | 38.72ms |
| comp_4to1 | 10.93ms | 26.73ms | 12.00ms | 85.23ms | 6.57ms | 6.66ms | 9.79ms | 16.43ms |
| comp_1000to1 | 5μs | 27μs | 4μs | 59.32ms | 3μs | 5μs | 29μs | 41μs |
| comp_1to2 | 15.06ms | 33.36ms | 31.53ms | 66.89ms | 11.21ms | 17.27ms | 29.31ms | 47.05ms |
| comp_1to4 | 5.29ms | 17.20ms | 19.69ms | 99.18ms | 24.42ms | 14.34ms | 23.39ms | 46.45ms |
| comp_1to8 | 4.45ms | 19.36ms | 10.41ms | 116.37ms | 5.56ms | 6.82ms | 26.01ms | 43.40ms |
| comp_1to1000 | 3.29ms | 14.51ms | 4.33ms | 47.90ms | 3.92ms | 4.50ms | 14.24ms | 38.23ms |
| update_1to1 | 11.14ms | 22.54ms | 8.29ms | N/A | 82.00ms | 9.31ms | 16.06ms | 5.75ms |
| update_2to1 | 5.22ms | 10.88ms | 4.10ms | N/A | 42.26ms | 4.63ms | 8.03ms | 2.88ms |
| update_4to1 | 2.79ms | 6.38ms | 2.09ms | N/A | 20.35ms | 2.33ms | 4.03ms | 1.49ms |
| update_1000to1 | 10μs | 68μs | 20μs | N/A | 214μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.65ms | 11.63ms | 4.09ms | N/A | 41.53ms | 4.82ms | 7.91ms | 2.93ms |
| update_1to4 | 2.46ms | 5.48ms | 2.09ms | N/A | 20.25ms | 2.35ms | 4.06ms | 1.48ms |
| update_1to1000 | 46μs | 171μs | 63μs | N/A | 152μs | 43μs | 152μs | 383μs |
| cellx1000 | 7.28ms | 72.77ms | 12.01ms | N/A | N/A | 9.42ms | 11.00ms | 5.13ms |
| cellx2500 | 19.07ms | 239.52ms | 25.39ms | N/A | N/A | 30.28ms | 29.36ms | 24.74ms |
| cellx5000 | 40.94ms | 545.24ms | 61.06ms | N/A | N/A | 56.78ms | 64.17ms | 78.85ms |
| 10x5 - 2 sources - read 20.0% (simple) | 239.66ms | 2.03s | 440.73ms | N/A | 2.24s | 507.29ms | 364.19ms | 244.48ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 182.74ms | 1.54s | 280.32ms | N/A | 1.51s (partial) | 278.37ms | 249.93ms | 211.49ms |
| 1000x12 - 4 sources - dynamic (large) | 283.90ms | 1.91s | 3.51s | N/A | 2.50s (partial) | 3.60s | 462.47ms | 344.36ms |
| 1000x5 - 25 sources (wide dense) | 420.12ms | 3.52s | 2.59s | N/A | 4.37s | 3.44s | 588.83ms | 506.57ms |
| 5x500 - 3 sources (deep) | 190.24ms | 1.16s | 236.30ms | N/A | 1.36s | 225.21ms | 255.25ms | 205.09ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.17ms | 1.71s | 449.76ms | N/A | 1.83s (partial) | 478.19ms | 384.55ms | 260.05ms |

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
