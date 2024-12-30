import 'dart:async';

import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      _getIsFirst();
    });
  }

  _getIsFirst() async {
    bool isSignIn = await PrefUtils.getIsSignIn();
    bool isIntro = await PrefUtils.getIsIntro();
    bool isExplore = await PrefUtils.getIsExploler();
    print("isSignIn is a======================${isExplore}");
    Timer(const Duration(seconds: 3), () {
      if (isIntro) {
        Get.toNamed(AppRoutes.onboardingOneScreen);
      } else if (isSignIn) {
        Get.toNamed(AppRoutes.loginScreen);
      } else {
        if (isExplore) {
          Get.toNamed(AppRoutes.exploreGamesScreen);
        } else {
          Get.toNamed(AppRoutes.homeScreenContainer1Screen);
        }

      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
