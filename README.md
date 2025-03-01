# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.80s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.29s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.07s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.44s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.21s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.54s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.28s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 190.51ms | 2.35s | 219.12ms | 1.25s | 1.38s | 210.79ms | 272.52ms | 151.79ms (fail) |
| broadPropagation | 359.85ms | 4.32s | 494.35ms | 4.99s | 80.97ms (fail) | 495.85ms | 498.78ms | 6.50ms (fail) |
| deepPropagation | 124.23ms | 1.55s | 181.74ms | 4.00s | 1.97s (fail) | 181.09ms | 166.23ms | 141.44ms (fail) |
| diamond | 239.81ms | 2.47s | 304.84ms | 14.03s (fail) | 2.62s (fail) | 305.40ms | 349.11ms | 197.88ms (fail) |
| mux | 370.68ms | 1.90s | 400.08ms | 1.02s | 572.38ms (fail) | 413.54ms | 432.05ms | 190.44ms (fail) |
| repeatedObservers | 44.86ms | 233.37ms | 39.76ms | 9.74s | 386.68ms (fail) | 46.35ms | 77.90ms | 52.87ms (fail) |
| triangle | 85.80ms | 780.57ms | 105.43ms | 4.52s | 894.03ms (fail) | 106.37ms | 115.15ms | 76.13ms (fail) |
| unstable | 64.86ms | 351.58ms | 72.07ms | 7.64s | 629.65ms (fail) | 76.07ms | 93.21ms | 336.42ms (fail) |
| molBench | 493.40ms | 590.59ms | 494.39ms | 5.90s | 11.53ms | 487.88ms | 495.40ms | 1.07ms |
| create_signals | 34.73ms | 84.59ms | 5.05ms | 13.34ms | 30.45ms | 29.98ms | 105.53ms | 68.00ms |
| comp_0to1 | 11.12ms | 23.83ms | 20.58ms | 13.68ms | 22.86ms | 14.39ms | 41.47ms | 59.01ms |
| comp_1to1 | 15.04ms | 38.35ms | 13.95ms | 99.56ms | 31.96ms | 41.54ms | 46.35ms | 60.34ms |
| comp_2to1 | 8.03ms | 24.43ms | 12.13ms | 72.37ms | 35.78ms | 10.84ms | 43.34ms | 44.85ms |
| comp_4to1 | 17.97ms | 22.17ms | 18.63ms | 85.23ms | 7.69ms | 2.27ms | 12.06ms | 18.27ms |
| comp_1000to1 | 5μs | 24μs | 5μs | 59.32ms | 6μs | 6μs | 48μs | 46μs |
| comp_1to2 | 15.39ms | 34.02ms | 31.76ms | 66.89ms | 14.52ms | 22.66ms | 45.42ms | 50.35ms |
| comp_1to4 | 8.95ms | 24.52ms | 25.65ms | 99.18ms | 37.47ms | 15.42ms | 22.31ms | 48.85ms |
| comp_1to8 | 8.30ms | 21.94ms | 12.72ms | 116.37ms | 11.15ms | 8.13ms | 20.94ms | 47.32ms |
| comp_1to1000 | 5.20ms | 15.65ms | 7.09ms | 47.90ms | 6.77ms | 4.96ms | 14.79ms | 42.65ms |
| update_1to1 | 9.64ms | 24.72ms | 8.26ms | N/A | 86.91ms | 9.23ms | 16.11ms | 5.76ms |
| update_2to1 | 3.91ms | 10.94ms | 4.07ms | N/A | 42.11ms | 4.59ms | 7.90ms | 4.60ms |
| update_4to1 | 2.79ms | 5.72ms | 2.18ms | N/A | 20.47ms | 2.32ms | 4.02ms | 1.43ms |
| update_1000to1 | 12μs | 57μs | 20μs | N/A | 219μs | 23μs | 40μs | 15μs |
| update_1to2 | 3.96ms | 11.40ms | 4.06ms | N/A | 43.43ms | 4.91ms | 8.09ms | 2.95ms |
| update_1to4 | 1.14ms | 6.24ms | 2.03ms | N/A | 20.95ms | 2.28ms | 4.04ms | 1.44ms |
| update_1to1000 | 43μs | 167μs | 2.73ms | N/A | 149μs | 47μs | 148μs | 413μs |
| cellx1000 | 10.93ms | 80.90ms | 9.96ms | N/A | N/A | 9.77ms | 11.62ms | 5.83ms |
| cellx2500 | 26.05ms | 297.21ms | 27.17ms | N/A | N/A | 37.38ms | 31.88ms | 34.79ms |
| cellx5000 | 77.90ms | 679.49ms | 77.49ms | N/A | N/A | 109.20ms | 73.10ms | 120.51ms |
| 10x5 - 2 sources - read 20.0% (simple) | 235.98ms | 2.07s | 444.52ms | N/A | 2.28s | 512.87ms | 344.57ms | 238.45ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.89ms | 1.59s | 267.20ms | N/A | 1.53s (partial) | 281.77ms | 244.68ms | 200.44ms |
| 1000x12 - 4 sources - dynamic (large) | 288.44ms | 1.99s | 3.53s | N/A | 2.64s (partial) | 3.74s | 470.22ms | 359.10ms |
| 1000x5 - 25 sources (wide dense) | 408.97ms | 3.63s | 2.56s | N/A | 4.41s | 3.55s | 581.29ms | 496.84ms |
| 5x500 - 3 sources (deep) | 191.89ms | 1.21s | 228.97ms | N/A | 1.59s | 228.62ms | 258.79ms | 208.77ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 256.90ms | 1.76s | 443.67ms | N/A | 1.87s (partial) | 472.61ms | 381.42ms | 259.55ms |

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
