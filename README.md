# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Score Ranking

<!-- ranking start -->
| Rank | Framework | Score | Success Rate | Tests | Time |
|------|-----------|-------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 0.66 | 100.0% | 35/35 | 3.74s |
| 🥈 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 0.28 | 100.0% | 35/35 | 5.27s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 0.28 | 100.0% | 35/35 | 10.04s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 0.26 | 100.0% | 35/35 | 11.23s |
| 5 | mobx | 0.05 | 100.0% | 35/35 | 27.45s |
| 6 | [reactter](https://github.com/2devs-team/reactter) | 0.00 | 51.4% | 18/35 | 53.76s |
| 7 | [state_beacon](https://github.com/jinyus/dart_beacon) | 0.00 | 77.1% | 27/35 | 3.45s |
| 8 | riverpod | 0.00 | 62.9% | 22/35 | 23.68s |

<!-- ranking end -->

> [!TIP]
> ## Ranking algorithm
>
> The ranking system evaluates frameworks based on multiple factors:
>
> 1. **Test Case Scores**
>    - For each test case, the fastest passing implementation (with coefficient ≥ 0.5) serves as the baseline
>    - Individual test scores are calculated as: `(baseline_time / actual_time) * coefficient * weight`
>    - Test case weights are assigned based on operation types:
>      - Regular operations: 1.0
>      - Extended operations: 1.2-1.5
>
> 2. **Success Coefficient**
>    - Full pass (coefficient = 1.0): Test completely successful
>    - Partial pass (coefficient = 0.5): Part of the test failed
>    - Complete fail (coefficient = 0): Test failed entirely
>
> 3. **Final Score Calculation**
>    - Base score: Geometric mean of all weighted test case scores
>    - Time factor: sqrt(fastest_total_time / framework_total_time)
>    - Final score = base_score * time_factor
>
> This scoring system balances individual test performance with overall execution time while accounting for test reliability.

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | [preact_signals](https://pub.dev/packages/preact_signals) | mobx | [alien_signals](https://github.com/medz/alien-signals-dart) | [reactter](https://github.com/2devs-team/reactter) | [signals](https://github.com/rodydavis/signals.dart) | [state_beacon](https://github.com/jinyus/dart_beacon) | riverpod |
|---|---|---|---|---|---|---|---|---|
| avoidablePropagation | 285.95ms | 205.61ms | 2.29s | 188.89ms | 1.25s | 211.04ms | 149.53ms (fail) | 1.43s |
| broadPropagation | 503.14ms | 460.75ms | 4.22s | 359.11ms | 4.99s | 462.67ms | 6.03ms (fail) | 90.54ms (fail) |
| deepPropagation | 166.43ms | 177.91ms | 1.52s | 125.00ms | 4.00s | 181.89ms | 142.26ms (fail) | 2.13s (fail) |
| diamond | 348.80ms | 280.51ms | 2.40s | 238.23ms | 14.03s (fail) | 287.64ms | 190.84ms (fail) | 3.13s (fail) |
| mux | 443.77ms | 384.68ms | 1.84s | 375.14ms | 1.02s | 415.36ms | 192.26ms (fail) | 590.01ms (fail) |
| repeatedObservers | 81.27ms | 38.24ms | 227.32ms | 45.31ms | 9.74s | 46.38ms | 52.58ms (fail) | 417.66ms (fail) |
| triangle | 119.75ms | 99.09ms | 766.04ms | 83.72ms | 4.52s | 102.56ms | 78.63ms (fail) | 999.87ms (fail) |
| unstable | 94.75ms | 70.45ms | 346.36ms | 61.42ms | 7.64s | 72.81ms | 337.58ms (fail) | 634.61ms (fail) |
| molBench | 493.25ms | 491.25ms | 577.58ms | 492.45ms | 5.90s | 487.41ms | 1.29ms | 12.53ms |
| create_signals | 52.28ms | 4.72ms | 71.52ms | 27.03ms | 13.34ms | 26.77ms | 59.79ms | 27.07ms |
| comp_0to1 | 29.69ms | 17.67ms | 24.43ms | 8.08ms | 13.68ms | 12.42ms | 53.51ms | 14.05ms |
| comp_1to1 | 32.35ms | 12.25ms | 17.02ms | 4.19ms | 99.56ms | 29.02ms | 54.67ms | 22.68ms |
| comp_2to1 | 25.27ms | 20.07ms | 11.21ms | 2.33ms | 72.37ms | 9.91ms | 37.10ms | 24.15ms |
| comp_4to1 | 14.92ms | 7.89ms | 26.68ms | 8.51ms | 85.23ms | 1.84ms | 17.17ms | 6.45ms |
| comp_1000to1 | 15μs | 5μs | 15μs | 3μs | 59.32ms | 5μs | 42μs | 3μs |
| comp_1to2 | 28.22ms | 30.62ms | 39.18ms | 11.35ms | 66.89ms | 22.65ms | 45.20ms | 11.62ms |
| comp_1to4 | 31.20ms | 21.15ms | 22.20ms | 9.34ms | 99.18ms | 13.26ms | 43.90ms | 27.36ms |
| comp_1to8 | 24.25ms | 10.73ms | 24.40ms | 6.12ms | 116.37ms | 9.25ms | 43.40ms | 4.98ms |
| comp_1to1000 | 17.84ms | 4.49ms | 15.34ms | 3.69ms | 47.90ms | 4.64ms | 38.18ms | 4.50ms |
| update_1to1 | 18.07ms | 8.21ms | 22.61ms | 11.37ms | 9.28ms | 5.74ms | 86.97ms |
| update_2to1 | 8.00ms | 4.05ms | 12.13ms | 5.25ms | 4.61ms | 3.79ms | 44.05ms |
| update_4to1 | 4.14ms | 2.10ms | 6.42ms | 2.79ms | 2.35ms | 1.49ms | 20.91ms |
| update_1000to1 | 41μs | 36μs | 65μs | 22μs | 23μs | 15μs | 194μs |
| update_1to2 | 8.13ms | 4.09ms | 10.97ms | 5.68ms | 4.94ms | 2.98ms | 44.42ms |
| update_1to4 | 4.08ms | 2.18ms | 6.17ms | 2.54ms | 2.36ms | 1.50ms | 20.96ms |
| update_1to1000 | 159μs | 64μs | 183μs | 41μs | 46μs | 367μs | 96μs |
| cellx1000 | 11.85ms | 12.70ms | 69.76ms | 8.10ms | 12.46ms | 6.36ms |
| cellx2500 | 32.20ms | 33.39ms | 241.35ms | 24.94ms | 45.18ms | 29.12ms |
| cellx5000 | 78.82ms | 90.85ms | 548.95ms | 62.15ms | 118.93ms | 81.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 358.31ms | 439.49ms | 2.00s | 237.05ms | 510.75ms | 269.39ms | 2.30s |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 251.59ms | 280.19ms | 1.56s | 178.00ms | 286.55ms | 198.63ms | 1.51s (partial) |
| 1000x12 - 4 sources - dynamic (large) | 466.94ms | 3.55s | 1.95s | 282.71ms | 3.75s | 349.25ms | 2.61s (partial) |
| 1000x5 - 25 sources (wide dense) | 595.87ms | 2.59s | 3.67s | 415.96ms | 3.37s | 496.07ms | 4.29s |
| 5x500 - 3 sources (deep) | 253.66ms | 235.43ms | 1.18s | 191.33ms | 230.94ms | 205.91ms | 1.38s |
| 100x15 - 6 sources - dynamic (very dynamic) | 383.49ms | 454.86ms | 1.73s | 265.19ms | 476.25ms | 253.52ms | 1.79s (partial) |

<!-- test-case end -->

> [!TIP]
> - `(fail)`: Test case failed
> - `(half)`: Half of the test cases failed

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
