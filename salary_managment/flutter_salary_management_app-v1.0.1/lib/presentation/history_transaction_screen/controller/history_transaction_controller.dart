import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/history_transaction_screen/models/history_transaction_model.dart';import 'package:flutter/material.dart';/// A controller class for the HistoryTransactionScreen.
///
/// This class manages the state of the HistoryTransactionScreen, including the
/// current historyTransactionModelObj
class HistoryTransactionController extends GetxController {TextEditingController notesvalueController = TextEditingController();

Rx<HistoryTransactionModel> historyTransactionModelObj = HistoryTransactionModel().obs;

@override void onClose() { super.onClose(); notesvalueController.dispose(); } 
 }
