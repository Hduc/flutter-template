import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/reset_password_screen/models/reset_password_model.dart';import 'package:flutter/material.dart';class ResetPasswordController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
