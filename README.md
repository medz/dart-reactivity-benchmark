# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Score Ranking

<!-- ranking start -->
| Rank | Framework | Score | Success Rate | Tests | Time |
|------|-----------|-------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 0.70 | 100.0% | 35/35 | 3.75s |
| 🥈 | [preact_signals](https://pub.dev/packages/preact_signals) | 0.27 | 100.0% | 35/35 | 10.09s |
| 🥉 | [solidart(2.0-dev)](https://github.com/nank1ro/solidart/tree/dev) | 0.27 | 100.0% | 35/35 | 5.33s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 0.26 | 100.0% | 35/35 | 11.35s |
| 5 | mobx | 0.05 | 100.0% | 35/35 | 27.45s |
| 6 | [reactter](https://github.com/2devs-team/reactter) | 0.00 | 51.4% | 18/35 | 53.76s |
| 7 | [state_beacon](https://github.com/jinyus/dart_beacon) | 0.00 | 77.1% | 27/35 | 3.46s |
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
| avoidablePropagation | 277.67ms | 206.67ms | 2.29s | 188.61ms | 1.25s | 211.40ms | 153.42ms (fail) | 1.43s |
| broadPropagation | 507.99ms | 460.16ms | 4.22s | 364.40ms | 4.99s | 467.72ms | 6.42ms (fail) | 90.54ms (fail) |
| deepPropagation | 169.18ms | 182.56ms | 1.52s | 123.46ms | 4.00s | 181.77ms | 141.06ms (fail) | 2.13s (fail) |
| diamond | 357.10ms | 285.14ms | 2.40s | 244.44ms | 14.03s (fail) | 291.71ms | 195.44ms (fail) | 3.13s (fail) |
| mux | 449.00ms | 394.32ms | 1.84s | 385.03ms | 1.02s | 420.47ms | 196.98ms (fail) | 590.01ms (fail) |
| repeatedObservers | 79.72ms | 38.15ms | 227.32ms | 45.88ms | 9.74s | 46.86ms | 53.77ms (fail) | 417.66ms (fail) |
| triangle | 120.30ms | 103.77ms | 766.04ms | 85.84ms | 4.52s | 104.94ms | 80.88ms (fail) | 999.87ms (fail) |
| unstable | 96.02ms | 70.35ms | 346.36ms | 61.90ms | 7.64s | 72.08ms | 347.59ms (fail) | 634.61ms (fail) |
| molBench | 499.41ms | 497.50ms | 577.58ms | 496.63ms | 5.90s | 495.59ms | 902μs | 12.53ms |
| create_signals | 73.73ms | 4.96ms | 71.52ms | 24.73ms | 13.34ms | 31.80ms | 60.86ms | 27.07ms |
| comp_0to1 | 31.01ms | 23.94ms | 24.43ms | 9.51ms | 13.68ms | 13.77ms | 55.35ms | 14.05ms |
| comp_1to1 | 47.81ms | 13.87ms | 17.02ms | 4.93ms | 99.56ms | 29.74ms | 55.83ms | 22.68ms |
| comp_2to1 | 19.87ms | 16.57ms | 11.21ms | 2.70ms | 72.37ms | 10.14ms | 38.12ms | 24.15ms |
| comp_4to1 | 9.70ms | 14.24ms | 26.68ms | 8.18ms | 85.23ms | 2.19ms | 17.40ms | 6.45ms |
| comp_1000to1 | 28μs | 5μs | 15μs | 4μs | 59.32ms | 5μs | 42μs | 3μs |
| comp_1to2 | 37.57ms | 11.51ms | 39.18ms | 10.02ms | 66.89ms | 21.43ms | 46.07ms | 11.62ms |
| comp_1to4 | 25.84ms | 29.04ms | 22.20ms | 12.61ms | 99.18ms | 10.30ms | 44.60ms | 27.36ms |
| comp_1to8 | 25.69ms | 6.28ms | 24.40ms | 5.34ms | 116.37ms | 6.95ms | 44.25ms | 4.98ms |
| comp_1to1000 | 15.12ms | 5.96ms | 15.34ms | 3.87ms | 47.90ms | 4.67ms | 38.71ms | 4.50ms |
| update_1to1 | 16.20ms | 8.30ms | 22.61ms | 9.02ms | 9.25ms | 6.10ms | 86.97ms |
| update_2to1 | 9.86ms | 4.23ms | 12.13ms | 2.66ms | 4.57ms | 3.42ms | 44.05ms |
| update_4to1 | 4.31ms | 2.16ms | 6.42ms | 1.36ms | 2.31ms | 1.68ms | 20.91ms |
| update_1000to1 | 42μs | 20μs | 65μs | 13μs | 27μs | 17μs | 194μs |
| update_1to2 | 8.04ms | 4.20ms | 10.97ms | 3.80ms | 4.83ms | 3.18ms | 44.42ms |
| update_1to4 | 4.04ms | 2.18ms | 6.17ms | 1.38ms | 2.28ms | 1.55ms | 20.96ms |
| update_1to1000 | 184μs | 165μs | 183μs | 42μs | 49μs | 372μs | 96μs |
| cellx1000 | 11.41ms | 12.30ms | 69.76ms | 7.43ms | 9.98ms | 5.84ms |
| cellx2500 | 35.96ms | 28.65ms | 241.35ms | 20.94ms | 37.92ms | 27.88ms |
| cellx5000 | 80.23ms | 80.82ms | 548.95ms | 49.15ms | 86.63ms | 74.78ms |
| 10x5 - 2 sources - read 20.0% (simple) | 356.61ms | 446.28ms | 2.00s | 234.03ms | 510.62ms | 252.21ms | 2.30s |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 247.90ms | 277.35ms | 1.56s | 183.00ms | 280.39ms | 202.42ms | 1.51s (partial) |
| 1000x12 - 4 sources - dynamic (large) | 470.72ms | 3.55s | 1.95s | 287.22ms | 3.71s | 344.88ms | 2.61s (partial) |
| 1000x5 - 25 sources (wide dense) | 599.75ms | 2.62s | 3.67s | 419.77ms | 3.56s | 494.37ms | 4.29s |
| 5x500 - 3 sources (deep) | 259.16ms | 229.05ms | 1.18s | 190.81ms | 225.16ms | 204.55ms | 1.38s |
| 100x15 - 6 sources - dynamic (very dynamic) | 384.86ms | 456.31ms | 1.73s | 266.02ms | 481.70ms | 258.16ms | 1.79s (partial) |

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
