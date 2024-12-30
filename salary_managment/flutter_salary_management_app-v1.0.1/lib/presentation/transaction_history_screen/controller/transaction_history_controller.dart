import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/transaction_history_screen/models/transaction_history_model.dart';/// A controller class for the TransactionHistoryScreen.
///
/// This class manages the state of the TransactionHistoryScreen, including the
/// current transactionHistoryModelObj
class TransactionHistoryController extends GetxController {Rx<TransactionHistoryModel> transactionHistoryModelObj = TransactionHistoryModel().obs;

 }
