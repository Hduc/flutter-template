import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/verification_screen/models/verification_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerificationScreen.
import 'package:sms_autofill/sms_autofill.dart';

class VerificationController extends GetxController with CodeAutoFill {

  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<VerificationModel> verificationModelObj = VerificationModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
