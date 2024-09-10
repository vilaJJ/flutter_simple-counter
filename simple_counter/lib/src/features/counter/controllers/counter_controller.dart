import 'package:get/get.dart';
import 'package:simple_counter/src/features/counter/constants/counter_constants.dart';
import 'package:simple_counter/src/features/counter/enums/types/buttons/number_changer_button_type_enum.dart';
import 'package:simple_counter/src/shared/extensions/rx/rx_extension.dart';

class CounterController extends GetxController {
  // Constructors
  CounterController();

  // Overrides
  @override
  void onInit() {
    _isIncreseadEnabled = true.obs;
    _isDecreseadEnabled = true.obs;

    _numberValue = CounterConstants.initialValue.obs;

    super.onInit();
  }

  @override
  void dispose() {
    <Rx?>[
      _numberValue,
      _isIncreseadEnabled,
      _isDecreseadEnabled,
    ].close();

    super.dispose();
  }

  // Properties
  late final RxInt _numberValue;
  late final RxBool _isIncreseadEnabled;
  late final RxBool _isDecreseadEnabled;

  // Getters
  RxInt get numberValue => _numberValue;
  RxBool get isIncreseadEnabled => _isIncreseadEnabled;
  RxBool get isDecreseadEnabled => _isDecreseadEnabled;

  RxString get status {
    String value;

    if (_isIncreseadEnabled.value == false) {
      value = "Valor máximo alcançado";
    } else if (_isDecreseadEnabled.value == false) {
      value = "Valor mínimo alcançado";
    } else {
      value = "Contador habilitado";
    }

    return value.obs;
  }

  // Public methods
  void changeNumber(NumberChangerButtonType type) {
    int number = _numberValue.value;

    switch (type) {
      case NumberChangerButtonType.decreased:
        number = _decreaseNumber(number);
      case NumberChangerButtonType.incresead:
        number = _increaseNumber(number);
    }

    _isIncreseadEnabled.value = number < CounterConstants.maxValue;
    _isDecreseadEnabled.value = number > CounterConstants.minValue;
    _numberValue.value = number;
  }

  // Private methods
  int _increaseNumber(int actualValue) {
    bool isIncreseable = actualValue < CounterConstants.maxValue;

    if (isIncreseable == true) {
      actualValue++;
    }
    return actualValue;
  }

  int _decreaseNumber(int actualValue) {
    bool isDecreseable = actualValue > CounterConstants.minValue;

    if (isDecreseable == true) {
      actualValue--;
    }
    return actualValue;
  }
}
