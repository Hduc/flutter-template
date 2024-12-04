import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/login_success_dialog/models/login_success_model.dart';

class LoginSuccessController extends GetxController {
  Rx<LoginSuccessModel> loginSuccessModelObj = LoginSuccessModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 2000), () {
      PrefUtils.setIsLogin(false);
      Get.offAllNamed(
        AppRoutes.homeOneContainerScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
