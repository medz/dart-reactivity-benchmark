# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.76s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.41s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.08s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.71s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.66s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.47s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.37s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.69ms | 2.31s | 204.22ms | 1.25s | 1.42s | 216.54ms | 272.14ms | 149.93ms (fail) |
| broadPropagation | 356.35ms | 4.23s | 462.01ms | 4.99s | 81.71ms (fail) | 457.21ms | 506.77ms | 5.89ms (fail) |
| deepPropagation | 127.53ms | 1.53s | 180.18ms | 4.00s | 1.95s (fail) | 177.46ms | 168.02ms | 140.72ms (fail) |
| diamond | 237.48ms | 2.40s | 280.30ms | 14.03s (fail) | 2.56s (fail) | 290.59ms | 347.22ms | 186.73ms (fail) |
| mux | 374.84ms | 1.88s | 383.82ms | 1.02s | 569.57ms (fail) | 415.70ms | 447.33ms | 189.77ms (fail) |
| repeatedObservers | 46.95ms | 230.04ms | 38.32ms | 9.74s | 416.21ms (fail) | 46.35ms | 77.71ms | 53.18ms (fail) |
| triangle | 83.46ms | 768.25ms | 99.67ms | 4.52s | 979.12ms (fail) | 104.04ms | 117.25ms | 76.28ms (fail) |
| unstable | 61.45ms | 346.21ms | 70.85ms | 7.64s | 618.31ms (fail) | 74.46ms | 94.36ms | 337.77ms (fail) |
| molBench | 493.48ms | 578.53ms | 492.01ms | 5.90s | 11.62ms | 488.79ms | 493.57ms | 1.49ms |
| create_signals | 28.36ms | 68.04ms | 15.88ms | 13.34ms | 23.93ms | 25.95ms | 74.21ms | 64.26ms |
| comp_0to1 | 7.12ms | 20.36ms | 30.08ms | 13.68ms | 13.88ms | 12.54ms | 28.90ms | 57.76ms |
| comp_1to1 | 4.18ms | 32.40ms | 7.29ms | 99.56ms | 22.64ms | 22.64ms | 33.24ms | 59.27ms |
| comp_2to1 | 2.22ms | 36.99ms | 10.38ms | 72.37ms | 24.86ms | 14.38ms | 42.55ms | 37.69ms |
| comp_4to1 | 10.96ms | 17.91ms | 8.78ms | 85.23ms | 6.40ms | 3.92ms | 18.61ms | 17.37ms |
| comp_1000to1 | 4μs | 27μs | 5μs | 59.32ms | 4μs | 4μs | 16μs | 42μs |
| comp_1to2 | 27.78ms | 35.37ms | 18.31ms | 66.89ms | 11.65ms | 13.53ms | 37.93ms | 45.78ms |
| comp_1to4 | 5.91ms | 22.93ms | 24.75ms | 99.18ms | 26.48ms | 14.10ms | 21.84ms | 44.84ms |
| comp_1to8 | 5.90ms | 25.39ms | 6.14ms | 116.37ms | 4.97ms | 7.16ms | 24.02ms | 45.97ms |
| comp_1to1000 | 3.21ms | 15.30ms | 6.42ms | 47.90ms | 4.56ms | 4.59ms | 16.75ms | 39.37ms |
| update_1to1 | 12.58ms | 22.18ms | 8.14ms | N/A | 82.88ms | 9.20ms | 16.40ms | 5.73ms |
| update_2to1 | 6.35ms | 12.10ms | 4.05ms | N/A | 43.70ms | 4.59ms | 7.96ms | 2.90ms |
| update_4to1 | 3.00ms | 6.66ms | 2.05ms | N/A | 21.00ms | 2.34ms | 4.40ms | 1.48ms |
| update_1000to1 | 28μs | 81μs | 20μs | N/A | 192μs | 23μs | 42μs | 15μs |
| update_1to2 | 6.36ms | 10.78ms | 4.05ms | N/A | 42.64ms | 4.92ms | 8.19ms | 2.92ms |
| update_1to4 | 2.99ms | 5.88ms | 2.49ms | N/A | 20.43ms | 2.33ms | 4.17ms | 1.48ms |
| update_1to1000 | 35μs | 157μs | 968μs | N/A | 112μs | 44μs | 181μs | 400μs |
| cellx1000 | 7.52ms | 97.45ms | 10.68ms | N/A | N/A | 10.39ms | 12.52ms | 6.69ms |
| cellx2500 | 21.72ms | 322.55ms | 36.79ms | N/A | N/A | 39.65ms | 44.30ms | 30.66ms |
| cellx5000 | 59.37ms | 633.50ms | 102.54ms | N/A | N/A | 89.31ms | 129.11ms | 77.66ms |
| 10x5 - 2 sources - read 20.0% (simple) | 238.20ms | 2.04s | 441.15ms | N/A | 2.29s | 534.01ms | 357.52ms | 252.24ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.56ms | 1.55s | 278.03ms | N/A | 1.56s (partial) | 287.42ms | 261.31ms | 199.37ms |
| 1000x12 - 4 sources - dynamic (large) | 290.83ms | 1.90s | 3.54s | N/A | 2.58s (partial) | 4.01s | 479.43ms | 350.89ms |
| 1000x5 - 25 sources (wide dense) | 411.44ms | 3.58s | 2.62s | N/A | 4.60s | 3.61s | 605.28ms | 508.87ms |
| 5x500 - 3 sources (deep) | 194.56ms | 1.18s | 231.01ms | N/A | 1.52s | 226.17ms | 262.25ms | 205.01ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 264.07ms | 1.76s | 453.26ms | N/A | 1.85s (partial) | 494.66ms | 392.43ms | 272.17ms |

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
