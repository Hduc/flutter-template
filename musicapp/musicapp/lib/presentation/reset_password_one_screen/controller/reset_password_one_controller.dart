import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/reset_password_one_screen/models/reset_password_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ResetPasswordOneScreen.
///
/// This class manages the state of the ResetPasswordOneScreen, including the
/// current resetPasswordOneModelObj
class ResetPasswordOneController extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<ResetPasswordOneModel> resetPasswordOneModelObj = ResetPasswordOneModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
