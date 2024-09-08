import 'package:get/instance_manager.dart';
import 'package:simple_counter/src/features/counter/bindings/counter_binding.dart';

class BindingsNavigation {
  BindingsNavigation._();

  static Bindings get initial => counter;
  static Bindings get counter => CounterBinding();
}
