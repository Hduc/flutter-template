import 'dart:async';

import 'package:flutter/services.dart';

import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {




  _getIsFirst() async {

    bool isSignIn = await PrefUtils.getIsSignIn();
    bool isIntro = await PrefUtils.getIsIntro();
    bool isExploler = await PrefUtils.getIsExploler();
    print("isSignIn is a======================${isSignIn}");
    Timer(const Duration(seconds: 3), ()  {
      if (isIntro) {
        Get.toNamed(AppRoutes.onboardingOneScreen);
      }
      else if (isSignIn) {
        Get.toNamed(AppRoutes.loginScreen);
      }
      else if (isExploler) {
        Get.toNamed(AppRoutes.exploreGamesScreen);
      }
      else {
        Get.toNamed(AppRoutes.homeScreenContainer1Screen);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        closeApp();
        return false;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCut,
                          height: getSize(60),
                          width: getSize(60)),
                      Padding(
                          padding: getPadding(top: 8, bottom: 5),
                          child: Text("lbl_gamies".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAeonikBold21))
                    ])),
          )),
    );
  }
  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
}
