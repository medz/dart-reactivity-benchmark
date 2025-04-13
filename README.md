# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.63s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.22s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.75s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.01s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.51s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.28s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 176.88ms | 2.34s | 205.53ms | 1.25s | 1.42s | 200.42ms | 259.68ms | 168.97ms (fail) |
| broadPropagation | 351.02ms | 4.34s | 460.03ms | 4.99s | 79.77ms (fail) | 446.01ms | 499.69ms | 6.16ms (fail) |
| deepPropagation | 120.35ms | 1.53s | 175.06ms | 4.00s | 1.84s (fail) | 167.24ms | 168.25ms | 139.15ms (fail) |
| diamond | 226.36ms | 2.45s | 279.90ms | 14.03s (fail) | 2.55s (fail) | 282.33ms | 361.78ms | 184.19ms (fail) |
| mux | 362.83ms | 1.84s | 379.07ms | 1.02s | 556.38ms (fail) | 405.76ms | 444.17ms | 190.36ms (fail) |
| repeatedObservers | 42.54ms | 238.13ms | 38.09ms | 9.74s | 368.00ms (fail) | 46.25ms | 77.89ms | 53.02ms (fail) |
| triangle | 85.17ms | 757.69ms | 100.10ms | 4.52s | 876.58ms (fail) | 105.99ms | 122.97ms | 87.94ms (fail) |
| unstable | 59.72ms | 363.84ms | 70.43ms | 7.64s | 606.34ms (fail) | 74.12ms | 92.97ms | 335.14ms (fail) |
| molBench | 487.20ms | 580.41ms | 488.10ms | 5.90s | 11.23ms | 476.64ms | 490.91ms | 932μs |
| create_signals | 25.40ms | 53.55ms | 4.68ms | 13.34ms | 22.91ms | 23.31ms | 91.41ms | 62.28ms |
| comp_0to1 | 7.71ms | 14.68ms | 17.59ms | 13.68ms | 13.18ms | 10.98ms | 31.57ms | 56.27ms |
| comp_1to1 | 4.18ms | 35.16ms | 10.97ms | 99.56ms | 21.86ms | 26.81ms | 26.89ms | 57.91ms |
| comp_2to1 | 2.22ms | 21.14ms | 17.59ms | 72.37ms | 22.76ms | 8.38ms | 35.12ms | 35.60ms |
| comp_4to1 | 8.47ms | 16.39ms | 10.80ms | 85.23ms | 6.36ms | 1.82ms | 18.82ms | 15.79ms |
| comp_1000to1 | 3μs | 14μs | 9μs | 59.32ms | 4μs | 8μs | 15μs | 41μs |
| comp_1to2 | 10.49ms | 35.62ms | 18.18ms | 66.89ms | 12.85ms | 21.30ms | 35.44ms | 46.08ms |
| comp_1to4 | 15.82ms | 21.47ms | 26.08ms | 99.18ms | 23.75ms | 14.57ms | 20.99ms | 45.42ms |
| comp_1to8 | 4.61ms | 22.71ms | 5.14ms | 116.37ms | 4.81ms | 6.72ms | 19.84ms | 41.44ms |
| comp_1to1000 | 3.24ms | 14.89ms | 5.93ms | 47.90ms | 3.91ms | 4.43ms | 15.62ms | 36.54ms |
| update_1to1 | 12.22ms | 25.32ms | 10.04ms | N/A | 81.31ms | 9.24ms | 16.42ms | 5.55ms |
| update_2to1 | 4.96ms | 12.34ms | 4.07ms | N/A | 41.38ms | 4.60ms | 8.51ms | 3.27ms |
| update_4to1 | 2.84ms | 6.64ms | 2.06ms | N/A | 20.45ms | 2.29ms | 4.03ms | 1.49ms |
| update_1000to1 | 24μs | 63μs | 18μs | N/A | 178μs | 23μs | 40μs | 15μs |
| update_1to2 | 5.64ms | 13.01ms | 4.06ms | N/A | 42.37ms | 4.91ms | 8.05ms | 2.92ms |
| update_1to4 | 2.48ms | 6.29ms | 2.06ms | N/A | 20.35ms | 2.29ms | 4.02ms | 1.49ms |
| update_1to1000 | 47μs | 162μs | 822μs | N/A | 95μs | 52μs | 157μs | 389μs |
| cellx1000 | 7.26ms | 69.40ms | 9.30ms | N/A | N/A | 9.13ms | 11.19ms | 5.07ms |
| cellx2500 | 18.96ms | 247.74ms | 24.64ms | N/A | N/A | 29.89ms | 29.97ms | 25.76ms |
| cellx5000 | 41.13ms | 543.59ms | 60.36ms | N/A | N/A | 55.42ms | 61.96ms | 63.20ms |
| 10x5 - 2 sources - read 20.0% (simple) | 229.37ms | 2.04s | 443.95ms | N/A | 2.29s | 504.16ms | 345.45ms | 243.26ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 175.96ms | 1.58s | 275.84ms | N/A | 1.50s (partial) | 280.75ms | 242.56ms | 200.88ms |
| 1000x12 - 4 sources - dynamic (large) | 279.69ms | 1.84s | 3.36s | N/A | 2.51s (partial) | 3.70s | 458.10ms | 336.04ms |
| 1000x5 - 25 sources (wide dense) | 403.09ms | 3.61s | 2.58s | N/A | 4.26s | 3.38s | 579.63ms | 501.93ms |
| 5x500 - 3 sources (deep) | 186.94ms | 1.14s | 231.21ms | N/A | 1.35s | 223.76ms | 252.00ms | 202.20ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 261.70ms | 1.71s | 436.18ms | N/A | 1.72s (partial) | 480.71ms | 383.14ms | 256.99ms |

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
