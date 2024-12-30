import 'package:flutter/material.dart';

/// A controller class for the OtpVerificationScreen.
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/otp_verification_screen/models/otp_verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';

///
/// This class manages the state of the OtpVerificationScreen, including the
/// current otpVerificationModelObj
class OtpVerificationController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<OtpVerificationModel> otpVerificationModelObj = OtpVerificationModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

}
