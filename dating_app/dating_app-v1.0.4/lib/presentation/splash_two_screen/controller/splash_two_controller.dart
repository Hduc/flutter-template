import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/splash_two_screen/models/splash_two_model.dart';

import '../../../data/pref_data.dart';/// A controller class for the SplashTwoScreen.
///
/// This class manages the state of the SplashTwoScreen, including the
/// current splashTwoModelObj
class SplashTwoController extends GetxController {Rx<SplashTwoModel> splashTwoModelObj = SplashTwoModel().obs;

@override void onReady() {
 Future.delayed(const Duration(milliseconds: 3000), () async {
 bool isIntro = await PrefData.getIntro();
 bool isLogin = await PrefData.getLogin();
 bool isInfo = await PrefData.getInfo();

 if (isIntro) {
  Get.toNamed(AppRoutes.onboardingOneScreen,);
 }
 else {
  if (isLogin) {
   Get.toNamed(AppRoutes.logInScreen,);
  }
  else {
   if (isInfo) {
    Get.toNamed(AppRoutes.genderScreen,);
   }
   else {
    Get.toNamed(AppRoutes.locationAccessContainer1Screen,);
   }
  }
 }}
 );
}

}
