import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/login_screen_fill_screen/models/login_screen_fill_model.dart';
import 'package:flutter/material.dart';

class LoginScreenFillController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  Rx<LoginScreenFillModel> loginScreenFillModelObj = LoginScreenFillModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    priceController.dispose();
  }
}
