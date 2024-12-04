import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/verification_one_screen/models/verification_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class VerificationOneController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerificationOneModel> verificationOneModelObj = VerificationOneModel().obs;

  int secondsRemaining = 60;

  setTiming(int value) {
    secondsRemaining = value;
    update();
  }

  change() {
    secondsRemaining--;
    update();
  }

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
