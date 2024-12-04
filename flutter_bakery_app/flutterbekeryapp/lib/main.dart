import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        bottomSheetTheme: BottomSheetThemeData(backgroundColor: appTheme.white,surfaceTintColor: appTheme.white),
        dialogTheme: DialogTheme(
            backgroundColor: appTheme.white, surfaceTintColor: appTheme.white),
        useMaterial3: true,
        visualDensity: VisualDensity.standard,
      ),
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'flutterbekeryapp',
      initialBinding: InitialBindings(),
      // initialRoute: AppRoutes.initialRoute,
      // getPages: AppRoutes.pages,

      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: (settings) {
        return AppRoutes.routesFactory(settings);
      },
    );
  }
}
