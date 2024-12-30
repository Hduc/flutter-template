import 'package:flutter/cupertino.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/register_set_pin_screen/models/register_set_pin_model.dart';

class RegisterSetPinController extends GetxController {
  Rx<RegisterSetPinModel> registerSetPinModelObj = RegisterSetPinModel().obs;
  TextEditingController otpController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
