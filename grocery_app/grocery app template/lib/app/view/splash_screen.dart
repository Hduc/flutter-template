// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery/base/pref_data.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';

import '../../base/color_data.dart';
import '../../base/constant.dart';
import '../../base/widget_utils.dart';
import '../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    PrefData.isLogIn().then((value) {
      Timer(
        const Duration(seconds: 0),
        () {
          (value)
              ? Constant.sendToNext(context, Routes.homeScreenRoute)
              : Constant.sendToNext(context, Routes.introRoute);
        },
      );
    });
  }

  void backClick() {
    Constant.backToPrev(context);
  }

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);

    double logoSize = FetchPixels.getPixelHeight(180);
    return WillPopScope(
        child: Scaffold(
          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: buildColumn(context, logoSize),
          ),
        ),
        onWillPop: () async {
          backClick();
          return false;
        });
  }

  Column buildColumn(BuildContext context, double logoSize) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getSvgImageWithSize(context, "logo.svg", logoSize, logoSize),
              getVerSpace(FetchPixels.getPixelHeight(40)),
              getCustomFont("Grocery", 70, getFontColor(context), 1,
                  fontWeight: FontWeight.w900)
            ],
          );
  }
}
