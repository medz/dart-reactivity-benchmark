# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Score Ranking

<!-- ranking start -->
| Rank | Framework | Score | Success Rate | Tests | Time |
|------|-----------|-------|--------------|-------|------|
| 🥇 | alien_signals | 0.65 | 100.0% | 35/35 | 3.71s |
| 🥈 | solidart(2.0-dev) | 0.26 | 100.0% | 35/35 | 5.35s |
| 🥉 | signals | 0.24 | 100.0% | 35/35 | 11.18s |
| 4 | preact_signals | 0.24 | 100.0% | 35/35 | 9.99s |
| 5 | mobx | 0.05 | 100.0% | 35/35 | 27.45s |
| 6 | state_beacon | 0.00 | 77.1% | 27/35 | 3.40s |
| 7 | riverpod | 0.00 | 62.9% | 22/35 | 23.68s |

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
| Test Case | solidart(2.0-dev) | preact_signals | mobx | alien_signals | signals | state_beacon | riverpod |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 275.62ms | 208.55ms | 2.29s | 188.83ms | 208.03ms | 155.17ms (fail) | 1.43s |
| broadPropagation | 512.43ms | 457.83ms | 4.22s | 357.63ms | 453.35ms | 5.86ms (fail) | 90.54ms (fail) |
| deepPropagation | 177.82ms | 180.12ms | 1.52s | 126.88ms | 181.60ms | 140.50ms (fail) | 2.13s (fail) |
| diamond | 355.71ms | 280.27ms | 2.40s | 236.01ms | 289.81ms | 187.96ms (fail) | 3.13s (fail) |
| mux | 440.35ms | 385.75ms | 1.84s | 367.97ms | 406.28ms | 192.14ms (fail) | 590.01ms (fail) |
| repeatedObservers | 80.99ms | 38.19ms | 227.32ms | 45.59ms | 45.94ms | 52.18ms (fail) | 417.66ms (fail) |
| triangle | 118.04ms | 99.06ms | 766.04ms | 82.53ms | 105.50ms | 76.30ms (fail) | 999.87ms (fail) |
| unstable | 96.64ms | 70.82ms | 346.36ms | 61.00ms | 75.94ms | 339.99ms (fail) | 634.61ms (fail) |
| molBench | 493.32ms | 491.51ms | 577.58ms | 491.33ms | 483.89ms | 1.08ms | 12.53ms |
| create_signals | 93.68ms | 4.68ms | 71.52ms | 27.83ms | 25.19ms | 61.54ms | 27.07ms |
| comp_0to1 | 35.41ms | 17.62ms | 24.43ms | 8.05ms | 12.03ms | 51.34ms | 14.05ms |
| comp_1to1 | 50.44ms | 10.93ms | 17.02ms | 4.28ms | 27.95ms | 58.67ms | 22.68ms |
| comp_2to1 | 44.46ms | 21.28ms | 11.21ms | 2.31ms | 9.18ms | 39.09ms | 24.15ms |
| comp_4to1 | 12.94ms | 18.34ms | 26.68ms | 8.77ms | 1.91ms | 16.18ms | 6.45ms |
| comp_1000to1 | 15μs | 6μs | 15μs | 3μs | 7μs | 40μs | 3μs |
| comp_1to2 | 25.08ms | 16.39ms | 39.18ms | 20.43ms | 16.50ms | 43.69ms | 11.62ms |
| comp_1to4 | 15.42ms | 38.90ms | 22.20ms | 6.91ms | 19.99ms | 43.33ms | 27.36ms |
| comp_1to8 | 20.16ms | 7.69ms | 24.40ms | 4.72ms | 15.62ms | 41.71ms | 4.98ms |
| comp_1to1000 | 14.78ms | 8.37ms | 15.34ms | 3.71ms | 6.51ms | 37.51ms | 4.50ms |
| update_1to1 | 16.18ms | 8.26ms | 22.61ms | 11.27ms | 9.27ms | 5.79ms | 86.97ms |
| update_2to1 | 7.95ms | 4.11ms | 12.13ms | 4.92ms | 4.59ms | 2.87ms | 44.05ms |
| update_4to1 | 4.03ms | 2.08ms | 6.42ms | 2.76ms | 2.31ms | 1.46ms | 20.91ms |
| update_1000to1 | 40μs | 20μs | 65μs | 10μs | 22μs | 15μs | 194μs |
| update_1to2 | 8.08ms | 4.07ms | 10.97ms | 5.59ms | 4.75ms | 2.94ms | 44.42ms |
| update_1to4 | 4.05ms | 2.08ms | 6.17ms | 2.45ms | 2.34ms | 1.46ms | 20.96ms |
| update_1to1000 | 152μs | 2.32ms | 183μs | 48μs | 43μs | 369μs | 96μs |
| cellx1000 | 11.18ms | 9.75ms | 69.76ms | 7.28ms | 9.48ms | 5.06ms |
| cellx2500 | 30.59ms | 25.21ms | 241.35ms | 19.52ms | 30.81ms | 25.22ms |
| cellx5000 | 67.30ms | 63.36ms | 548.95ms | 41.41ms | 59.33ms | 67.45ms |
| 10x5 - 2 sources - read 20.0% (simple) | 359.45ms | 447.34ms | 2.00s | 252.71ms | 505.23ms | 238.02ms | 2.30s |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 273.01ms | 279.82ms | 1.56s | 176.71ms | 280.50ms | 200.47ms | 1.51s (partial) |
| 1000x12 - 4 sources - dynamic (large) | 463.86ms | 3.51s | 1.95s | 281.75ms | 3.73s | 337.65ms | 2.61s (partial) |
| 1000x5 - 25 sources (wide dense) | 597.76ms | 2.59s | 3.67s | 402.47ms | 3.45s | 505.50ms | 4.29s |
| 5x500 - 3 sources (deep) | 255.30ms | 228.28ms | 1.18s | 191.37ms | 227.05ms | 203.24ms | 1.38s |
| 100x15 - 6 sources - dynamic (very dynamic) | 387.16ms | 454.43ms | 1.73s | 261.43ms | 478.80ms | 259.61ms | 1.79s (partial) |

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
