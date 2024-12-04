import 'package:flutter/cupertino.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/withdraw_select_account_screen/models/withdraw_select_account_model.dart';

class WithdrawSelectAccountController extends GetxController {
  Rx<WithdrawSelectAccountModel> withdrawSelectAccountModelObj =
      WithdrawSelectAccountModel().obs;
  TextEditingController searchboxController = TextEditingController();
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
