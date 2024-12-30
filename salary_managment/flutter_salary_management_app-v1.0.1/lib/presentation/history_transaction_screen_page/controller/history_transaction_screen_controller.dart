import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/history_transaction_screen_page/models/history_transaction_screen_model.dart';import 'package:flutter/material.dart';/// A controller class for the HistoryTransactionScreenPage.
///
/// This class manages the state of the HistoryTransactionScreenPage, including the
/// current historyTransactionScreenModelObj
class HistoryTransactionScreenController extends GetxController {HistoryTransactionScreenController(this.historyTransactionScreenModelObj);

TextEditingController disabledBarController = TextEditingController();

TextEditingController disabledBarController1 = TextEditingController();

Rx<HistoryTransactionScreenModel> historyTransactionScreenModelObj;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); disabledBarController.dispose(); disabledBarController1.dispose(); } 
onSelected(dynamic value) { for (var element in historyTransactionScreenModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} historyTransactionScreenModelObj.value.dropdownItemList.refresh(); } 
 }
