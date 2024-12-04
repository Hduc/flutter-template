import 'package:flutter/material.dart';
import 'package:grocery/app/routes/app_routes.dart';

import 'package:grocery/app/view/login/screen_change_pass.dart';
import 'package:grocery/app/view/login/screen_forgot_pass.dart';
import 'package:grocery/app/view/login/screen_login.dart';
import 'package:grocery/app/view/login/screen_select_country.dart';
import 'package:grocery/app/view/login/screen_sign_up.dart';
import 'package:grocery/app/view/login/screen_verify_code.dart';

import 'package:grocery/app/view/splash_screen.dart';
import 'package:grocery/main_project.dart';

import '../view/home/home_screen.dart';
import '../view/intro.dart';

class AppPages {
  static const initialRoute = Routes.homeRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.homeRoute: (context) => const SplashScreen(),
    Routes.homeScreenRoute: (context) => const MainProject(),
    Routes.introRoute: (context) => const IntroView(),
    Routes.loginRoute: (context) => const MainProject(),
    Routes.signUpRoute: (context) => const MainProject(),
    Routes.verifyCodeRoute: (context) => const MainProject(),
    Routes.changePassRoute: (context) => const MainProject(),
    Routes.forgotPassRoute: (context) => const MainProject(),
    Routes.selectCountryPath: (context) => const ScreenSelectCountry(),
    Routes.checkoutAddScreen: (context) => const MainProject(),


  };
}
