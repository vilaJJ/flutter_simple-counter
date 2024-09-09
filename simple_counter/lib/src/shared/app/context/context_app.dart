import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ContextApp {
  ContextApp._();

  static ContextApp? _instance;
  static ContextApp get instance => _instance ?? ContextApp._();

  BuildContext get context {
    BuildContext? getxContext = Get.context;

    if (getxContext == null) {
      throw ArgumentError(
        "A aplicação se encontra em um contexto inexistente.",
        "Get.context",
      );
    }

    return getxContext;
  }
}
