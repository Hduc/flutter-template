import 'package:flutter_salary_management_app/core/app_export.dart';
import '../models/splash_model.dart';

/// A controller class for the SplashTwoScreen.
///
/// This class manages the state of the SplashTwoScreen, including the
/// current splashTwoModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashTwoModelObj = SplashModel().obs;
  @override
  Future<void> onReady() async {
    bool isLogin = await PrefUtils.getLogin();
    bool isIntro = await PrefUtils.getIntro();
    print("isLogin=============$isLogin");
    Future.delayed(
      const Duration(seconds: 3),() {
      if(isIntro) {
        Get.toNamed(AppRoutes.onboardingOneScreen,);
        // CommonMethod.sendToNextScreen(context, RoutesPath.onBoardingScreen);
      }
      else if (isLogin) {
        Get.toNamed(AppRoutes.logInWithDefualtScreen,);
        // CommonMethod.sendToNextScreen(context, RoutesPath.signUpScreen);
      } else {
        Get.toNamed(AppRoutes.homeScreenContainerScreen,);
        // CommonMethod.sendToNextScreen(context, RoutesPath.commonBottomBar);
      }
    },
    );
  }
}
