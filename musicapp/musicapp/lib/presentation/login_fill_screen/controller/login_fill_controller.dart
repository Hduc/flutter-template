import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/login_fill_screen/models/login_fill_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginFillScreen.
///
/// This class manages the state of the LoginFillScreen, including the
/// current loginFillModelObj
class LoginFillController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController grouptwoController = TextEditingController();

Rx<LoginFillModel> loginFillModelObj = LoginFillModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); grouptwoController.dispose(); } 
 }
