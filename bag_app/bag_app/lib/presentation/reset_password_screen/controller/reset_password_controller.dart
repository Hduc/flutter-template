import 'package:flutter/material.dart';

/// A controller class for the ResetPasswordScreen.
import 'package:bag_app/core/app_export.dart';
import 'package:bag_app/presentation/reset_password_screen/models/reset_password_model.dart';

///
/// This class manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordController extends GetxController {

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    isShowPassword.value = true;
    isShowPassword1.value = true;
  }


}
