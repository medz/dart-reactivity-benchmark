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
| 🥇 | alien_signals: 0.3 (prefer-inline) | 100.0% | 35/35 | 2.11s |
| 🥈 | alien_signals: 0.4 (prefer-inline) | 100.0% | 35/35 | 2.26s |
| 🥉 | alien_signals: 0.3 | 100.0% | 35/35 | 2.33s |
| 4 | alien_signals: 0.4 | 100.0% | 35/35 | 2.36s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | alien_signals: 0.3 | alien_signals: 0.3 (prefer-inline) | alien_signals: 0.4 | alien_signals: 0.4 (prefer-inline) |
|---|---|---|---|---|
| avoidablePropagation | 87.14ms | 87.85ms | 115.96ms | 112.40ms |
| broadPropagation | 185.86ms | 186.02ms | 211.76ms | 227.07ms |
| deepPropagation | 55.75ms | 53.19ms | 53.44ms | 60.80ms |
| diamond | 133.22ms | 121.14ms | 137.24ms | 132.44ms |
| mux | 195.19ms | 192.46ms | 215.31ms | 216.53ms |
| repeatedObservers | 23.87ms | 20.62ms | 28.29ms | 24.69ms |
| triangle | 56.88ms | 47.59ms | 52.32ms | 47.80ms |
| unstable | 36.88ms | 29.89ms | 41.78ms | 33.99ms |
| molBench | 295.41ms | 290.80ms | 296.44ms | 295.55ms |
| create_signals | 16.90ms | 13.79ms | 12.90ms | 12.38ms |
| comp_0to1 | 9.70ms | 4.48ms | 5.92ms | 3.56ms |
| comp_1to1 | 5.13ms | 5.02ms | 9.82ms | 5.57ms |
| comp_2to1 | 5.79ms | 5.86ms | 8.13ms | 4.04ms |
| comp_4to1 | 1.52ms | 1.46ms | 897μs | 9.70ms |
| comp_1000to1 | 2μs | 1μs | 2μs | 1μs |
| comp_1to2 | 5.31ms | 4.73ms | 4.94ms | 2.57ms |
| comp_1to4 | 9.22ms | 6.84ms | 7.26ms | 4.96ms |
| comp_1to8 | 4.96ms | 2.74ms | 2.98ms | 2.96ms |
| comp_1to1000 | 1.87ms | 3.32ms | 3.10ms | 2.03ms |
| update_1to1 | 2.25ms | 1.91ms | 2.66ms | 2.40ms |
| update_2to1 | 1.08ms | 978μs | 1.27ms | 1.24ms |
| update_4to1 | 546μs | 488μs | 642μs | 614μs |
| update_1000to1 | 5μs | 4μs | 6μs | 6μs |
| update_1to2 | 1.09ms | 965μs | 1.27ms | 1.18ms |
| update_1to4 | 555μs | 485μs | 646μs | 600μs |
| update_1to1000 | 17μs | 19μs | 18μs | 19μs |
| cellx1000 | 3.83ms | 3.50ms | 5.48ms | 5.16ms |
| cellx2500 | 10.52ms | 9.12ms | 16.16ms | 16.29ms |
| cellx5000 | 24.75ms | 21.55ms | 42.55ms | 38.08ms |
| 10x5 - 2 sources - read 20.0% (simple) | 170.69ms | 145.54ms | 154.18ms | 143.93ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 119.89ms | 104.60ms | 107.89ms | 100.69ms |
| 1000x12 - 4 sources - dynamic (large) | 236.46ms | 192.04ms | 211.91ms | 192.19ms |
| 1000x5 - 25 sources (wide dense) | 317.49ms | 291.43ms | 325.24ms | 304.36ms |
| 5x500 - 3 sources (deep) | 125.78ms | 112.19ms | 106.00ms | 99.77ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 184.07ms | 149.92ms | 171.25ms | 152.00ms |

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
