import 'package:get/get.dart';
import 'package:simple_counter/src/features/counter/controllers/counter_controller.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CounterController>(
      CounterController(),
    );
  }
}
