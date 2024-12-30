import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/forget_password1_screen/models/forget_password1_model.dart';
import 'package:flutter/material.dart';

class ForgetPassword1Controller extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgetPassword1Model> forgetPassword1ModelObj = ForgetPassword1Model().obs;


}
