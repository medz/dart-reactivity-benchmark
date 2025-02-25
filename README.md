# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Score Ranking

<!-- ranking start -->
| Rank | Framework | Score | Success Rate | Tests | Time |
|------|-----------|-------|--------------|-------|------|
| 🥇 | alien_signals | 0.66 | 100.0% | 35/35 | 3.72s |
| 🥈 | solidart(2.0-dev) | 0.27 | 100.0% | 35/35 | 5.30s |
| 🥉 | signals | 0.26 | 100.0% | 35/35 | 11.32s |
| 4 | preact_signals | 0.26 | 100.0% | 35/35 | 10.01s |
| 5 | mobx | 0.05 | 100.0% | 35/35 | 27.77s |
| 6 | state_beacon | 0.00 | 77.1% | 27/35 | 3.41s |

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
| Test Case | alien_signals | mobx | solidart(2.0-dev) | state_beacon | preact_signals | signals |
|---|---|---|---|---|---|---|
| avoidablePropagation | 188.05ms | 2.31s | 272.80ms | 159.09ms (fail) | 210.14ms | 208.24ms |
| broadPropagation | 360.46ms | 4.37s | 518.64ms | 6.03ms (fail) | 453.23ms | 456.03ms |
| deepPropagation | 127.16ms | 1.55s | 178.32ms | 139.86ms (fail) | 181.96ms | 172.15ms |
| diamond | 237.58ms | 2.46s | 352.65ms | 179.90ms (fail) | 283.88ms | 286.52ms |
| mux | 375.77ms | 1.82s | 445.83ms | 193.77ms (fail) | 386.93ms | 413.18ms |
| repeatedObservers | 45.61ms | 230.10ms | 79.04ms | 52.30ms (fail) | 38.67ms | 45.90ms |
| triangle | 86.45ms | 786.16ms | 133.76ms | 76.89ms (fail) | 101.85ms | 101.92ms |
| unstable | 60.61ms | 351.71ms | 93.89ms | 335.83ms (fail) | 71.30ms | 75.36ms |
| molBench | 492.15ms | 545.48ms | 492.84ms | 921μs | 490.93ms | 490.30ms |
| create_signals | 21.82ms | 57.77ms | 72.57ms | 68.16ms | 4.64ms | 24.66ms |
| comp_0to1 | 10.20ms | 18.08ms | 25.91ms | 55.73ms | 17.33ms | 11.58ms |
| comp_1to1 | 4.20ms | 36.54ms | 36.43ms | 55.01ms | 11.05ms | 27.68ms |
| comp_2to1 | 2.34ms | 8.56ms | 23.94ms | 35.32ms | 17.69ms | 9.90ms |
| comp_4to1 | 7.71ms | 25.90ms | 14.03ms | 16.32ms | 8.24ms | 2.29ms |
| comp_1000to1 | 4μs | 15μs | 16μs | 40μs | 6μs | 5μs |
| comp_1to2 | 10.69ms | 43.57ms | 30.55ms | 43.99ms | 26.71ms | 19.86ms |
| comp_1to4 | 8.97ms | 24.01ms | 22.55ms | 43.31ms | 24.84ms | 10.42ms |
| comp_1to8 | 5.13ms | 21.07ms | 22.64ms | 42.43ms | 6.17ms | 6.65ms |
| comp_1to1000 | 3.60ms | 15.16ms | 14.97ms | 37.77ms | 6.32ms | 4.67ms |
| update_1to1 | 10.74ms | 22.17ms | 16.16ms | 5.74ms | 8.17ms | 9.24ms |
| update_2to1 | 4.92ms | 10.74ms | 7.93ms | 2.88ms | 4.09ms | 4.55ms |
| update_4to1 | 2.85ms | 5.52ms | 4.03ms | 1.48ms | 2.11ms | 2.32ms |
| update_1000to1 | 10μs | 59μs | 40μs | 15μs | 20μs | 23μs |
| update_1to2 | 5.07ms | 11.10ms | 8.12ms | 2.95ms | 4.10ms | 4.93ms |
| update_1to4 | 2.50ms | 5.45ms | 4.03ms | 1.51ms | 2.06ms | 2.47ms |
| update_1to1000 | 61μs | 179μs | 149μs | 367μs | 921μs | 44μs |
| cellx1000 | 7.58ms | 71.45ms | 11.23ms | 5.06ms | 9.71ms | 9.87ms |
| cellx2500 | 20.15ms | 254.30ms | 35.25ms | 23.50ms | 26.26ms | 32.66ms |
| cellx5000 | 46.10ms | 572.39ms | 74.89ms | 68.41ms | 71.19ms | 64.70ms |
| 10x5 - 2 sources - read 20.0% (simple) | 243.40ms | 2.13s | 346.29ms | 240.08ms | 449.53ms | 512.58ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 178.93ms | 1.57s | 244.11ms | 203.42ms | 274.68ms | 278.97ms |
| 1000x12 - 4 sources - dynamic (large) | 280.57ms | 1.93s | 487.01ms | 344.58ms | 3.53s | 3.76s |
| 1000x5 - 25 sources (wide dense) | 410.09ms | 3.60s | 596.10ms | 503.40ms | 2.61s | 3.56s |
| 5x500 - 3 sources (deep) | 191.69ms | 1.17s | 255.55ms | 207.25ms | 230.96ms | 225.55ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 265.40ms | 1.73s | 375.32ms | 260.13ms | 449.22ms | 479.51ms |

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
