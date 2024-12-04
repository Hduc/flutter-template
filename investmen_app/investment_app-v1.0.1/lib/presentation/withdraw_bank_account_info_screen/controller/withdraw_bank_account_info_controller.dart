import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/withdraw_bank_account_info_screen/models/withdraw_bank_account_info_model.dart';import 'package:flutter/material.dart';class WithdrawBankAccountInfoController extends GetxController {TextEditingController inputbaseController = TextEditingController();

TextEditingController inputbaseOneController = TextEditingController();

TextEditingController inputbaseTwoController = TextEditingController();

Rx<WithdrawBankAccountInfoModel> withdrawBankAccountInfoModelObj = WithdrawBankAccountInfoModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputbaseController.dispose(); inputbaseOneController.dispose(); inputbaseTwoController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; withdrawBankAccountInfoModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); withdrawBankAccountInfoModelObj.value.dropdownItemList.refresh(); } 
 }
