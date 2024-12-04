import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/otp_code_varification_screen/models/otp_code_varification_model.dart';import 'package:flutter/material.dart';class OtpCodeVarificationController extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<OtpCodeVarificationModel> otpCodeVarificationModelObj = OtpCodeVarificationModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
