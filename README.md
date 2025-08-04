# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 4.08s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.18s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.22s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.16s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.31s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.53s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.00s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 158.22ms | 2.36s | 196.45ms | 1.37s | 209.89ms | 256.89ms | 168.56ms (fail) |
| broadPropagation | 322.39ms | 4.47s | 455.63ms | 79.41ms (fail) | 451.16ms | 464.39ms | 6.22ms (fail) |
| deepPropagation | 95.57ms | 1.56s | 175.82ms | 1.88s (fail) | 172.69ms | 148.27ms | 150.33ms (fail) |
| diamond | 225.64ms | 2.49s | 280.18ms | 2.57s (fail) | 278.95ms | 311.03ms | 208.77ms (fail) |
| mux | 340.15ms | 1.83s | 403.71ms | 561.89ms (fail) | 409.79ms | 386.63ms | 192.80ms (fail) |
| repeatedObservers | 50.29ms | 238.19ms | 40.08ms | 386.74ms (fail) | 44.58ms | 89.48ms | 54.59ms (fail) |
| triangle | 74.33ms | 774.63ms | 100.29ms | 884.43ms (fail) | 101.63ms | 96.49ms | 84.65ms (fail) |
| unstable | 136.49ms | 354.10ms | 70.17ms | 603.10ms (fail) | 79.50ms | 173.69ms | 340.05ms (fail) |
| molBench | 494.42ms | 571.24ms | 489.94ms | 11.30ms | 485.95ms | 493.33ms | 856μs |
| create_signals | 28.61ms | 73.22ms | 4.71ms | 24.52ms | 25.80ms | 63.49ms | 59.86ms |
| comp_0to1 | 14.70ms | 25.51ms | 17.79ms | 14.16ms | 11.29ms | 33.65ms | 53.07ms |
| comp_1to1 | 17.16ms | 18.40ms | 12.68ms | 22.92ms | 19.49ms | 45.71ms | 55.00ms |
| comp_2to1 | 10.28ms | 12.30ms | 17.37ms | 24.84ms | 8.22ms | 20.06ms | 36.60ms |
| comp_4to1 | 6.15ms | 15.33ms | 8.51ms | 4.08ms | 5.09ms | 11.13ms | 16.88ms |
| comp_1000to1 | 23μs | 17μs | 6μs | 4μs | 4μs | 15μs | 40μs |
| comp_1to2 | 12.78ms | 38.45ms | 15.42ms | 11.18ms | 13.18ms | 35.72ms | 46.24ms |
| comp_1to4 | 18.52ms | 25.17ms | 21.84ms | 23.51ms | 14.12ms | 15.66ms | 46.89ms |
| comp_1to8 | 6.51ms | 22.05ms | 7.43ms | 5.60ms | 8.04ms | 19.57ms | 43.79ms |
| comp_1to1000 | 4.24ms | 16.00ms | 5.06ms | 4.90ms | 4.31ms | 14.30ms | 38.20ms |
| update_1to1 | 5.57ms | 24.71ms | 8.61ms | 86.38ms | 8.94ms | 17.81ms | 5.70ms |
| update_2to1 | 2.80ms | 11.59ms | 4.31ms | 44.62ms | 4.47ms | 8.92ms | 2.88ms |
| update_4to1 | 1.48ms | 6.57ms | 2.24ms | 21.35ms | 2.37ms | 4.46ms | 1.48ms |
| update_1000to1 | 25μs | 69μs | 21μs | 174μs | 22μs | 44μs | 14μs |
| update_1to2 | 2.80ms | 11.97ms | 4.76ms | 43.19ms | 4.49ms | 9.00ms | 2.90ms |
| update_1to4 | 1.47ms | 6.08ms | 2.60ms | 20.47ms | 2.31ms | 4.45ms | 1.48ms |
| update_1to1000 | 50μs | 170μs | 147μs | 104μs | 41μs | 146μs | 381μs |
| cellx1000 | 7.28ms | 73.28ms | 9.70ms | N/A | 9.47ms | 9.97ms | 6.16ms |
| cellx2500 | 19.21ms | 266.89ms | 28.01ms | N/A | 30.73ms | 31.07ms | 29.39ms |
| cellx5000 | 43.13ms | 573.34ms | 78.63ms | N/A | 61.42ms | 74.29ms | 98.65ms |
| 10x5 - 2 sources - read 20.0% (simple) | 262.47ms | 2.05s | 437.97ms | 2.16s | 514.26ms | 322.65ms | 268.89ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 251.17ms | 1.59s | 267.72ms | 1.46s (partial) | 281.32ms | 225.15ms | 204.90ms |
| 1000x12 - 4 sources - dynamic (large) | 359.03ms | 2.13s | 3.66s | 2.56s (partial) | 3.76s | 433.50ms | 343.37ms |
| 1000x5 - 25 sources (wide dense) | 555.01ms | 3.70s | 2.71s | 4.09s | 3.44s | 804.76ms | 492.79ms |
| 5x500 - 3 sources (deep) | 242.93ms | 1.19s | 228.80ms | 1.32s | 225.00ms | 228.29ms | 205.32ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 306.60ms | 1.77s | 450.49ms | 1.72s (partial) | 476.51ms | 329.99ms | 259.84ms |

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
