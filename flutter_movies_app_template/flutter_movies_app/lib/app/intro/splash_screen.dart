// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/get/home_controller.dart';
import '../../util/get/route_key.dart';
import '../../util/widget_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  final controller = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 0),
      () {
        (controller.isLogin)
            ? Constant.sendToNext(context, homeScreenRoute)
            : (controller.introAvailable)
                ? Constant.sendToNext(context, introRoute)
                : Constant.sendToNext(context, loginRoute);
      },
    );
  }

  backClick(BuildContext context) {
    Constant.backToFinish(context);
  }

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: getSvgImageWithSize(
                  context, "splash_logo.svg", 100.w, 100.h,
                  fit: BoxFit.fill),
            ),
          ),
        ),
        onWillPop: () async {
          backClick(context);
          return false;
        });
  }
}
