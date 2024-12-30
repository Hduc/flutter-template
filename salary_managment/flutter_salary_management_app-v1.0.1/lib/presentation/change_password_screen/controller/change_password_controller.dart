import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/change_password_screen/models/change_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChangePasswordScreen.
///
/// This class manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj
class ChangePasswordController extends GetxController {
  TextEditingController newpasswordController = TextEditingController(text: "123456".tr);

  TextEditingController confirmpasswordController =
      TextEditingController(text: "123456".tr);

  Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }
}
