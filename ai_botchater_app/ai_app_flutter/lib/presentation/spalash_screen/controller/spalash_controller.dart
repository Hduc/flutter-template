import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/spalash_screen/models/spalash_model.dart';

class SpalashController extends GetxController {
  Rx<SpalashModel> spalashModelObj = SpalashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () async {
      bool isIntro = await PrefUtils.getIsIntro();
      bool isLogin = await PrefUtils.getIsLogin();
      if (isIntro) {

        Get.offNamed(
          AppRoutes.onboardingScreen,
        );
      } else {
        if (isLogin) {
          Get.offNamed(
            AppRoutes.loginScreen,
          );
        } else {
          Get.offNamed(
            AppRoutes.homeOneContainerScreen,
          );
        }
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
