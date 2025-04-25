# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.68s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.26s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.87s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.22s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.49s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.51s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.99s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 185.16ms | 2.33s | 205.56ms | 1.25s | 1.43s | 215.96ms | 272.46ms | 158.01ms (fail) |
| broadPropagation | 354.44ms | 4.25s | 460.13ms | 4.99s | 82.39ms (fail) | 459.85ms | 496.43ms | 6.46ms (fail) |
| deepPropagation | 124.14ms | 1.50s | 176.06ms | 4.00s | 1.97s (fail) | 193.39ms | 168.59ms | 145.66ms (fail) |
| diamond | 239.02ms | 2.38s | 280.36ms | 14.03s (fail) | 2.60s (fail) | 296.86ms | 346.88ms | 198.92ms (fail) |
| mux | 370.43ms | 1.82s | 397.00ms | 1.02s | 568.92ms (fail) | 411.34ms | 436.78ms | 192.18ms (fail) |
| repeatedObservers | 46.37ms | 235.53ms | 37.88ms | 9.74s | 399.48ms (fail) | 46.95ms | 77.92ms | 53.15ms (fail) |
| triangle | 84.32ms | 763.92ms | 99.00ms | 4.52s | 855.77ms (fail) | 104.05ms | 116.13ms | 78.95ms (fail) |
| unstable | 61.11ms | 351.15ms | 70.57ms | 7.64s | 651.04ms (fail) | 74.21ms | 94.11ms | 338.18ms (fail) |
| molBench | 492.12ms | 581.21ms | 491.43ms | 5.90s | 11.77ms | 488.67ms | 492.24ms | 1.15ms |
| create_signals | 26.48ms | 61.02ms | 5.22ms | 13.34ms | 24.07ms | 26.06ms | 93.68ms | 63.09ms |
| comp_0to1 | 6.95ms | 15.16ms | 17.65ms | 13.68ms | 13.74ms | 11.94ms | 35.00ms | 52.77ms |
| comp_1to1 | 4.38ms | 46.25ms | 11.66ms | 99.56ms | 23.38ms | 18.57ms | 53.66ms | 54.73ms |
| comp_2to1 | 2.29ms | 35.20ms | 16.98ms | 72.37ms | 23.08ms | 10.94ms | 10.10ms | 36.67ms |
| comp_4to1 | 7.80ms | 16.16ms | 8.78ms | 85.23ms | 6.42ms | 8.27ms | 16.93ms | 16.82ms |
| comp_1000to1 | 4μs | 16μs | 5μs | 59.32ms | 3μs | 5μs | 18μs | 42μs |
| comp_1to2 | 11.11ms | 38.29ms | 27.73ms | 66.89ms | 9.96ms | 19.96ms | 33.90ms | 44.79ms |
| comp_1to4 | 14.69ms | 21.53ms | 24.53ms | 99.18ms | 24.01ms | 10.08ms | 17.87ms | 43.62ms |
| comp_1to8 | 4.22ms | 23.43ms | 6.32ms | 116.37ms | 4.90ms | 7.07ms | 22.01ms | 42.72ms |
| comp_1to1000 | 3.14ms | 15.17ms | 6.25ms | 47.90ms | 4.20ms | 4.57ms | 14.97ms | 38.14ms |
| update_1to1 | 11.25ms | 22.99ms | 8.22ms | N/A | 83.38ms | 9.38ms | 16.15ms | 5.73ms |
| update_2to1 | 4.93ms | 11.75ms | 4.05ms | N/A | 42.80ms | 4.60ms | 7.92ms | 2.89ms |
| update_4to1 | 2.80ms | 6.82ms | 2.11ms | N/A | 20.40ms | 2.36ms | 4.06ms | 1.47ms |
| update_1000to1 | 27μs | 80μs | 20μs | N/A | 193μs | 23μs | 41μs | 15μs |
| update_1to2 | 5.60ms | 11.20ms | 4.10ms | N/A | 41.98ms | 4.96ms | 7.89ms | 2.95ms |
| update_1to4 | 2.47ms | 5.75ms | 2.08ms | N/A | 20.32ms | 2.35ms | 4.16ms | 1.47ms |
| update_1to1000 | 41μs | 169μs | 850μs | N/A | 95μs | 44μs | 149μs | 384μs |
| cellx1000 | 7.90ms | 79.84ms | 9.70ms | N/A | N/A | 10.01ms | 13.22ms | 5.63ms |
| cellx2500 | 19.91ms | 257.90ms | 26.28ms | N/A | N/A | 34.13ms | 33.54ms | 25.61ms |
| cellx5000 | 50.05ms | 547.71ms | 66.78ms | N/A | N/A | 76.81ms | 83.43ms | 72.44ms |
| 10x5 - 2 sources - read 20.0% (simple) | 226.87ms | 2.00s | 443.45ms | N/A | 2.28s | 509.92ms | 343.52ms | 285.95ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.41ms | 1.54s | 274.38ms | N/A | 1.54s (partial) | 278.48ms | 243.58ms | 222.99ms |
| 1000x12 - 4 sources - dynamic (large) | 277.63ms | 1.95s | 3.41s | N/A | 2.54s (partial) | 3.76s | 467.51ms | 336.48ms |
| 1000x5 - 25 sources (wide dense) | 408.67ms | 3.66s | 2.59s | N/A | 4.43s | 3.42s | 593.63ms | 510.90ms |
| 5x500 - 3 sources (deep) | 190.37ms | 1.17s | 234.38ms | N/A | 1.41s | 227.58ms | 255.50ms | 206.40ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 262.36ms | 1.74s | 444.57ms | N/A | 1.86s (partial) | 474.86ms | 381.11ms | 260.94ms |

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
