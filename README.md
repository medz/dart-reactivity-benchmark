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
| 🥇 | alien_signals: 0.3 (prefer-inline) | 100.0% | 35/35 | 2.09s |
| 🥈 | alien_signals: 0.4 (prefer-inline) | 100.0% | 35/35 | 2.27s |
| 🥉 | alien_signals: 0.3 | 100.0% | 35/35 | 2.31s |
| 4 | alien_signals: 0.4.5-pre | 100.0% | 35/35 | 2.35s |
| 5 | alien_signals: 0.4 | 100.0% | 35/35 | 2.36s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | alien_signals: 0.3 | alien_signals: 0.3 (prefer-inline) | alien_signals: 0.4 | alien_signals: 0.4 (prefer-inline) | alien_signals: 0.4.5-pre |
|---|---|---|---|---|---|
| avoidablePropagation | 94.50ms | 89.54ms | 115.06ms | 118.28ms | 119.02ms |
| broadPropagation | 185.30ms | 188.98ms | 222.21ms | 216.69ms | 217.57ms |
| deepPropagation | 55.93ms | 54.95ms | 55.08ms | 61.55ms | 54.22ms |
| diamond | 132.90ms | 115.56ms | 135.10ms | 129.40ms | 130.34ms |
| mux | 191.79ms | 194.65ms | 215.77ms | 212.30ms | 209.69ms |
| repeatedObservers | 24.21ms | 20.16ms | 28.25ms | 25.01ms | 28.20ms |
| triangle | 56.37ms | 46.47ms | 52.52ms | 46.31ms | 53.09ms |
| unstable | 36.68ms | 30.47ms | 41.98ms | 34.00ms | 41.13ms |
| molBench | 292.11ms | 282.74ms | 296.40ms | 294.26ms | 296.48ms |
| create_signals | 13.88ms | 15.68ms | 12.18ms | 13.42ms | 13.13ms |
| comp_0to1 | 7.72ms | 4.56ms | 2.95ms | 6.09ms | 5.65ms |
| comp_1to1 | 4.85ms | 4.80ms | 5.82ms | 13.55ms | 12.85ms |
| comp_2to1 | 10.55ms | 5.80ms | 7.72ms | 4.94ms | 7.39ms |
| comp_4to1 | 1.65ms | 2.51ms | 6.57ms | 974μs | 904μs |
| comp_1000to1 | 2μs | 1μs | 1μs | 2μs | 2μs |
| comp_1to2 | 3.50ms | 5.07ms | 2.72ms | 4.91ms | 4.74ms |
| comp_1to4 | 6.33ms | 6.45ms | 5.17ms | 7.45ms | 8.12ms |
| comp_1to8 | 2.54ms | 2.60ms | 2.81ms | 3.56ms | 3.19ms |
| comp_1to1000 | 1.68ms | 1.79ms | 2.05ms | 1.96ms | 2.01ms |
| update_1to1 | 2.21ms | 1.84ms | 2.61ms | 2.52ms | 2.68ms |
| update_2to1 | 1.15ms | 954μs | 1.35ms | 1.17ms | 1.32ms |
| update_4to1 | 547μs | 491μs | 683μs | 595μs | 667μs |
| update_1000to1 | 5μs | 6μs | 6μs | 6μs | 6μs |
| update_1to2 | 1.11ms | 988μs | 1.27ms | 1.26ms | 1.28ms |
| update_1to4 | 542μs | 502μs | 656μs | 595μs | 642μs |
| update_1to1000 | 17μs | 17μs | 22μs | 18μs | 19μs |
| cellx1000 | 3.79ms | 3.55ms | 5.42ms | 5.57ms | 5.45ms |
| cellx2500 | 10.07ms | 9.73ms | 19.74ms | 18.50ms | 15.46ms |
| cellx5000 | 24.26ms | 21.12ms | 38.72ms | 41.16ms | 42.97ms |
| 10x5 - 2 sources - read 20.0% (simple) | 167.81ms | 146.69ms | 154.37ms | 141.39ms | 154.03ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 119.91ms | 103.74ms | 108.32ms | 99.96ms | 107.85ms |
| 1000x12 - 4 sources - dynamic (large) | 232.29ms | 189.40ms | 214.86ms | 190.29ms | 210.09ms |
| 1000x5 - 25 sources (wide dense) | 315.44ms | 285.57ms | 327.14ms | 302.78ms | 324.45ms |
| 5x500 - 3 sources (deep) | 122.64ms | 107.46ms | 106.60ms | 100.13ms | 106.06ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 184.22ms | 149.13ms | 169.47ms | 165.33ms | 171.19ms |

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
