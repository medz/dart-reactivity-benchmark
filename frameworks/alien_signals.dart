import 'package:alien_signals/preset.dart' as alien;
import 'package:reactivity_benchmark/reactive_framework.dart';
import 'package:reactivity_benchmark/run_framework_bench.dart';
import 'package:reactivity_benchmark/utils/create_computed.dart';
import 'package:reactivity_benchmark/utils/create_signal.dart';

final class _AlientSignalsReactiveFramework extends ReactiveFramework {
  const _AlientSignalsReactiveFramework()
      : super('[alien_signals](https://github.com/medz/alien-signals-dart)');

  @override
  Computed<T> computed<T>(T Function() fn) {
    final computed = alien.computed<T>((_) => fn());
    return createComputed(computed.call);
  }

  @override
  void effect(void Function() fn) {
    alien.effect(fn);
  }

  @override
  Signal<T> signal<T>(T value) {
    final inner = alien.signal(value);
    return createSignal(inner.call, inner.call);
  }

  @override
  void withBatch<T>(T Function() fn) {
    alien.startBatch();
    fn();
    alien.endBatch();
  }

  @override
  T withBuild<T>(T Function() fn) => fn();
}

void main() {
  runFrameworkBench(
    const _AlientSignalsReactiveFramework(),
  );
}
