import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF0A13BF);
  static const Color primaryColorDark = Color(0xFF090E73);
  static const Color primaryColorLight = Color(0xFF0713F2);

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: primaryColor,
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        primaryColorLight: primaryColorLight,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      );
}
