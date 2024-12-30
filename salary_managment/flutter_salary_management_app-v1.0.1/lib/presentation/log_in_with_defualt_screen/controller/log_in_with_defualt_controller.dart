import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/log_in_with_defualt_screen/models/log_in_with_defualt_model.dart';import 'package:flutter/material.dart';/// A controller class for the LogInWithDefualtScreen.
///
/// This class manages the state of the LogInWithDefualtScreen, including the
/// current logInWithDefualtModelObj
class LogInWithDefualtController extends GetxController {TextEditingController emailFieldController = TextEditingController();
Rx<bool> isShowPassword = true.obs;

TextEditingController passwordFieldController = TextEditingController();

Rx<LogInWithDefualtModel> logInWithDefualtModelObj = LogInWithDefualtModel().obs;

@override void onClose() { super.onClose(); emailFieldController.dispose(); passwordFieldController.dispose(); } 
 }
