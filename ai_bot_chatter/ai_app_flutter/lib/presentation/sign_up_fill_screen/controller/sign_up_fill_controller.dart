import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/sign_up_fill_screen/models/sign_up_fill_model.dart';
import 'package:flutter/material.dart';

class SignUpFillController extends GetxController {
  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpFillModel> signUpFillModelObj = SignUpFillModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
