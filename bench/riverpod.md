| Framework | Test Case | Time (μs) |
| --- | --- | --- |
| riverpod | avoidablePropagation (success) | 1433084 |
| riverpod | broadPropagation (fail) | 90536 |
| riverpod | deepPropagation (fail) | 2125994 |
| riverpod | diamond (fail) | 3132472 |
| riverpod | mux (fail) | 590010 |
| riverpod | repeatedObservers (fail) | 417664 |
| riverpod | triangle (fail) | 999865 |
| riverpod | unstable (fail) | 634611 |
| riverpod | molBench | 12532 |
| riverpod | create_signals | 27073 |
| riverpod | comp_0to1 | 14053 |
| riverpod | comp_1to1 | 22683 |
| riverpod | comp_2to1 | 24154 |
| riverpod | comp_4to1 | 6446 |
| riverpod | comp_1000to1 | 3 |
| riverpod | comp_1to2 | 11619 |
| riverpod | comp_1to4 | 27365 |
| riverpod | comp_1to8 | 4983 |
| riverpod | comp_1to1000 | 4496 |
| riverpod | update_1to1 | 86969 |
| riverpod | update_2to1 | 44053 |
| riverpod | update_4to1 | 20905 |
| riverpod | update_1000to1 | 194 |
| riverpod | update_1to2 | 44421 |
| riverpod | update_1to4 | 20963 |
| riverpod | update_1to1000 | 96 |
| riverpod | 10x5 - 2 sources - read 20.0% (simple, sum: pass, count: pass) | 2296698 |
| riverpod | 10x10 - 6 sources - dynamic - read 20.0% (dynamic, sum: pass, count: fail) | 1509746 |
| riverpod | 1000x12 - 4 sources - dynamic (large, sum: pass, count: fail) | 2614341 |
| riverpod | 1000x5 - 25 sources (wide dense, sum: pass, count: pass) | 4288099 |
| riverpod | 5x500 - 3 sources (deep, sum: pass, count: pass) | 1380007 |
| riverpod | 100x15 - 6 sources - dynamic (very dynamic, sum: pass, count: fail) | 1791499 |
