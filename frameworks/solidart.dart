import 'package:reactivity_benchmark/run_framework_bench.dart';
import 'package:solidart/solidart.dart' as solidart;
import 'package:reactivity_benchmark/reactive_framework.dart';
import 'package:reactivity_benchmark/utils/create_computed.dart';
import 'package:reactivity_benchmark/utils/create_signal.dart';

final class _SolidartReactiveFramework extends ReactiveFramework {
  const _SolidartReactiveFramework() : super('solidart(2.0-dev)');

  @override
  Computed<T> computed<T>(T Function() fn) {
    final computed = solidart.Computed(fn);
    return createComputed(() => computed.value);
  }

  @override
  void effect(void Function() fn) {
    solidart.Effect(fn);
  }

  @override
  Signal<T> signal<T>(T value) {
    final signal = solidart.Signal(value);
    return createSignal(
      () => signal.value,
      (value) => signal.value = value,
    );
  }

  @override
  void withBatch<T>(T Function() fn) {
    solidart.batch(fn);
  }

  @override
  T withBuild<T>(T Function() fn) => fn();
}

void main() {
  solidart.SolidartConfig.devToolsEnabled = false;
  solidart.SolidartConfig.trackPreviousValue = false;
  solidart.SolidartConfig.autoDispose = false;
  solidart.SolidartConfig.equals = true;
  runFrameworkBench(const _SolidartReactiveFramework());
}
