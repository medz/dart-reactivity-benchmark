# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.28s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.93s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.48s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.54s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.45s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.66s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.52ms | 2.30s | 202.68ms | 1.25s | 1.49s | 213.21ms | 274.65ms | 151.18ms (fail) |
| broadPropagation | 351.64ms | 4.27s | 457.45ms | 4.99s | 83.02ms (fail) | 463.41ms | 509.15ms | 5.88ms (fail) |
| deepPropagation | 124.12ms | 1.51s | 176.73ms | 4.00s | 1.99s (fail) | 176.48ms | 179.65ms | 141.42ms (fail) |
| diamond | 236.06ms | 2.40s | 277.21ms | 14.03s (fail) | 2.69s (fail) | 287.37ms | 360.07ms | 189.55ms (fail) |
| mux | 371.09ms | 1.84s | 383.85ms | 1.02s | 580.20ms (fail) | 412.08ms | 446.52ms | 191.86ms (fail) |
| repeatedObservers | 44.96ms | 225.50ms | 38.27ms | 9.74s | 389.57ms (fail) | 46.52ms | 78.23ms | 51.94ms (fail) |
| triangle | 85.74ms | 763.47ms | 100.45ms | 4.52s | 887.79ms (fail) | 108.83ms | 120.23ms | 77.20ms (fail) |
| unstable | 61.74ms | 346.61ms | 71.18ms | 7.64s | 618.30ms (fail) | 73.41ms | 93.88ms | 336.62ms (fail) |
| molBench | 491.83ms | 578.39ms | 491.41ms | 5.90s | 11.91ms | 485.21ms | 493.37ms | 902μs |
| create_signals | 20.00ms | 50.92ms | 4.82ms | 13.34ms | 24.47ms | 25.68ms | 73.78ms | 68.72ms |
| comp_0to1 | 7.59ms | 18.38ms | 17.93ms | 13.68ms | 15.42ms | 12.13ms | 32.58ms | 59.19ms |
| comp_1to1 | 4.22ms | 28.27ms | 13.75ms | 99.56ms | 20.76ms | 26.83ms | 48.73ms | 58.88ms |
| comp_2to1 | 2.28ms | 11.62ms | 18.11ms | 72.37ms | 29.61ms | 9.96ms | 37.67ms | 38.53ms |
| comp_4to1 | 10.65ms | 23.16ms | 15.54ms | 85.23ms | 6.53ms | 2.12ms | 4.68ms | 17.57ms |
| comp_1000to1 | 4μs | 16μs | 5μs | 59.32ms | 3μs | 5μs | 15μs | 46μs |
| comp_1to2 | 14.52ms | 36.75ms | 17.96ms | 66.89ms | 11.05ms | 20.42ms | 31.53ms | 49.87ms |
| comp_1to4 | 11.16ms | 23.41ms | 34.20ms | 99.18ms | 28.54ms | 12.34ms | 15.54ms | 49.00ms |
| comp_1to8 | 5.28ms | 21.34ms | 6.88ms | 116.37ms | 7.46ms | 9.49ms | 20.46ms | 48.14ms |
| comp_1to1000 | 3.62ms | 14.95ms | 6.91ms | 47.90ms | 4.83ms | 4.95ms | 14.78ms | 43.94ms |
| update_1to1 | 11.32ms | 24.16ms | 8.22ms | N/A | 85.53ms | 9.24ms | 16.33ms | 5.72ms |
| update_2to1 | 5.20ms | 10.68ms | 4.04ms | N/A | 42.93ms | 4.55ms | 7.93ms | 2.88ms |
| update_4to1 | 2.81ms | 6.27ms | 2.10ms | N/A | 20.19ms | 2.31ms | 4.12ms | 1.46ms |
| update_1000to1 | 11μs | 58μs | 20μs | N/A | 258μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.61ms | 12.07ms | 4.12ms | N/A | 42.87ms | 5.02ms | 8.10ms | 2.94ms |
| update_1to4 | 1.82ms | 5.68ms | 2.05ms | N/A | 21.10ms | 3.31ms | 4.03ms | 1.46ms |
| update_1to1000 | 37μs | 166μs | 1.05ms | N/A | 118μs | 78μs | 146μs | 449μs |
| cellx1000 | 7.19ms | 85.47ms | 9.59ms | N/A | N/A | 9.42ms | 12.87ms | 5.18ms |
| cellx2500 | 19.00ms | 302.69ms | 24.74ms | N/A | N/A | 30.80ms | 30.50ms | 22.08ms |
| cellx5000 | 40.83ms | 620.13ms | 62.98ms | N/A | N/A | 58.75ms | 66.06ms | 53.42ms |
| 10x5 - 2 sources - read 20.0% (simple) | 234.88ms | 2.02s | 456.60ms | N/A | 2.57s | 505.55ms | 354.86ms | 268.88ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 183.46ms | 1.54s | 276.62ms | N/A | 1.61s (partial) | 276.69ms | 243.87ms | 206.07ms |
| 1000x12 - 4 sources - dynamic (large) | 280.07ms | 1.93s | 3.49s | N/A | 2.69s (partial) | 4.00s | 460.89ms | 334.45ms |
| 1000x5 - 25 sources (wide dense) | 407.99ms | 3.58s | 2.59s | N/A | 4.33s | 3.47s | 595.98ms | 499.99ms |
| 5x500 - 3 sources (deep) | 189.54ms | 1.20s | 230.40ms | N/A | 1.46s | 234.13ms | 254.46ms | 204.85ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.75ms | 1.73s | 438.13ms | N/A | 1.89s (partial) | 486.47ms | 386.57ms | 256.77ms |

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
