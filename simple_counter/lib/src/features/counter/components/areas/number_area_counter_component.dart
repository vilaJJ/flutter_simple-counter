import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:simple_counter/src/features/counter/controllers/counter_controller.dart';

class NumberAreaCounterComponent extends GetView<CounterController> {
  const NumberAreaCounterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final numberValue = controller.numberValue.value;
        return Text(
          numberValue.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 64,
          ),
        );
      },
    );
  }
}
