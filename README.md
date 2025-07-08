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
| 🥇 | alien_signals: 0.3 (prefer-inline) | 100.0% | 35/35 | 2.12s |
| 🥈 | alien_signals: 0.5-pre | 100.0% | 35/35 | 2.14s |
| 🥉 | alien_signals: 0.4 (prefer-inline) | 100.0% | 35/35 | 2.25s |
| 4 | alien_signals: 0.3 | 100.0% | 35/35 | 2.32s |
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
| avoidablePropagation | 89.01ms | 97.48ms | 119.14ms | 115.65ms | 87.09ms |
| broadPropagation | 183.53ms | 186.37ms | 213.13ms | 221.92ms | 148.13ms |
| deepPropagation | 55.42ms | 56.78ms | 53.60ms | 60.15ms | 50.21ms |
| diamond | 140.95ms | 117.87ms | 134.45ms | 132.70ms | 115.30ms |
| mux | 192.87ms | 188.73ms | 217.54ms | 216.27ms | 169.44ms |
| repeatedObservers | 23.71ms | 20.09ms | 28.23ms | 24.91ms | 25.96ms |
| triangle | 55.97ms | 46.92ms | 52.34ms | 46.88ms | 48.06ms |
| unstable | 36.75ms | 30.46ms | 41.83ms | 35.17ms | 38.68ms |
| molBench | 289.47ms | 282.33ms | 295.30ms | 294.17ms | 293.85ms |
| create_signals | 13.76ms | 16.52ms | 12.58ms | 12.59ms | 10.32ms |
| comp_0to1 | 7.39ms | 5.01ms | 5.58ms | 3.22ms | 3.16ms |
| comp_1to1 | 7.16ms | 7.65ms | 12.92ms | 7.72ms | 5.47ms |
| comp_2to1 | 10.78ms | 8.31ms | 7.33ms | 6.39ms | 4.05ms |
| comp_4to1 | 3.37ms | 3.00ms | 840μs | 952μs | 9.67ms |
| comp_1000to1 | 3.75ms | 1μs | 1μs | 1μs | 2μs |
| comp_1to2 | 7.51ms | 4.78ms | 4.78ms | 4.84ms | 4.41ms |
| comp_1to4 | 6.35ms | 8.48ms | 8.42ms | 4.12ms | 5.62ms |
| comp_1to8 | 2.53ms | 2.76ms | 3.21ms | 2.63ms | 2.68ms |
| comp_1to1000 | 1.81ms | 2.13ms | 1.98ms | 1.83ms | 2.03ms |
| update_1to1 | 2.08ms | 1.78ms | 2.56ms | 2.42ms | 2.68ms |
| update_2to1 | 1.07ms | 923μs | 1.28ms | 1.20ms | 1.28ms |
| update_4to1 | 557μs | 476μs | 646μs | 604μs | 648μs |
| update_1000to1 | 5μs | 4μs | 6μs | 6μs | 6μs |
| update_1to2 | 1.11ms | 952μs | 1.30ms | 1.21ms | 1.37ms |
| update_1to4 | 544μs | 489μs | 650μs | 615μs | 721μs |
| update_1to1000 | 19μs | 15μs | 18μs | 18μs | 17μs |
| cellx1000 | 3.88ms | 3.60ms | 5.25ms | 5.59ms | 4.09ms |
| cellx2500 | 10.47ms | 11.43ms | 14.98ms | 15.24ms | 10.81ms |
| cellx5000 | 23.98ms | 22.71ms | 42.71ms | 41.76ms | 25.13ms |
| 10x5 - 2 sources - read 20.0% (simple) | 167.86ms | 150.23ms | 155.16ms | 142.87ms | 148.18ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 119.77ms | 106.30ms | 107.76ms | 100.48ms | 108.86ms |
| 1000x12 - 4 sources - dynamic (large) | 231.72ms | 187.80ms | 210.60ms | 184.40ms | 208.68ms |
| 1000x5 - 25 sources (wide dense) | 318.86ms | 286.98ms | 323.47ms | 312.35ms | 332.91ms |
| 5x500 - 3 sources (deep) | 126.11ms | 110.94ms | 106.01ms | 98.24ms | 103.88ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 183.16ms | 147.55ms | 170.64ms | 153.81ms | 169.48ms |

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
