import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController {
  TextEditingController group3330Controller = TextEditingController();

  TextEditingController group3331Controller = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  RxBool isNewPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group3330Controller.dispose();
    group3331Controller.dispose();
  }
}
