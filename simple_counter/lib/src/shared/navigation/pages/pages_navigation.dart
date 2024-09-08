import 'package:get/route_manager.dart';
import 'package:simple_counter/src/features/counter/pages/counter_page.dart';
import 'package:simple_counter/src/shared/navigation/bindings/bindings_navigation.dart';
import 'package:simple_counter/src/shared/navigation/routes/routes_navigation.dart';

class PagesNavigation {
  PagesNavigation._();

  static Transition get defaultTransition => Transition.native;

  static List<GetPage> get pages => [
        _counter,
      ];

  static GetPage<CounterPage> get _counter => GetPage(
        name: RoutesNavigation.counter,
        page: () => const CounterPage(),
        binding: BindingsNavigation.counter,
      );
}
