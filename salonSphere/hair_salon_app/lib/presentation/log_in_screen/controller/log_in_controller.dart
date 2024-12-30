import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  RxBool isPasswordVisible = false.obs;

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
