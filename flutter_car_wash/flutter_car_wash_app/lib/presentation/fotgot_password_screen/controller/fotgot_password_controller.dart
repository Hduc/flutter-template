import 'package:carwash_app/core/app_export.dart';
import 'package:carwash_app/presentation/fotgot_password_screen/models/fotgot_password_model.dart';
import 'package:flutter/material.dart';

class FotgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<FotgotPasswordModel> fotgotPasswordModelObj = FotgotPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }


}
