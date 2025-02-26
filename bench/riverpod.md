| Framework | Test Case | Time (μs) |
| --- | --- | --- |
| riverpod | avoidablePropagation (success) | 665817 |
| riverpod | broadPropagation (fail) | 34824 |
| riverpod | deepPropagation (fail) | 1057888 |
| riverpod | diamond (fail) | 1019228 |
| riverpod | mux (fail) | 274402 |
| riverpod | repeatedObservers (fail) | 143459 |
| riverpod | triangle (fail) | 395123 |
| riverpod | unstable (fail) | 250056 |
| riverpod | molBench | 5450 |
| riverpod | create_signals | 8633 |
| riverpod | comp_0to1 | 4466 |
| riverpod | comp_1to1 | 16582 |
| riverpod | comp_2to1 | 12727 |
| riverpod | comp_4to1 | 1611 |
| riverpod | comp_1000to1 | 7 |
| riverpod | comp_1to2 | 4683 |
| riverpod | comp_1to4 | 6240 |
| riverpod | comp_1to8 | 4833 |
| riverpod | comp_1to1000 | 2497 |
| riverpod | update_1to1 | 46001 |
| riverpod | update_2to1 | 23913 |
| riverpod | update_4to1 | 12422 |
| riverpod | update_1000to1 | 127 |
| riverpod | update_1to2 | 24260 |
| riverpod | update_1to4 | 11813 |
| riverpod | update_1to1000 | 69 |
| riverpod | 10x5 - 2 sources - read 20.0% (simple, sum: pass, count: pass) | 1207028 |
| riverpod | 10x10 - 6 sources - dynamic - read 20.0% (dynamic, sum: pass, count: fail) | 848396 |
| riverpod | 1000x12 - 4 sources - dynamic (large, sum: pass, count: fail) | 1307390 |
| riverpod | 1000x5 - 25 sources (wide dense, sum: pass, count: pass) | 2214202 |
| riverpod | 5x500 - 3 sources (deep, sum: pass, count: pass) | 717943 |
| riverpod | 100x15 - 6 sources - dynamic (very dynamic, sum: pass, count: fail) | 969318 |
