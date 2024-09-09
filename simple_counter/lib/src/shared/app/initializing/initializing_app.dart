import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

class InitializingApp {
  InitializingApp._();

  static void start() {
    setPathUrlStrategy();
    WidgetsFlutterBinding.ensureInitialized();
  }
}
