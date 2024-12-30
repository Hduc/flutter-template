import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/reset_password_successful_dialog/models/reset_password_successful_model.dart';

class ResetPasswordSuccessfulController extends GetxController {
  Rx<ResetPasswordSuccessfulModel> resetPasswordSuccessfulModelObj =
      ResetPasswordSuccessfulModel().obs;

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
