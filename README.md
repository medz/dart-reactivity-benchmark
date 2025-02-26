# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Score Ranking

<!-- ranking start -->
| Rank | Framework | Score | Success Rate | Tests | Time |
|------|-----------|-------|--------------|-------|------|
| 🥇 | alien_signals | 0.67 | 100.0% | 35/35 | 3.74s |
| 🥈 | solidart(2.0-dev) | 0.29 | 100.0% | 35/35 | 5.23s |
| 🥉 | preact_signals | 0.28 | 100.0% | 35/35 | 9.93s |
| 4 | signals | 0.27 | 100.0% | 35/35 | 11.26s |
| 5 | mobx | 0.05 | 100.0% | 35/35 | 27.36s |
| 6 | state_beacon | 0.00 | 77.1% | 27/35 | 3.39s |

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
| avoidablePropagation | 186.53ms | 2.35s | 270.83ms | 149.18ms (fail) | 204.63ms | 206.28ms |
| broadPropagation | 358.54ms | 4.29s | 506.80ms | 5.91ms (fail) | 452.73ms | 458.02ms |
| deepPropagation | 124.10ms | 1.51s | 171.22ms | 137.59ms (fail) | 177.04ms | 178.86ms |
| diamond | 235.51ms | 2.44s | 354.75ms | 180.25ms (fail) | 284.75ms | 297.48ms |
| mux | 376.34ms | 1.83s | 438.37ms | 190.72ms (fail) | 382.63ms | 415.01ms |
| repeatedObservers | 45.41ms | 233.67ms | 78.09ms | 53.06ms (fail) | 38.35ms | 46.50ms |
| triangle | 87.19ms | 778.77ms | 115.72ms | 79.68ms (fail) | 99.31ms | 103.92ms |
| unstable | 62.37ms | 362.45ms | 96.76ms | 335.78ms (fail) | 71.16ms | 73.59ms |
| molBench | 492.37ms | 581.13ms | 493.06ms | 1.22ms | 491.44ms | 489.06ms |
| create_signals | 27.36ms | 56.43ms | 73.99ms | 59.68ms | 4.57ms | 24.55ms |
| comp_0to1 | 8.36ms | 18.21ms | 32.23ms | 52.18ms | 17.57ms | 11.66ms |
| comp_1to1 | 4.14ms | 29.93ms | 27.19ms | 53.30ms | 11.58ms | 27.56ms |
| comp_2to1 | 2.28ms | 13.23ms | 24.81ms | 35.89ms | 16.84ms | 9.64ms |
| comp_4to1 | 8.56ms | 14.45ms | 9.62ms | 16.35ms | 12.12ms | 5.95ms |
| comp_1000to1 | 5μs | 15μs | 25μs | 41μs | 4μs | 5μs |
| comp_1to2 | 19.39ms | 45.07ms | 32.27ms | 44.88ms | 29.24ms | 18.89ms |
| comp_1to4 | 6.05ms | 22.46ms | 20.47ms | 47.96ms | 30.32ms | 9.64ms |
| comp_1to8 | 7.40ms | 23.22ms | 20.48ms | 44.01ms | 9.15ms | 6.45ms |
| comp_1to1000 | 3.48ms | 14.91ms | 14.44ms | 37.91ms | 6.93ms | 4.39ms |
| update_1to1 | 11.31ms | 21.67ms | 16.11ms | 5.73ms | 8.19ms | 9.17ms |
| update_2to1 | 5.01ms | 10.73ms | 7.91ms | 2.88ms | 4.04ms | 4.57ms |
| update_4to1 | 2.91ms | 5.48ms | 4.04ms | 1.47ms | 2.10ms | 2.33ms |
| update_1000to1 | 10μs | 53μs | 40μs | 15μs | 20μs | 23μs |
| update_1to2 | 5.63ms | 10.65ms | 12.73ms | 2.99ms | 4.05ms | 4.90ms |
| update_1to4 | 2.46ms | 5.29ms | 5.01ms | 1.50ms | 2.06ms | 2.33ms |
| update_1to1000 | 48μs | 165μs | 157μs | 393μs | 234μs | 44μs |
| cellx1000 | 7.35ms | 68.08ms | 11.51ms | 5.35ms | 9.67ms | 9.67ms |
| cellx2500 | 21.01ms | 231.02ms | 29.76ms | 30.77ms | 26.03ms | 31.00ms |
| cellx5000 | 46.17ms | 548.35ms | 65.85ms | 62.42ms | 67.51ms | 58.34ms |
| 10x5 - 2 sources - read 20.0% (simple) | 243.93ms | 2.02s | 357.13ms | 240.01ms | 438.34ms | 511.34ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 180.69ms | 1.55s | 259.30ms | 200.87ms | 269.82ms | 284.71ms |
| 1000x12 - 4 sources - dynamic (large) | 288.05ms | 1.84s | 456.56ms | 350.20ms | 3.51s | 3.74s |
| 1000x5 - 25 sources (wide dense) | 412.77ms | 3.62s | 594.02ms | 500.25ms | 2.57s | 3.50s |
| 5x500 - 3 sources (deep) | 192.96ms | 1.12s | 248.28ms | 207.14ms | 232.24ms | 228.81ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 259.92ms | 1.69s | 383.53ms | 255.65ms | 446.66ms | 484.47ms |

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
