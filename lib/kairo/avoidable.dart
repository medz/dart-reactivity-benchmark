import '../reactive_framework.dart';
import 'utils.dart';

void Function() avoidablePropagation(ReactiveFramework f) {
  final head = f.signal(0);
  final c1 = f.computed(() => head.read());
  final c2 = f.computed(() {
    c1.read();
    return 0;
  });
  final c3 = f.computed(() {
    busy();
    return c2.read() + 1;
  });
  final c4 = f.computed(() => c3.read() + 2);
  final c5 = f.computed(() => c4.read() + 3);

  f.effect(() {
    c5.read();
    busy();
  });

  return () {
    f.withBatch(() => head.write(1));
    assert(c5.read() == 6);
    for (int i = 0; i < 1000; i++) {
      f.withBatch(() => head.write(i));
      assert(c5.read() == 6);
    }
  };
}