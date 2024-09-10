import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:simple_counter/src/features/counter/controllers/counter_controller.dart';

class StateAreaCounterComponent extends GetView<CounterController> {
  const StateAreaCounterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final status = controller.status.value;
        return Text(
          status.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        );
      },
    );
  }
}
