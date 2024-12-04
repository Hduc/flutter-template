import 'package:flutter/material.dart';
import 'package:grocery/app/routes/app_routes.dart';
import 'package:grocery/app/view/login/screen_login.dart';
import 'package:grocery/app/view/order/order_detail_screen.dart';
import 'package:grocery/app/view/splash_screen.dart';
import '../view/home/home_screen.dart';

class AppPages {
  static const initialRoute = Routes.homeRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.homeRoute: (context) => const SplashScreen(),
    Routes.homeScreenRoute: (context) => const HomeScreen(),
    Routes.loginRoute: (context) => const ScreenLogin(),
    Routes.myOrderDetailScreen: (context) => const OrderDetailScreen(),

  };
}
