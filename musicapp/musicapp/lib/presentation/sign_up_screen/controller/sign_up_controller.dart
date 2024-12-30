import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/sign_up_screen/models/sign_up_model.dart';

///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

}
