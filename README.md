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
| 🥇 | alien_signals: 0.3 (prefer-inline) | 100.0% | 35/35 | 2.10s |
| 🥈 | alien_signals: 0.3 | 100.0% | 35/35 | 2.31s |
| 🥉 | alien_signals: 0.4 (prefer-inline) | 100.0% | 35/35 | 2.31s |
| 4 | alien_signals: 0.5-pre | 100.0% | 35/35 | 2.37s |
| 5 | alien_signals: 0.4 | 100.0% | 35/35 | 2.38s |

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
| avoidablePropagation | 88.40ms | 86.36ms | 116.28ms | 116.63ms | 119.00ms |
| broadPropagation | 184.41ms | 171.55ms | 227.27ms | 215.64ms | 216.52ms |
| deepPropagation | 55.92ms | 55.48ms | 56.23ms | 60.43ms | 54.71ms |
| diamond | 134.04ms | 115.21ms | 135.52ms | 133.65ms | 130.47ms |
| mux | 190.65ms | 188.96ms | 211.21ms | 213.24ms | 214.90ms |
| repeatedObservers | 23.57ms | 20.19ms | 28.68ms | 24.91ms | 28.31ms |
| triangle | 56.61ms | 47.55ms | 52.57ms | 47.27ms | 52.97ms |
| unstable | 37.03ms | 30.53ms | 41.53ms | 33.89ms | 41.07ms |
| molBench | 290.43ms | 282.30ms | 295.72ms | 295.33ms | 296.28ms |
| create_signals | 16.54ms | 13.55ms | 13.21ms | 12.94ms | 16.52ms |
| comp_0to1 | 8.67ms | 4.30ms | 5.84ms | 5.69ms | 5.67ms |
| comp_1to1 | 4.79ms | 4.94ms | 13.49ms | 13.10ms | 8.06ms |
| comp_2to1 | 5.73ms | 8.64ms | 7.45ms | 4.92ms | 6.38ms |
| comp_4to1 | 5.71ms | 2.87ms | 887μs | 3.98ms | 1.06ms |
| comp_1000to1 | 2μs | 1μs | 2μs | 2μs | 2μs |
| comp_1to2 | 3.85ms | 4.72ms | 4.85ms | 4.84ms | 5.44ms |
| comp_1to4 | 6.72ms | 7.25ms | 10.49ms | 9.49ms | 7.81ms |
| comp_1to8 | 2.74ms | 3.27ms | 2.92ms | 2.86ms | 2.58ms |
| comp_1to1000 | 2.01ms | 1.82ms | 2.17ms | 3.03ms | 2.68ms |
| update_1to1 | 2.33ms | 1.83ms | 2.61ms | 2.43ms | 2.64ms |
| update_2to1 | 1.08ms | 954μs | 1.30ms | 1.20ms | 1.34ms |
| update_4to1 | 552μs | 482μs | 646μs | 614μs | 687μs |
| update_1000to1 | 5μs | 6μs | 8μs | 6μs | 6μs |
| update_1to2 | 1.13ms | 960μs | 1.31ms | 1.65ms | 1.36ms |
| update_1to4 | 549μs | 487μs | 729μs | 599μs | 656μs |
| update_1to1000 | 19μs | 19μs | 19μs | 19μs | 20μs |
| cellx1000 | 3.84ms | 3.82ms | 5.41ms | 5.22ms | 5.90ms |
| cellx2500 | 10.17ms | 10.83ms | 16.86ms | 16.55ms | 19.31ms |
| cellx5000 | 23.94ms | 25.84ms | 43.56ms | 42.06ms | 43.74ms |
| 10x5 - 2 sources - read 20.0% (simple) | 170.66ms | 148.01ms | 154.94ms | 142.96ms | 155.91ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 119.64ms | 104.92ms | 108.19ms | 106.35ms | 108.05ms |
| 1000x12 - 4 sources - dynamic (large) | 233.14ms | 192.54ms | 212.79ms | 204.01ms | 212.31ms |
| 1000x5 - 25 sources (wide dense) | 315.45ms | 293.18ms | 326.58ms | 311.05ms | 328.42ms |
| 5x500 - 3 sources (deep) | 124.83ms | 111.09ms | 105.94ms | 105.62ms | 105.53ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 184.09ms | 150.98ms | 171.60ms | 167.32ms | 175.95ms |

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
