# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.70s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 100.0% | 35/35 | 5.34s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 9.98s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.46s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.46s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.42s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.19s |
| [reactter](https://github.com/2devs-team/reactter) | 51.4% | 18/35 | 53.76s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [reactter](https://github.com/2devs-team/reactter) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 187.05ms | 2.27s | 204.94ms | 1.25s | 1.44s | 246.41ms | 274.69ms | 152.97ms (fail) |
| broadPropagation | 358.19ms | 4.28s | 477.57ms | 4.99s | 82.66ms (fail) | 452.96ms | 501.03ms | 6.30ms (fail) |
| deepPropagation | 122.86ms | 1.54s | 179.20ms | 4.00s | 1.95s (fail) | 175.88ms | 171.18ms | 144.36ms (fail) |
| diamond | 240.91ms | 2.37s | 280.69ms | 14.03s (fail) | 2.60s (fail) | 308.55ms | 364.52ms | 191.60ms (fail) |
| mux | 375.51ms | 1.83s | 384.57ms | 1.02s | 600.89ms (fail) | 410.24ms | 440.67ms | 191.06ms (fail) |
| repeatedObservers | 45.37ms | 224.22ms | 38.12ms | 9.74s | 386.00ms (fail) | 49.24ms | 78.02ms | 53.21ms (fail) |
| triangle | 84.30ms | 790.73ms | 99.54ms | 4.52s | 904.88ms (fail) | 104.36ms | 116.25ms | 76.94ms (fail) |
| unstable | 61.76ms | 350.98ms | 70.57ms | 7.64s | 617.01ms (fail) | 77.23ms | 93.66ms | 338.75ms (fail) |
| molBench | 492.89ms | 583.05ms | 492.66ms | 5.90s | 12.41ms | 484.23ms | 493.88ms | 1.14ms |
| create_signals | 23.29ms | 65.11ms | 5.00ms | 13.34ms | 24.19ms | 26.82ms | 91.16ms | 60.97ms |
| comp_0to1 | 8.79ms | 15.78ms | 22.83ms | 13.68ms | 14.45ms | 11.91ms | 34.87ms | 53.45ms |
| comp_1to1 | 4.46ms | 35.86ms | 11.58ms | 99.56ms | 21.54ms | 27.44ms | 51.44ms | 53.77ms |
| comp_2to1 | 2.39ms | 33.45ms | 17.03ms | 72.37ms | 24.98ms | 10.85ms | 39.13ms | 36.22ms |
| comp_4to1 | 7.90ms | 18.49ms | 8.81ms | 85.23ms | 6.88ms | 2.07ms | 19.89ms | 16.56ms |
| comp_1000to1 | 6μs | 20μs | 27μs | 59.32ms | 5μs | 7μs | 14μs | 42μs |
| comp_1to2 | 11.03ms | 38.47ms | 15.85ms | 66.89ms | 15.85ms | 21.31ms | 32.97ms | 44.76ms |
| comp_1to4 | 11.75ms | 24.45ms | 20.60ms | 99.18ms | 23.34ms | 13.31ms | 20.96ms | 44.41ms |
| comp_1to8 | 5.00ms | 22.71ms | 7.59ms | 116.37ms | 5.15ms | 7.02ms | 23.07ms | 43.13ms |
| comp_1to1000 | 3.69ms | 15.15ms | 4.82ms | 47.90ms | 4.01ms | 4.70ms | 14.92ms | 38.15ms |
| update_1to1 | 11.25ms | 23.02ms | 8.19ms | N/A | 90.91ms | 9.19ms | 16.16ms | 5.77ms |
| update_2to1 | 2.85ms | 10.46ms | 4.10ms | N/A | 45.82ms | 4.55ms | 8.06ms | 2.87ms |
| update_4to1 | 2.78ms | 5.77ms | 2.10ms | N/A | 22.24ms | 2.31ms | 4.06ms | 1.47ms |
| update_1000to1 | 11μs | 59μs | 20μs | N/A | 194μs | 23μs | 40μs | 15μs |
| update_1to2 | 4.65ms | 12.67ms | 4.08ms | N/A | 47.37ms | 4.90ms | 8.12ms | 2.96ms |
| update_1to4 | 1.34ms | 5.51ms | 2.09ms | N/A | 22.96ms | 2.31ms | 4.04ms | 1.46ms |
| update_1to1000 | 42μs | 174μs | 79μs | N/A | 124μs | 44μs | 163μs | 382μs |
| cellx1000 | 7.15ms | 70.60ms | 9.60ms | N/A | N/A | 10.00ms | 11.63ms | 5.19ms |
| cellx2500 | 19.30ms | 263.69ms | 28.17ms | N/A | N/A | 32.02ms | 37.42ms | 26.73ms |
| cellx5000 | 41.81ms | 594.14ms | 70.30ms | N/A | N/A | 62.28ms | 73.70ms | 64.40ms |
| 10x5 - 2 sources - read 20.0% (simple) | 240.12ms | 2.04s | 443.52ms | N/A | 2.44s | 524.70ms | 384.77ms | 242.35ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 181.09ms | 1.57s | 271.23ms | N/A | 1.58s (partial) | 279.64ms | 242.62ms | 201.12ms |
| 1000x12 - 4 sources - dynamic (large) | 276.76ms | 1.87s | 3.54s | N/A | 2.64s (partial) | 3.97s | 465.82ms | 343.49ms |
| 1000x5 - 25 sources (wide dense) | 412.37ms | 3.59s | 2.58s | N/A | 4.31s | 3.42s | 585.25ms | 503.61ms |
| 5x500 - 3 sources (deep) | 189.23ms | 1.15s | 230.61ms | N/A | 1.41s | 226.02ms | 252.68ms | 205.61ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.65ms | 1.74s | 445.55ms | N/A | 1.85s (partial) | 472.94ms | 384.95ms | 259.99ms |

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
