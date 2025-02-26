import 'package:reactter/reactter.dart' as reactter;
import 'package:reactivity_benchmark/reactive_framework.dart';
import 'package:reactivity_benchmark/run_framework_bench.dart';
import 'package:reactivity_benchmark/utils/create_computed.dart';
import 'package:reactivity_benchmark/utils/create_signal.dart';

class ReactterReactiveFramework extends ReactiveFramework {
  ReactterReactiveFramework()
      : super("[reactter](https://github.com/2devs-team/reactter)");

  var states = <reactter.RtState>[];

  @override
  Signal<T> signal<T>(T value) {
    final signal = reactter.Signal(value);
    return createSignal(
      () {
        states.add(signal);
        return signal.value;
      },
      (value) => signal.value = value,
    );
  }

  @override
  Computed<T> computed<T>(T Function() fn) {
    bool ready = false;
    final deps = <reactter.RtState>[];
    final compute = reactter.UseCompute(() {
      if (ready) return fn();

      final prev = states;
      states = [];
      try {
        return fn();
      } finally {
        deps.addAll(states);
        states = prev;
        ready = true;
      }
    }, deps);
    return createComputed(() {
      try {
        states.add(compute);
        return compute.value;
      } finally {
        deps.clear();
      }
    });
  }

  @override
  void effect(void Function() fn) {
    final deps = <reactter.RtState>[];
    reactter.UseEffect.runOnInit(() {
      final prev = states;
      states = [];
      try {
        fn();
      } finally {
        deps.addAll(states);
        states = prev;
      }
    }, deps);
    deps.clear();
  }

  @override
  void withBatch<T>(T Function() fn) {
    reactter.Rt.batch(fn);
  }

  @override
  T withBuild<T>(T Function() fn) {
    return fn();
  }
}

void main() {
  runFrameworkBench(ReactterReactiveFramework());
}
