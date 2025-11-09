# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.18s |
| 🥈 | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.66s |
| 🥉 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 4.90s |
| 4 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 8.74s |
| 5 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 9.62s |
| 6 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 27.40s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.20s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 23.77s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals 1.0](https://github.com/medz/alien-signals-dart) | [alien_signals 2.0 beta](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 144.74ms | 170.87ms | 2.30s | 192.30ms | 1.33s | 200.05ms | 229.14ms | 143.95ms (fail) |
| broadPropagation | 238.18ms | 297.39ms | 4.21s | 429.33ms | 68.51ms (fail) | 395.22ms | 434.00ms | 5.77ms (fail) |
| deepPropagation | 89.11ms | 117.50ms | 1.51s | 179.79ms | 2.19s (fail) | 173.13ms | 132.62ms | 158.56ms (fail) |
| diamond | 174.74ms | 221.41ms | 2.34s | 252.83ms | 2.90s (fail) | 255.35ms | 310.87ms | 182.06ms (fail) |
| mux | 318.89ms | 339.64ms | 1.82s | 349.44ms | 578.05ms (fail) | 354.06ms | 391.65ms | 172.54ms (fail) |
| repeatedObservers | 42.98ms | 41.47ms | 223.73ms | 33.65ms | 388.05ms (fail) | 38.38ms | 92.23ms | 46.73ms (fail) |
| triangle | 62.84ms | 80.90ms | 770.49ms | 92.16ms | 918.78ms (fail) | 91.94ms | 102.47ms | 76.47ms (fail) |
| unstable | 55.79ms | 65.17ms | 327.70ms | 58.87ms | 630.67ms (fail) | 64.23ms | 111.88ms | 321.36ms (fail) |
| molBench | 367.09ms | 387.94ms | 463.18ms | 364.90ms | 11.56ms | 367.27ms | 371.50ms | 949μs |
| create_signals | 33.41ms | 30.73ms | 49.60ms | 6.51ms | 26.32ms | 26.55ms | 70.98ms | 60.98ms |
| comp_0to1 | 9.60ms | 20.88ms | 19.46ms | 20.00ms | 16.23ms | 13.52ms | 25.46ms | 51.85ms |
| comp_1to1 | 16.18ms | 16.61ms | 52.30ms | 19.13ms | 30.59ms | 20.66ms | 26.38ms | 54.65ms |
| comp_2to1 | 11.83ms | 13.75ms | 23.29ms | 27.85ms | 30.49ms | 11.60ms | 47.16ms | 40.27ms |
| comp_4to1 | 13.14ms | 32.03ms | 25.26ms | 19.15ms | 3.20ms | 2.88ms | 20.89ms | 16.67ms |
| comp_1000to1 | 5μs | 6μs | 17μs | 12μs | 7μs | 7μs | 17μs | 44μs |
| comp_1to2 | 23.18ms | 7.99ms | 41.31ms | 23.30ms | 19.01ms | 28.91ms | 32.40ms | 46.29ms |
| comp_1to4 | 28.85ms | 15.40ms | 25.36ms | 39.06ms | 31.30ms | 16.91ms | 40.70ms | 50.06ms |
| comp_1to8 | 8.55ms | 9.50ms | 25.55ms | 8.32ms | 7.63ms | 9.39ms | 19.06ms | 45.55ms |
| comp_1to1000 | 7.33ms | 6.35ms | 16.35ms | 7.76ms | 6.72ms | 6.32ms | 16.80ms | 39.28ms |
| update_1to1 | 5.32ms | 7.19ms | 22.26ms | 9.56ms | 87.69ms | 10.97ms | 16.60ms | 4.88ms |
| update_2to1 | 2.82ms | 3.68ms | 11.34ms | 4.61ms | 46.71ms | 5.41ms | 7.83ms | 2.42ms |
| update_4to1 | 1.40ms | 1.96ms | 6.08ms | 2.41ms | 21.91ms | 2.67ms | 3.93ms | 1.26ms |
| update_1000to1 | 13μs | 18μs | 53μs | 25μs | 262μs | 27μs | 39μs | 12μs |
| update_1to2 | 2.86ms | 3.55ms | 11.28ms | 4.79ms | 46.54ms | 5.42ms | 7.79ms | 2.47ms |
| update_1to4 | 1.52ms | 1.83ms | 5.50ms | 2.52ms | 22.30ms | 2.77ms | 3.93ms | 1.23ms |
| update_1to1000 | 55μs | 65μs | 173μs | 576μs | 155μs | 63μs | 163μs | 406μs |
| cellx1000 | 9.92ms | 12.13ms | 92.26ms | 10.70ms | N/A | 11.59ms | 18.00ms | 9.87ms |
| cellx2500 | 40.27ms | 34.75ms | 286.65ms | 28.10ms | N/A | 40.91ms | 60.53ms | 37.16ms |
| cellx5000 | 113.97ms | 77.11ms | 604.10ms | 82.51ms | N/A | 93.10ms | 166.83ms | 103.92ms |
| 10x5 - 2 sources - read 20.0% (simple) | 189.43ms | 239.00ms | 2.17s | 395.43ms | 2.38s | 424.88ms | 317.59ms | 230.67ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 147.13ms | 181.03ms | 1.58s | 235.33ms | 1.49s (partial) | 237.98ms | 233.63ms | 174.92ms |
| 1000x12 - 4 sources - dynamic (large) | 245.53ms | 320.37ms | 1.79s | 2.98s | 2.85s (partial) | 3.34s | 385.86ms | 302.85ms |
| 1000x5 - 25 sources (wide dense) | 396.31ms | 454.38ms | 3.62s | 2.26s | 4.30s | 2.75s | 639.91ms | 385.63ms |
| 5x500 - 3 sources (deep) | 173.53ms | 205.76ms | 1.21s | 220.40ms | 1.46s | 219.43ms | 276.16ms | 207.62ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 200.26ms | 244.58ms | 1.75s | 374.71ms | 1.87s (partial) | 400.77ms | 289.28ms | 219.49ms |

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
