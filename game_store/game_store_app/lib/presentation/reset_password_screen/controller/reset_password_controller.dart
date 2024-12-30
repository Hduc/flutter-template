import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onReady() {
    super.onReady();
  }


}
