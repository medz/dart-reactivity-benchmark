Benchmark comparing different standalone [alien_signals](https://github.com/medz/alien-signals-dart) versions.

## Ranking

> [!NOTE]
> Test Device:
> - OS: macOS 15.5
> - CPU: Apple M3 Max
> - Memory: 36GB

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | alien_signals: 0.3 (prefer-inline) | 100.0% | 35/35 | 2.06s |
| 🥈 | alien_signals: 0.5-pre | 100.0% | 35/35 | 2.18s |
| 🥉 | alien_signals: 0.4 (prefer-inline) | 100.0% | 35/35 | 2.25s |
| 4 | alien_signals: 0.3 | 100.0% | 35/35 | 2.28s |
| 5 | alien_signals: 0.4 | 100.0% | 35/35 | 2.36s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | alien_signals: 0.3 | alien_signals: 0.3 (prefer-inline) | alien_signals: 0.4 | alien_signals: 0.4 (prefer-inline) | alien_signals: 0.5-pre |
|---|---|---|---|---|---|
| avoidablePropagation | 87.08ms | 85.31ms | 119.87ms | 116.72ms | 85.36ms |
| broadPropagation | 183.97ms | 169.55ms | 215.67ms | 219.06ms | 146.15ms |
| deepPropagation | 55.22ms | 55.46ms | 54.84ms | 60.79ms | 52.83ms |
| diamond | 136.29ms | 114.80ms | 133.34ms | 120.57ms | 116.94ms |
| mux | 188.35ms | 187.95ms | 214.93ms | 215.21ms | 171.09ms |
| repeatedObservers | 23.75ms | 20.34ms | 28.56ms | 25.02ms | 24.95ms |
| triangle | 56.42ms | 46.49ms | 52.13ms | 45.56ms | 49.24ms |
| unstable | 36.50ms | 30.41ms | 41.26ms | 34.55ms | 39.68ms |
| molBench | 288.72ms | 280.11ms | 294.94ms | 292.60ms | 295.05ms |
| create_signals | 16.61ms | 15.37ms | 10.84ms | 12.40ms | 13.37ms |
| comp_0to1 | 7.93ms | 4.19ms | 5.77ms | 6.02ms | 5.91ms |
| comp_1to1 | 4.80ms | 4.88ms | 7.84ms | 12.38ms | 12.54ms |
| comp_2to1 | 5.84ms | 5.95ms | 5.70ms | 4.45ms | 11.51ms |
| comp_4to1 | 1.48ms | 2.36ms | 1.01ms | 4.80ms | 1.51ms |
| comp_1000to1 | 6μs | 1μs | 2μs | 1μs | 2μs |
| comp_1to2 | 5.28ms | 4.42ms | 4.92ms | 4.95ms | 5.73ms |
| comp_1to4 | 6.20ms | 6.74ms | 7.25ms | 9.41ms | 8.91ms |
| comp_1to8 | 2.40ms | 2.52ms | 2.32ms | 2.79ms | 2.99ms |
| comp_1to1000 | 1.80ms | 1.72ms | 1.95ms | 3.00ms | 2.12ms |
| update_1to1 | 2.27ms | 1.85ms | 2.66ms | 2.35ms | 2.71ms |
| update_2to1 | 1.11ms | 982μs | 1.28ms | 1.22ms | 1.32ms |
| update_4to1 | 577μs | 541μs | 679μs | 614μs | 647μs |
| update_1000to1 | 5μs | 6μs | 8μs | 6μs | 6μs |
| update_1to2 | 1.09ms | 1.01ms | 1.32ms | 1.63ms | 1.28ms |
| update_1to4 | 544μs | 492μs | 659μs | 640μs | 651μs |
| update_1to1000 | 19μs | 19μs | 21μs | 18μs | 19μs |
| cellx1000 | 4.08ms | 3.54ms | 5.43ms | 5.10ms | 3.94ms |
| cellx2500 | 9.95ms | 9.60ms | 16.32ms | 16.34ms | 11.75ms |
| cellx5000 | 23.66ms | 22.46ms | 39.24ms | 42.14ms | 31.50ms |
| 10x5 - 2 sources - read 20.0% (simple) | 170.11ms | 145.07ms | 157.79ms | 141.84ms | 152.95ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 119.68ms | 104.58ms | 108.64ms | 98.54ms | 108.50ms |
| 1000x12 - 4 sources - dynamic (large) | 225.79ms | 184.16ms | 212.33ms | 193.45ms | 212.98ms |
| 1000x5 - 25 sources (wide dense) | 313.93ms | 282.99ms | 330.29ms | 303.50ms | 327.19ms |
| 5x500 - 3 sources (deep) | 120.44ms | 117.90ms | 109.67ms | 97.83ms | 106.70ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 180.59ms | 146.69ms | 173.19ms | 155.90ms | 172.16ms |

<!-- test-case end -->

> [!TIP]
> - `(fail)`: Test case failed
> - `(partial)`: Partial of the test cases failed

## Local run benchmarks

Run all benchamrks
```bash
bash bench.sh
```

Generate benchmark report
```bash
dart run gen_bench_report.dart
```
