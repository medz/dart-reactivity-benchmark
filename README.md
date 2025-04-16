# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.48s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.95s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.56s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.19s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.48s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.76s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.97ms | 2.30s | 197.13ms | 1.25s | 1.37s | 210.23ms | 274.78ms | 154.57ms (fail) |
| broadPropagation | 352.05ms | 4.21s | 463.43ms | 4.99s | 81.06ms (fail) | 472.37ms | 506.44ms | 6.08ms (fail) |
| deepPropagation | 125.88ms | 1.50s | 177.90ms | 4.00s | 1.87s (fail) | 186.59ms | 175.54ms | 140.27ms (fail) |
| diamond | 235.76ms | 2.37s | 278.07ms | 14.03s (fail) | 2.56s (fail) | 298.29ms | 352.93ms | 195.46ms (fail) |
| mux | 369.73ms | 1.82s | 383.64ms | 1.02s | 566.99ms (fail) | 418.97ms | 469.99ms | 190.35ms (fail) |
| repeatedObservers | 45.25ms | 226.32ms | 38.66ms | 9.74s | 383.89ms (fail) | 46.70ms | 81.56ms | 52.37ms (fail) |
| triangle | 84.89ms | 767.75ms | 101.27ms | 4.52s | 917.44ms (fail) | 105.57ms | 117.00ms | 77.59ms (fail) |
| unstable | 60.86ms | 345.81ms | 70.94ms | 7.64s | 627.44ms (fail) | 76.29ms | 94.82ms | 336.38ms (fail) |
| molBench | 491.21ms | 584.82ms | 491.87ms | 5.90s | 12.02ms | 488.42ms | 495.22ms | 1.26ms |
| create_signals | 26.97ms | 80.16ms | 4.59ms | 13.34ms | 23.04ms | 25.00ms | 73.40ms | 64.90ms |
| comp_0to1 | 7.87ms | 23.06ms | 17.74ms | 13.68ms | 13.36ms | 11.71ms | 26.92ms | 56.24ms |
| comp_1to1 | 4.33ms | 31.26ms | 11.24ms | 99.56ms | 23.25ms | 26.99ms | 27.64ms | 54.54ms |
| comp_2to1 | 2.22ms | 43.47ms | 22.45ms | 72.37ms | 24.03ms | 9.09ms | 27.17ms | 36.19ms |
| comp_4to1 | 10.78ms | 30.95ms | 8.65ms | 85.23ms | 5.82ms | 1.99ms | 18.37ms | 16.22ms |
| comp_1000to1 | 9μs | 15μs | 4μs | 59.32ms | 3μs | 5μs | 15μs | 42μs |
| comp_1to2 | 26.90ms | 34.13ms | 16.25ms | 66.89ms | 10.74ms | 23.17ms | 37.24ms | 46.63ms |
| comp_1to4 | 5.62ms | 17.41ms | 24.58ms | 99.18ms | 25.08ms | 9.51ms | 20.18ms | 45.02ms |
| comp_1to8 | 5.91ms | 19.59ms | 5.43ms | 116.37ms | 5.48ms | 9.50ms | 21.11ms | 45.49ms |
| comp_1to1000 | 3.27ms | 14.88ms | 6.43ms | 47.90ms | 4.40ms | 7.51ms | 14.83ms | 39.28ms |
| update_1to1 | 11.24ms | 24.62ms | 8.19ms | N/A | 81.78ms | 9.37ms | 16.26ms | 5.74ms |
| update_2to1 | 4.20ms | 12.42ms | 4.05ms | N/A | 42.34ms | 4.55ms | 7.93ms | 2.90ms |
| update_4to1 | 2.25ms | 6.63ms | 2.07ms | N/A | 20.59ms | 2.34ms | 4.04ms | 1.45ms |
| update_1000to1 | 10μs | 59μs | 22μs | N/A | 172μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.75ms | 12.16ms | 4.14ms | N/A | 42.84ms | 4.85ms | 8.06ms | 2.95ms |
| update_1to4 | 2.46ms | 5.91ms | 2.07ms | N/A | 21.82ms | 2.33ms | 4.04ms | 1.46ms |
| update_1to1000 | 46μs | 168μs | 831μs | N/A | 121μs | 45μs | 150μs | 382μs |
| cellx1000 | 7.24ms | 76.54ms | 9.69ms | N/A | N/A | 9.75ms | 12.61ms | 5.43ms |
| cellx2500 | 19.12ms | 250.53ms | 29.71ms | N/A | N/A | 33.34ms | 40.00ms | 25.72ms |
| cellx5000 | 44.82ms | 582.25ms | 73.03ms | N/A | N/A | 71.84ms | 132.32ms | 80.10ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.33ms | 2.00s | 442.14ms | N/A | 2.32s | 507.77ms | 418.39ms | 240.55ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 176.82ms | 1.53s | 274.55ms | N/A | 1.53s (partial) | 278.64ms | 257.49ms | 207.03ms |
| 1000x12 - 4 sources - dynamic (large) | 281.40ms | 1.85s | 3.50s | N/A | 2.61s (partial) | 3.97s | 473.64ms | 362.39ms |
| 1000x5 - 25 sources (wide dense) | 400.87ms | 3.55s | 2.61s | N/A | 4.41s | 3.53s | 611.50ms | 512.37ms |
| 5x500 - 3 sources (deep) | 190.25ms | 1.14s | 230.51ms | N/A | 1.36s | 227.14ms | 265.51ms | 206.76ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 260.30ms | 1.74s | 436.17ms | N/A | 1.80s (partial) | 486.29ms | 389.82ms | 261.73ms |

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
