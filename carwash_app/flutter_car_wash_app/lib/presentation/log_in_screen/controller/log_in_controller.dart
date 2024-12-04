import 'package:carwash_app/core/app_export.dart';
import 'package:carwash_app/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

class LogInController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;
  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
  }


}
