# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.75s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.49s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.14s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.42s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.78s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.52s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 24.02s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 186.67ms | 2.31s | 199.24ms | 1.25s | 1.49s | 220.35ms | 275.98ms | 154.84ms (fail) |
| broadPropagation | 352.39ms | 4.24s | 457.28ms | 4.99s | 83.64ms (fail) | 444.80ms | 503.96ms | 6.21ms (fail) |
| deepPropagation | 124.28ms | 1.52s | 175.44ms | 4.00s | 1.98s (fail) | 171.46ms | 175.62ms | 143.01ms (fail) |
| diamond | 241.83ms | 2.37s | 282.09ms | 14.03s (fail) | 2.72s (fail) | 293.19ms | 348.29ms | 188.11ms (fail) |
| mux | 373.78ms | 1.83s | 390.44ms | 1.02s | 575.06ms (fail) | 412.14ms | 440.61ms | 192.48ms (fail) |
| repeatedObservers | 44.65ms | 226.99ms | 38.85ms | 9.74s | 387.02ms (fail) | 46.32ms | 79.05ms | 52.45ms (fail) |
| triangle | 86.42ms | 768.06ms | 99.26ms | 4.52s | 953.38ms (fail) | 105.13ms | 118.57ms | 77.36ms (fail) |
| unstable | 60.10ms | 346.00ms | 69.03ms | 7.64s | 619.15ms (fail) | 74.42ms | 93.94ms | 339.96ms (fail) |
| molBench | 492.13ms | 580.14ms | 492.42ms | 5.90s | 13.03ms | 491.19ms | 492.92ms | 1.31ms |
| create_signals | 27.61ms | 94.21ms | 4.91ms | 13.34ms | 25.47ms | 27.79ms | 79.78ms | 70.39ms |
| comp_0to1 | 7.98ms | 15.73ms | 19.07ms | 13.68ms | 15.18ms | 12.71ms | 27.07ms | 65.13ms |
| comp_1to1 | 4.24ms | 52.78ms | 11.40ms | 99.56ms | 24.62ms | 32.77ms | 49.39ms | 56.14ms |
| comp_2to1 | 2.34ms | 27.12ms | 13.75ms | 72.37ms | 24.86ms | 17.19ms | 37.67ms | 37.93ms |
| comp_4to1 | 8.88ms | 32.27ms | 15.87ms | 85.23ms | 5.61ms | 2.30ms | 10.30ms | 17.09ms |
| comp_1000to1 | 4μs | 26μs | 5μs | 59.32ms | 5μs | 6μs | 15μs | 42μs |
| comp_1to2 | 12.33ms | 34.12ms | 19.06ms | 66.89ms | 13.24ms | 20.45ms | 38.95ms | 46.58ms |
| comp_1to4 | 14.22ms | 22.93ms | 37.49ms | 99.18ms | 28.87ms | 14.10ms | 15.76ms | 44.82ms |
| comp_1to8 | 4.03ms | 24.95ms | 8.73ms | 116.37ms | 6.91ms | 9.81ms | 22.77ms | 43.31ms |
| comp_1to1000 | 3.29ms | 15.18ms | 7.53ms | 47.90ms | 6.00ms | 4.83ms | 15.30ms | 37.93ms |
| update_1to1 | 11.30ms | 21.26ms | 8.21ms | N/A | 93.25ms | 9.26ms | 16.23ms | 5.73ms |
| update_2to1 | 4.99ms | 11.90ms | 4.05ms | N/A | 46.91ms | 4.64ms | 8.01ms | 2.88ms |
| update_4to1 | 2.72ms | 6.17ms | 2.14ms | N/A | 22.81ms | 2.29ms | 4.08ms | 1.47ms |
| update_1000to1 | 10μs | 68μs | 37μs | N/A | 193μs | 23μs | 42μs | 14μs |
| update_1to2 | 5.59ms | 10.71ms | 4.18ms | N/A | 47.15ms | 4.91ms | 8.14ms | 2.94ms |
| update_1to4 | 2.41ms | 5.38ms | 2.08ms | N/A | 22.85ms | 2.29ms | 4.05ms | 1.47ms |
| update_1to1000 | 49μs | 165μs | 854μs | N/A | 105μs | 45μs | 151μs | 372μs |
| cellx1000 | 8.21ms | 96.77ms | 9.73ms | N/A | N/A | 9.80ms | 17.15ms | 6.07ms |
| cellx2500 | 21.49ms | 315.03ms | 30.36ms | N/A | N/A | 60.24ms | 83.84ms | 32.37ms |
| cellx5000 | 66.94ms | 658.39ms | 134.75ms | N/A | N/A | 120.95ms | 191.29ms | 96.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 236.07ms | 2.03s | 441.71ms | N/A | 2.46s | 512.20ms | 346.64ms | 250.20ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 179.02ms | 1.56s | 272.33ms | N/A | 1.62s (partial) | 278.51ms | 249.55ms | 206.21ms |
| 1000x12 - 4 sources - dynamic (large) | 289.22ms | 1.94s | 3.60s | N/A | 2.62s (partial) | 3.76s | 488.29ms | 358.31ms |
| 1000x5 - 25 sources (wide dense) | 419.11ms | 3.59s | 2.60s | N/A | 4.39s | 3.54s | 589.90ms | 510.25ms |
| 5x500 - 3 sources (deep) | 192.87ms | 1.21s | 232.89ms | N/A | 1.73s | 228.14ms | 255.76ms | 203.84ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 267.81ms | 1.81s | 454.59ms | N/A | 1.98s (partial) | 487.26ms | 397.16ms | 261.55ms |

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
