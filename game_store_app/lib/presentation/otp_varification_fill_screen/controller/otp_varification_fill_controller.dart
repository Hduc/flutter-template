import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/otp_varification_fill_screen/models/otp_varification_fill_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class OtpVarificationFillController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<OtpVarificationFillModel> otpVarificationFillModelObj = OtpVarificationFillModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
