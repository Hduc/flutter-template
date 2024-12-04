import 'package:flutter/material.dart';

/// A controller class for the LoginWithActiveScreen.
import 'package:bag_app/core/app_export.dart';
import 'package:bag_app/presentation/login_with_active_screen/models/login_with_active_model.dart';

///
/// This class manages the state of the LoginWithActiveScreen, including the
/// current loginWithActiveModelObj
class LoginWithActiveController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginWithActiveModel> loginWithActiveModelObj = LoginWithActiveModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> englishName = false.obs;
  bool cheak = false;

}
