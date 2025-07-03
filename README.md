# Dart Reactivity Benchmark [![Pub Version](https://img.shields.io/pub/v/reactivity_benchmark)](https://pub.dev/packages/reactivity_benchmark)

Benchmark comparing different standalone Dart reactivity/signals frameworks.

## Ranking

<!-- ranking start -->
| Rank | Framework | Success Rate | Tests | Time |
|------|-----------|--------------|-------|------|
| 🥇 | v0.3.1 | 100.0% | 35/35 | 2.09s |
| 🥈 | v0.3.0 | 100.0% | 35/35 | 2.32s |

<!-- ranking end -->

### **Failed Tests**

<!-- fail start -->
| Framework | Success Rate | Tests | Time |
|-----------|--------------|-------|------|

<!-- fail end -->

## Benchmark results of each framework

<!-- test-case start -->
| Test Case | v0.3.0 | v0.3.1 |
|---|---|---|
| avoidablePropagation | 96.93ms | 88.95ms |
| broadPropagation | 184.40ms | 190.37ms |
| deepPropagation | 56.21ms | 54.97ms |
| diamond | 133.69ms | 113.93ms |
| mux | 194.84ms | 183.22ms |
| repeatedObservers | 23.66ms | 20.14ms |
| triangle | 57.40ms | 46.73ms |
| unstable | 37.06ms | 30.51ms |
| molBench | 293.93ms | 290.36ms |
| create_signals | 14.30ms | 10.09ms |
| comp_0to1 | 6.57ms | 2.77ms |
| comp_1to1 | 8.03ms | 5.05ms |
| comp_2to1 | 8.47ms | 5.98ms |
| comp_4to1 | 1.38ms | 3.69ms |
| comp_1000to1 | 2μs | 1μs |
| comp_1to2 | 3.70ms | 3.93ms |
| comp_1to4 | 7.94ms | 7.38ms |
| comp_1to8 | 2.75ms | 2.78ms |
| comp_1to1000 | 1.79ms | 1.71ms |
| update_1to1 | 2.26ms | 1.89ms |
| update_2to1 | 1.11ms | 1.01ms |
| update_4to1 | 556μs | 485μs |
| update_1000to1 | 5μs | 4μs |
| update_1to2 | 1.10ms | 1.00ms |
| update_1to4 | 537μs | 495μs |
| update_1to1000 | 19μs | 18μs |
| cellx1000 | 3.85ms | 3.49ms |
| cellx2500 | 10.22ms | 9.53ms |
| cellx5000 | 26.07ms | 21.48ms |
| 10x5 - 2 sources - read 20.0% (simple) | 167.69ms | 149.33ms |
| 10x10 - 6 sources - dynamic - read 20.0% (dynamic) | 120.49ms | 107.90ms |
| 1000x12 - 4 sources - dynamic (large) | 231.79ms | 189.12ms |
| 1000x5 - 25 sources (wide dense) | 314.82ms | 287.79ms |
| 5x500 - 3 sources (deep) | 121.89ms | 108.71ms |
| 100x15 - 6 sources - dynamic (very dynamic) | 183.42ms | 149.25ms |

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
