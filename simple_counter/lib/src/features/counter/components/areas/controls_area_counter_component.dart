import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:simple_counter/src/features/counter/components/buttons/number_changer/number_changer_button_counter_component.dart';
import 'package:simple_counter/src/features/counter/controllers/counter_controller.dart';
import 'package:simple_counter/src/features/counter/enums/types/buttons/number_changer_button_type_enum.dart';
import 'package:simple_counter/src/shared/helpers/device/screen/screen_device_helper.dart';

class ControlsAreaCounterComponent extends GetView<CounterController> {
  const ControlsAreaCounterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final isIncreseadEnabled = controller.isIncreseadEnabled.value;
        final isDecreseadEnabled = controller.isDecreseadEnabled.value;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberChangerButtonCounterComponent(
              type: NumberChangerButtonType.incresead,
              isEnabled: isIncreseadEnabled,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenDeviceHelper.of(context).getWidth(
                  percentage: 0.0125,
                ),
              ),
            ),
            NumberChangerButtonCounterComponent(
              type: NumberChangerButtonType.decreased,
              isEnabled: isDecreseadEnabled,
            ),
          ],
        );
      },
    );
  }
}
