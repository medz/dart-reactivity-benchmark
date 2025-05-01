import 'package:riverpod/riverpod.dart' as riverpod;
import 'package:reactivity_benchmark/dynamic_bench.dart';
import 'package:reactivity_benchmark/kairo_bench.dart';
import 'package:reactivity_benchmark/mol_bench.dart';
import 'package:reactivity_benchmark/s_bench.dart';
import 'package:reactivity_benchmark/utils/perf_logging.dart';
import 'package:reactivity_benchmark/reactive_framework.dart';
// import 'package:reactivity_benchmark/run_framework_bench.dart';
import 'package:reactivity_benchmark/utils/create_computed.dart';
import 'package:reactivity_benchmark/utils/create_signal.dart';

class RiverpodReactiveFramework extends ReactiveFramework {
  RiverpodReactiveFramework(this.root)
      : super('[riverpod](https://github.com/rrousselGit/riverpod)');

  final riverpod.ProviderContainer root;
  riverpod.Ref? ref;

  @override
  Signal<T> signal<T>(T value) {
    final state = riverpod.StateProvider((ref) {
      final prev = this.ref;
      try {
        this.ref = ref;
        return value;
      } finally {
        this.ref = prev;
      }
    });

    return createSignal<T>(
      () {
        if (ref != null) return ref!.watch(state);
        return root.read(state);
      },
      (value) {
        root.read(state.notifier).state = value;
      },
    );
  }

  @override
  Computed<T> computed<T>(T Function() fn) {
    final provider = riverpod.Provider((ref) {
      final prev = this.ref;
      try {
        this.ref = ref;
        return fn();
      } finally {
        this.ref = prev;
      }
    });
    final computed = createComputed(() {
      if (ref != null) return ref!.watch(provider);
      return root.read(provider);
    });

    return computed;
  }

  @override
  void effect(void Function() fn) {
    final provider = riverpod.Provider((ref) {
      final prev = this.ref;
      try {
        this.ref = ref;
        fn();
      } finally {
        this.ref = prev;
      }
    });
    root.listen(provider, (_, __) => fn());
  }

  @override
  void withBatch<T>(T Function() fn) {
    fn();
  }

  @override
  T withBuild<T>(T Function() fn) {
    return fn();
  }
}

main() async {
  final container = riverpod.ProviderContainer();
  final framework = RiverpodReactiveFramework(container);
  printPerfReportHeaders();
  await kairoBench(framework);
  await molBench(framework);
  sbench(framework);
  // cellxBench(framework); fail!!
  await dynamicBench(framework);
}
