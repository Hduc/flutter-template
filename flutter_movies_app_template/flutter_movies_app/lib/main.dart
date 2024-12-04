import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:vtv/app/profile/app_setting_screen.dart';
import 'package:vtv/app/profile/edit_profile.dart';
import 'package:vtv/app/profile/history_screen.dart';
import 'package:vtv/app/profile/my_profile_screen.dart';
import 'package:vtv/app/profile/notification_screen.dart';
import 'package:vtv/main_project.dart';
import 'package:vtv/util/get/home_controller.dart';
import 'package:vtv/util/get/route_key.dart';
import 'app/Home/home_screen.dart';
import 'app/intro/intro_screen.dart';
import 'app/intro/splash_screen.dart';

import 'generated/l10n.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      title: 'Flutter Demo',
      theme: controller.theme,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        splashRoute: (context) => SplashScreen(),
        introRoute: (context) => IntroScreen(),
        loginRoute: (context) => MainProject(),
        forgotPassRoute: (context) => MainProject(),
        resetPassRoute: (context) => MainProject(),
        registrationRoute: (context) => MainProject(),
        verificationScreenRoute: (context) => MainProject(),
        personalizationScreenRoute: (context) => MainProject(),
        homeScreenRoute: (context) => HomeScreen(),
        topPicksScreenRoute: (context) => MainProject(),
        popularShowsScreenRoute: (context) => MainProject(),
        videoDetailScreenRoute: (context) => MainProject(),
        myProfileScreenRoute: (context) => MyProfileScreen(),
        editProfileRoute: (context) => EditProfile(),
        notificationScreenRoute: (context) => NotificationScreen(),
        historyScreenRoute: (context) => HistoryScreen(),
        appSettingsScreenRoute: (context) => AppSettingsScreen(),
      },
    );
  }
}
