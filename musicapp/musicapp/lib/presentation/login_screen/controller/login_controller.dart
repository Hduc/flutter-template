import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/login_screen/models/login_model.dart';

///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

}
