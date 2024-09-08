import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:simple_counter/src/shared/navigation/bindings/bindings_navigation.dart';
import 'package:simple_counter/src/shared/navigation/pages/pages_navigation.dart';
import 'package:simple_counter/src/shared/navigation/routes/routes_navigation.dart';
import 'package:simple_counter/src/shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      title: "Contador",
      supportedLocales: const <Locale>[
        Locale("pt", "BR"),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      color: AppTheme.primaryColor,
      theme: AppTheme.theme,
      smartManagement: SmartManagement.full,
      defaultTransition: PagesNavigation.defaultTransition,
      getPages: PagesNavigation.pages,
      initialRoute: RoutesNavigation.initial,
      initialBinding: BindingsNavigation.initial,
    );
  }
}
