import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/deposit_waiting_fund_screen/models/deposit_waiting_fund_model.dart';
import 'package:flutter/material.dart';

class DepositWaitingFundController extends GetxController {
  TextEditingController priceController = TextEditingController();

  TextEditingController inputbaseController = TextEditingController();

  Rx<DepositWaitingFundModel> depositWaitingFundModelObj =
      DepositWaitingFundModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    inputbaseController.dispose();
  }
}
