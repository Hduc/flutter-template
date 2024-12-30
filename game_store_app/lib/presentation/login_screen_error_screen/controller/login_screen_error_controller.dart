import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/login_screen_error_screen/models/login_screen_error_model.dart';
import 'package:flutter/material.dart';

class LoginScreenErrorController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginScreenErrorModel> loginScreenErrorModelObj =
      LoginScreenErrorModel().obs;

  Rx<bool> isShowPassword = true.obs;

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
