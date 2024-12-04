import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/history_transaction_page/models/history_transaction_model.dart';class HistoryTransactionController extends GetxController {HistoryTransactionController(this.historyTransactionModelObj);

Rx<HistoryTransactionModel> historyTransactionModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
