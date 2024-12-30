import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/verification_screen/models/verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerificationScreen.
///
/// This class manages the state of the VerificationScreen, including the
/// current verificationModelObj
class VerificationController extends GetxController with CodeAutoFill {
  TextEditingController otpController = TextEditingController();

  Rx<VerificationModel> verificationModelObj = VerificationModel().obs;

  @override
  void codeUpdated() {
    otpController.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
