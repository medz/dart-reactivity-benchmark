# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | [alien_signals](https://github.com/medz/alien-signals-dart) | 100.0% | 35/35 | 3.76s |
| 🥈 | [solidart](https://github.com/nank1ro/solidart) | 100.0% | 35/35 | 5.51s |
| 🥉 | [preact_signals](https://pub.dev/packages/preact_signals) | 100.0% | 35/35 | 10.33s |
| 4 | [signals](https://github.com/rodydavis/signals.dart) | 100.0% | 35/35 | 11.26s |
| 5 | [mobx](https://github.com/mobxjs/mobx.dart) | 100.0% | 35/35 | 28.01s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|
| [state_beacon](https://github.com/jinyus/dart_beacon) | 77.1% | 27/35 | 3.41s |
| [riverpod](https://github.com/rrousselGit/riverpod) | 62.9% | 22/35 | 22.70s |

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | [alien_signals](https://github.com/medz/alien-signals-dart) | [mobx](https://github.com/mobxjs/mobx.dart) | [preact_signals](https://pub.dev/packages/preact_signals) | [riverpod](https://github.com/rrousselGit/riverpod) | [signals](https://github.com/rodydavis/signals.dart) | [solidart](https://github.com/nank1ro/solidart) | [state_beacon](https://github.com/jinyus/dart_beacon) |
|---|---|---|---|---|---|---|---|
| avoidablePropagation | 156.46ms | 2.37s | 203.36ms | 1.40s | 204.58ms | 290.00ms | 174.76ms (fail) |
| broadPropagation | 320.82ms | 4.48s | 458.92ms | 84.94ms (fail) | 464.18ms | 527.88ms | 7.18ms (fail) |
| deepPropagation | 96.19ms | 1.56s | 179.21ms | 1.97s (fail) | 169.43ms | 171.38ms | 143.20ms (fail) |
| diamond | 216.40ms | 2.47s | 293.55ms | 2.68s (fail) | 278.80ms | 355.61ms | 194.17ms (fail) |
| mux | 341.30ms | 1.83s | 401.19ms | 569.71ms (fail) | 409.12ms | 442.67ms | 191.69ms (fail) |
| repeatedObservers | 50.53ms | 235.62ms | 39.32ms | 387.87ms (fail) | 44.68ms | 87.47ms | 54.76ms (fail) |
| triangle | 76.71ms | 764.32ms | 97.76ms | 964.74ms (fail) | 101.63ms | 115.75ms | 82.66ms (fail) |
| unstable | 71.37ms | 357.08ms | 72.20ms | 615.39ms (fail) | 79.19ms | 104.00ms | 336.45ms (fail) |
| molBench | 485.95ms | 576.32ms | 486.01ms | 11.58ms | 485.14ms | 497.51ms | 927μs |
| create_signals | 31.33ms | 89.30ms | 4.59ms | 24.24ms | 32.46ms | 48.71ms | 59.27ms |
| comp_0to1 | 12.84ms | 33.92ms | 18.28ms | 13.91ms | 13.95ms | 46.82ms | 52.96ms |
| comp_1to1 | 19.82ms | 18.80ms | 12.35ms | 23.55ms | 20.08ms | 39.44ms | 55.13ms |
| comp_2to1 | 16.27ms | 12.32ms | 17.43ms | 25.38ms | 8.61ms | 25.65ms | 36.52ms |
| comp_4to1 | 4.01ms | 27.68ms | 11.94ms | 4.21ms | 2.79ms | 20.95ms | 16.86ms |
| comp_1000to1 | 3μs | 40μs | 6μs | 7μs | 7μs | 213μs | 40μs |
| comp_1to2 | 9.95ms | 36.01ms | 15.73ms | 10.70ms | 21.95ms | 27.98ms | 44.95ms |
| comp_1to4 | 16.07ms | 24.31ms | 25.85ms | 25.21ms | 7.19ms | 26.84ms | 43.55ms |
| comp_1to8 | 6.21ms | 26.01ms | 6.99ms | 6.63ms | 6.46ms | 17.79ms | 42.59ms |
| comp_1to1000 | 3.54ms | 16.39ms | 4.82ms | 4.33ms | 4.95ms | 15.99ms | 38.21ms |
| update_1to1 | 5.84ms | 24.08ms | 8.59ms | 82.34ms | 10.43ms | 15.62ms | 5.65ms |
| update_2to1 | 2.85ms | 12.40ms | 4.28ms | 40.57ms | 4.46ms | 7.67ms | 2.85ms |
| update_4to1 | 1.52ms | 7.14ms | 2.18ms | 19.96ms | 2.28ms | 3.84ms | 1.45ms |
| update_1000to1 | 20μs | 68μs | 21μs | 171μs | 22μs | 40μs | 15μs |
| update_1to2 | 2.91ms | 12.58ms | 4.78ms | 41.72ms | 4.47ms | 7.67ms | 2.86ms |
| update_1to4 | 1.53ms | 7.00ms | 2.19ms | 20.26ms | 2.21ms | 3.84ms | 1.46ms |
| update_1to1000 | 51μs | 185μs | 149μs | 131μs | 42μs | 167μs | 378μs |
| cellx1000 | 8.34ms | 80.18ms | 9.85ms | N/A | 9.90ms | 11.84ms | 5.41ms |
| cellx2500 | 20.11ms | 264.01ms | 27.65ms | N/A | 32.62ms | 35.00ms | 21.90ms |
| cellx5000 | 47.67ms | 595.05ms | 73.85ms | N/A | 65.27ms | 85.79ms | 60.89ms |
| 10x5 - 2 sources - read 20.0% (simple) | 233.28ms | 2.03s | 440.46ms | 2.22s | 516.31ms | 379.88ms | 240.81ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 189.05ms | 1.54s | 267.57ms | 1.52s (partial) | 280.20ms | 247.52ms | 196.71ms |
| 1000x12 - 4 sources - dynamic (large) | 342.57ms | 2.00s | 3.74s | 2.45s (partial) | 3.90s | 464.57ms | 338.73ms |
| 1000x5 - 25 sources (wide dense) | 492.12ms | 3.62s | 2.71s | 4.27s | 3.36s | 730.58ms | 480.29ms |
| 5x500 - 3 sources (deep) | 195.00ms | 1.16s | 235.80ms | 1.41s | 228.14ms | 270.55ms | 205.30ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 278.25ms | 1.72s | 455.38ms | 1.80s (partial) | 491.69ms | 383.99ms | 266.59ms |

<!-- test-case end -->

> [!TIP]
> - `(fail)`: Test case failed
> - `(partial)`: Partial of the test cases failed

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
