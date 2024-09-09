import 'package:flutter/material.dart';
import 'package:simple_counter/src/app_widget.dart';
import 'package:simple_counter/src/shared/app/initializing/initializing_app.dart';

void main() {
  InitializingApp.instance.start();
  runApp(const AppWidget());
}
