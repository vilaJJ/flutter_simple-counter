import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:simple_counter/src/features/counter/controllers/counter_controller.dart';
import 'package:simple_counter/src/features/counter/enums/types/buttons/number_changer_button_type_enum.dart';

class NumberChangerButtonCounterComponent extends GetView<CounterController> {
  final NumberChangerButtonType type;
  final bool isEnabled;

  const NumberChangerButtonCounterComponent({
    super.key,
    required this.type,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(24),
      ),
      onPressed: isEnabled == true
          ? () => controller.changeNumber(
                type,
              )
          : null,
      child: Text(
        type.name.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
