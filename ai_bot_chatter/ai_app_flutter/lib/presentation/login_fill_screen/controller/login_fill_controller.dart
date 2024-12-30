import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/login_fill_screen/models/login_fill_model.dart';
import 'package:flutter/material.dart';

class LoginFillController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginFillModel> loginFillModelObj = LoginFillModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
