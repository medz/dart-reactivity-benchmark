# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.69s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.24s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.99s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.36s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.74s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.23s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.29ms | 2.35s | 205.27ms | 1.25s | 1.40s | 212.43ms | 272.94ms | 170.91ms (fail) |
| broadPropagation | 352.91ms | 4.37s | 453.60ms | 4.99s | 80.00ms (fail) | 464.58ms | 503.47ms | 6.14ms (fail) |
| deepPropagation | 125.28ms | 1.53s | 178.42ms | 4.00s | 1.86s (fail) | 182.71ms | 165.99ms | 142.29ms (fail) |
| diamond | 236.13ms | 2.40s | 283.24ms | 14.03s (fail) | 2.54s (fail) | 290.79ms | 352.14ms | 213.50ms (fail) |
| mux | 375.17ms | 1.86s | 386.71ms | 1.02s | 557.02ms (fail) | 412.98ms | 444.10ms | 192.68ms (fail) |
| repeatedObservers | 45.94ms | 235.14ms | 37.93ms | 9.74s | 376.06ms (fail) | 46.38ms | 78.81ms | 52.54ms (fail) |
| triangle | 87.59ms | 778.25ms | 99.00ms | 4.52s | 954.00ms (fail) | 104.14ms | 115.42ms | 88.29ms (fail) |
| unstable | 60.02ms | 350.97ms | 70.55ms | 7.64s | 606.30ms (fail) | 74.14ms | 95.02ms | 337.07ms (fail) |
| molBench | 492.18ms | 577.83ms | 491.91ms | 5.90s | 11.63ms | 488.92ms | 493.24ms | 1.11ms |
| create_signals | 25.63ms | 79.59ms | 4.68ms | 13.34ms | 23.79ms | 26.09ms | 53.25ms | 62.65ms |
| comp_0to1 | 7.40ms | 22.35ms | 21.53ms | 13.68ms | 13.94ms | 12.16ms | 26.32ms | 55.20ms |
| comp_1to1 | 4.16ms | 43.59ms | 11.50ms | 99.56ms | 27.07ms | 23.98ms | 45.35ms | 56.44ms |
| comp_2to1 | 2.25ms | 23.67ms | 11.37ms | 72.37ms | 24.48ms | 12.16ms | 40.82ms | 37.98ms |
| comp_4to1 | 8.89ms | 25.16ms | 13.42ms | 85.23ms | 11.39ms | 1.84ms | 19.19ms | 16.63ms |
| comp_1000to1 | 4μs | 20μs | 4μs | 59.32ms | 6μs | 5μs | 27μs | 44μs |
| comp_1to2 | 11.19ms | 34.85ms | 18.02ms | 66.89ms | 14.11ms | 13.37ms | 31.08ms | 47.74ms |
| comp_1to4 | 9.22ms | 18.16ms | 32.79ms | 99.18ms | 23.94ms | 18.50ms | 15.37ms | 46.50ms |
| comp_1to8 | 4.95ms | 20.85ms | 8.73ms | 116.37ms | 5.10ms | 5.98ms | 20.92ms | 46.39ms |
| comp_1to1000 | 3.49ms | 15.56ms | 5.94ms | 47.90ms | 4.21ms | 5.65ms | 14.98ms | 41.13ms |
| update_1to1 | 11.29ms | 22.34ms | 8.13ms | N/A | 84.24ms | 10.42ms | 16.10ms | 5.72ms |
| update_2to1 | 4.74ms | 11.78ms | 4.04ms | N/A | 43.59ms | 5.13ms | 7.89ms | 2.86ms |
| update_4to1 | 2.76ms | 6.40ms | 2.08ms | N/A | 20.87ms | 2.59ms | 4.05ms | 1.45ms |
| update_1000to1 | 19μs | 66μs | 20μs | N/A | 196μs | 25μs | 40μs | 15μs |
| update_1to2 | 5.61ms | 11.87ms | 4.18ms | N/A | 42.96ms | 5.11ms | 8.13ms | 2.96ms |
| update_1to4 | 2.45ms | 6.40ms | 2.64ms | N/A | 20.85ms | 2.58ms | 4.01ms | 1.46ms |
| update_1to1000 | 47μs | 169μs | 148μs | N/A | 117μs | 46μs | 151μs | 401μs |
| cellx1000 | 7.28ms | 74.95ms | 9.49ms | N/A | N/A | 9.79ms | 14.75ms | 5.67ms |
| cellx2500 | 19.84ms | 264.91ms | 26.77ms | N/A | N/A | 28.01ms | 34.25ms | 24.13ms |
| cellx5000 | 50.14ms | 580.55ms | 72.25ms | N/A | N/A | 73.88ms | 87.79ms | 68.40ms |
| 10x5 - 2 sources - read 20.0% (simple) | 228.36ms | 2.05s | 448.38ms | N/A | 2.20s | 505.13ms | 343.23ms | 276.67ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.42ms | 1.55s | 270.44ms | N/A | 1.47s (partial) | 286.02ms | 244.67ms | 205.47ms |
| 1000x12 - 4 sources - dynamic (large) | 284.19ms | 1.90s | 3.50s | N/A | 2.50s (partial) | 3.97s | 464.99ms | 345.96ms |
| 1000x5 - 25 sources (wide dense) | 407.14ms | 3.62s | 2.61s | N/A | 4.10s | 3.35s | 592.06ms | 509.86ms |
| 5x500 - 3 sources (deep) | 190.40ms | 1.16s | 235.30ms | N/A | 1.44s | 227.95ms | 255.02ms | 207.64ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.09ms | 1.75s | 450.53ms | N/A | 1.76s (partial) | 474.94ms | 376.07ms | 261.24ms |

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
