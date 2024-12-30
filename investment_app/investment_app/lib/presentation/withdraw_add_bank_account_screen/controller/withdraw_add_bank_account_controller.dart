import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/withdraw_add_bank_account_screen/models/withdraw_add_bank_account_model.dart';
import 'package:flutter/material.dart';

class WithdrawAddBankAccountController extends GetxController {
  TextEditingController searchboxController = TextEditingController();

  Rx<WithdrawAddBankAccountModel> withdrawAddBankAccountModelObj =
      WithdrawAddBankAccountModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchboxController.dispose();
  }
}
