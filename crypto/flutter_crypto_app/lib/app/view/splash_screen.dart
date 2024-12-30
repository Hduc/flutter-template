import 'dart:async';

import 'package:crypto_app/app/routes/app_routes.dart';
import 'package:crypto_app/base/color_data.dart';
import 'package:crypto_app/base/constant.dart';
import 'package:crypto_app/base/pref_data.dart';
import 'package:crypto_app/base/resizer/fetch_pixels.dart';
import 'package:crypto_app/base/widget_utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getStarting();
  }

  getStarting() async {
    bool isLogin = await PrefData.isLogIn();
    bool isIntro = await PrefData.getIntro();
    Timer(
         Duration(seconds: 3),
            () {
          if (isIntro) {
            Constant.sendToNext(context, Routes.introRoute);
          }
          else if (isLogin) {
            Constant.sendToNext(context, Routes.loginRoute);
          }
          else {
            Constant.sendToNext(context, Routes.homeScreenRoute);
          }
        }
    );
  }

  void backClick() {
    Constant.backToPrev(context);
  }

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return WillPopScope(
        child: Scaffold(
          body: Container(
            color: blueColor,
            child: Center(
                child: getSvgImage(
                  "splash_logo.svg",
                )),
          ),
        ),
        onWillPop: () async {
          backClick();
          return false;
        });
  }
}
