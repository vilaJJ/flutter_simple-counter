import 'package:flutter/material.dart';

class ScreenDeviceHelper {
  ScreenDeviceHelper.of(this.context);

  final BuildContext context;

  double getWidth({double percentage = 1}) {
    return MediaQuery.of(context).size.width * percentage;
  }

  double getHeight({double percentage = 1}) {
    return MediaQuery.of(context).size.height * percentage;
  }
}
