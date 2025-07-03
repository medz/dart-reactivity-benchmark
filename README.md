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
| 🥇 | alien_signals: `^0.3.1` (prefer-inline) | 100.0% | 35/35 | 2.09s |
| 🥈 | alien_signals: `^0.4.2` (prefer-inline) | 100.0% | 35/35 | 2.23s |
| 🥉 | alien_signals: `0.3.0` | 100.0% | 35/35 | 2.32s |
| 4 | alien_signals: `0.4.1` | 100.0% | 35/35 | 2.35s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | alien_signals: `0.3.0` | alien_signals: `0.4.1` | alien_signals: `^0.3.1` (prefer-inline) | alien_signals: `^0.4.2` (prefer-inline) |
|---|---|---|---|---|
| avoidablePropagation | 88.34ms | 109.87ms | 87.04ms | 113.85ms |
| broadPropagation | 184.34ms | 216.84ms | 176.83ms | 218.08ms |
| deepPropagation | 55.57ms | 63.29ms | 55.22ms | 61.16ms |
| diamond | 132.57ms | 134.94ms | 113.62ms | 127.26ms |
| mux | 194.29ms | 211.31ms | 187.74ms | 213.18ms |
| repeatedObservers | 23.99ms | 28.46ms | 20.27ms | 24.54ms |
| triangle | 56.70ms | 51.76ms | 47.74ms | 46.67ms |
| unstable | 36.89ms | 41.68ms | 29.90ms | 34.88ms |
| molBench | 295.36ms | 296.42ms | 291.26ms | 294.36ms |
| create_signals | 13.86ms | 10.71ms | 15.02ms | 9.39ms |
| comp_0to1 | 4.72ms | 3.02ms | 2.77ms | 5.46ms |
| comp_1to1 | 4.98ms | 5.67ms | 5.10ms | 7.70ms |
| comp_2to1 | 6.29ms | 6.24ms | 6.06ms | 5.67ms |
| comp_4to1 | 2.36ms | 7.07ms | 1.45ms | 2.66ms |
| comp_1000to1 | 2μs | 1μs | 1μs | 1μs |
| comp_1to2 | 4.99ms | 2.64ms | 4.42ms | 6.97ms |
| comp_1to4 | 6.38ms | 6.10ms | 6.63ms | 7.88ms |
| comp_1to8 | 2.50ms | 3.41ms | 2.68ms | 3.03ms |
| comp_1to1000 | 1.75ms | 2.59ms | 1.83ms | 1.95ms |
| update_1to1 | 2.35ms | 2.77ms | 1.92ms | 2.39ms |
| update_2to1 | 1.08ms | 1.30ms | 1.28ms | 1.17ms |
| update_4to1 | 543μs | 649μs | 485μs | 596μs |
| update_1000to1 | 5μs | 7μs | 5μs | 6μs |
| update_1to2 | 1.08ms | 2.18ms | 972μs | 1.17ms |
| update_1to4 | 543μs | 694μs | 521μs | 589μs |
| update_1to1000 | 19μs | 20μs | 15μs | 20μs |
| cellx1000 | 3.98ms | 5.39ms | 3.40ms | 5.14ms |
| cellx2500 | 10.82ms | 16.34ms | 9.37ms | 16.70ms |
| cellx5000 | 24.41ms | 37.67ms | 21.63ms | 42.84ms |
| 10x5 - 2 sources - read 20.0% (simple) | 170.17ms | 154.97ms | 147.43ms | 141.28ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 119.92ms | 107.89ms | 104.37ms | 98.50ms |
| 1000x12 - 4 sources - dynamic (large) | 234.55ms | 210.88ms | 192.49ms | 187.56ms |
| 1000x5 - 25 sources (wide dense) | 319.00ms | 327.57ms | 285.58ms | 300.65ms |
| 5x500 - 3 sources (deep) | 127.74ms | 106.45ms | 112.67ms | 97.39ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 184.69ms | 169.91ms | 149.80ms | 153.13ms |

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
