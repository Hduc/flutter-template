import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/reset_password_screen/models/reset_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the ResetPasswordScreen.
///
/// This class manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordController extends GetxController {

 TextEditingController newPassController = TextEditingController();

TextEditingController confirmPassController = TextEditingController();

Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

 Rx<bool> isShowPassword = true.obs;

 Rx<bool> isShowPassword1 = true.obs;

 }
