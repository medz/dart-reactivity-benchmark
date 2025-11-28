import 'package:alien_signals/alien_signals.dart' as alien;
import 'package:reactivity_benchmark/reactive_framework.dart';
import 'package:reactivity_benchmark/run_framework_bench.dart';
import 'package:reactivity_benchmark/utils/create_computed.dart';
import 'package:reactivity_benchmark/utils/create_signal.dart';

final class AlientSignalsReactiveFramework extends ReactiveFramework {
  const AlientSignalsReactiveFramework()
      : super('[alien_signals](https://github.com/medz/alien-signals-dart)');

  @override
  Computed<T> computed<T>(T Function() fn) {
    final c = alien.computed<T>((_) => fn());
    return createComputed(c.call);
  }

  @override
  void effect(void Function() fn) {
    alien.effect(fn);
  }

  @override
  Signal<T> signal<T>(T value) {
    final s = alien.signal(value);
    return createSignal(s.call, s.set);
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
    const AlientSignalsReactiveFramework(),
  );
}
