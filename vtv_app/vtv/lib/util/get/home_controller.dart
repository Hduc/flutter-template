import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vtv/util/get/storage.dart';

import '../color_data.dart';

class HomeController extends GetxController {
  ThemeData get theme => isDark ? getDarkThemeData() : getLightThemeData();

  bool get introAvailable => isIntroAvailable;

  bool get isLogin => isLoggedIn;
}
