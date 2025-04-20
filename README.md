# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.72s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.26s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.91s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 10.73s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.75s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.44s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.10s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 188.63ms | 2.34s | 203.98ms | 1.25s | 1.39s | 208.23ms | 276.43ms | 150.76ms (fail) |
| broadPropagation | 354.64ms | 4.20s | 462.62ms | 4.99s | 79.96ms (fail) | 462.04ms | 509.65ms | 6.24ms (fail) |
| deepPropagation | 122.11ms | 1.51s | 179.18ms | 4.00s | 1.88s (fail) | 178.48ms | 176.66ms | 144.69ms (fail) |
| diamond | 236.11ms | 2.39s | 280.88ms | 14.03s (fail) | 2.57s (fail) | 285.60ms | 377.27ms | 197.08ms (fail) |
| mux | 375.33ms | 1.84s | 390.36ms | 1.02s | 566.95ms (fail) | 407.86ms | 438.70ms | 189.75ms (fail) |
| repeatedObservers | 44.80ms | 223.32ms | 37.86ms | 9.74s | 377.29ms (fail) | 46.81ms | 79.10ms | 52.20ms (fail) |
| triangle | 85.83ms | 760.09ms | 99.24ms | 4.52s | 855.28ms (fail) | 108.02ms | 117.07ms | 84.37ms (fail) |
| unstable | 61.61ms | 351.07ms | 70.45ms | 7.64s | 592.39ms (fail) | 75.30ms | 95.42ms | 336.01ms (fail) |
| molBench | 492.10ms | 578.69ms | 490.99ms | 5.90s | 11.31ms | 488.24ms | 492.21ms | 1.01ms |
| create_signals | 26.18ms | 84.07ms | 15.08ms | 13.34ms | 23.55ms | 25.08ms | 52.70ms | 72.07ms |
| comp_0to1 | 11.47ms | 21.17ms | 14.83ms | 13.68ms | 13.84ms | 11.43ms | 25.16ms | 56.78ms |
| comp_1to1 | 14.59ms | 37.84ms | 7.08ms | 99.56ms | 26.78ms | 17.74ms | 29.83ms | 59.89ms |
| comp_2to1 | 11.26ms | 35.29ms | 9.82ms | 72.37ms | 31.30ms | 18.18ms | 35.58ms | 40.45ms |
| comp_4to1 | 10.36ms | 18.02ms | 8.37ms | 85.23ms | 6.28ms | 5.98ms | 8.91ms | 17.78ms |
| comp_1000to1 | 3μs | 24μs | 5μs | 59.32ms | 4μs | 6μs | 15μs | 41μs |
| comp_1to2 | 13.19ms | 38.28ms | 17.61ms | 66.89ms | 11.56ms | 22.83ms | 38.11ms | 46.12ms |
| comp_1to4 | 5.04ms | 24.03ms | 23.52ms | 99.18ms | 21.11ms | 13.34ms | 20.33ms | 47.15ms |
| comp_1to8 | 6.07ms | 25.71ms | 6.80ms | 116.37ms | 5.49ms | 6.84ms | 22.24ms | 44.66ms |
| comp_1to1000 | 3.56ms | 15.35ms | 6.32ms | 47.90ms | 4.37ms | 4.54ms | 14.89ms | 38.48ms |
| update_1to1 | 11.52ms | 25.88ms | 8.19ms | N/A | 84.06ms | 9.22ms | 16.20ms | 5.73ms |
| update_2to1 | 5.14ms | 12.46ms | 4.04ms | N/A | 45.69ms | 4.58ms | 8.03ms | 2.87ms |
| update_4to1 | 2.84ms | 7.16ms | 2.05ms | N/A | 20.12ms | 2.32ms | 4.09ms | 1.45ms |
| update_1000to1 | 20μs | 58μs | 20μs | N/A | 259μs | 22μs | 40μs | 15μs |
| update_1to2 | 5.65ms | 12.42ms | 4.06ms | N/A | 42.23ms | 4.89ms | 8.41ms | 2.92ms |
| update_1to4 | 2.51ms | 6.25ms | 2.04ms | N/A | 20.51ms | 2.30ms | 4.06ms | 1.44ms |
| update_1to1000 | 48μs | 165μs | 775μs | N/A | 128μs | 43μs | 150μs | 390μs |
| cellx1000 | 7.28ms | 92.54ms | 9.44ms | N/A | N/A | 9.64ms | 11.16ms | 5.30ms |
| cellx2500 | 19.66ms | 304.87ms | 25.48ms | N/A | N/A | 31.26ms | 32.87ms | 27.83ms |
| cellx5000 | 46.47ms | 618.60ms | 63.22ms | N/A | N/A | 61.73ms | 73.15ms | 60.75ms |
| 10x5 - 2 sources - read 20.0% (simple) | 230.33ms | 2.02s | 439.35ms | N/A | 2.19s | 514.37ms | 359.23ms | 255.90ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 177.62ms | 1.53s | 270.27ms | N/A | 1.50s (partial) | 285.13ms | 244.70ms | 201.82ms |
| 1000x12 - 4 sources - dynamic (large) | 285.42ms | 2.03s | 3.46s | N/A | 2.52s (partial) | 3.42s | 456.68ms | 337.73ms |
| 1000x5 - 25 sources (wide dense) | 402.81ms | 3.64s | 2.62s | N/A | 4.09s | 3.30s | 595.26ms | 485.97ms |
| 5x500 - 3 sources (deep) | 192.48ms | 1.18s | 232.86ms | N/A | 1.39s | 225.70ms | 251.01ms | 207.18ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.74ms | 1.76s | 444.60ms | N/A | 1.74s (partial) | 473.73ms | 386.12ms | 260.45ms |

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
