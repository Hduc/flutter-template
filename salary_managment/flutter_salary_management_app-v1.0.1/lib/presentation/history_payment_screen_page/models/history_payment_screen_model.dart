import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import 'history_item_model.dart';

/// This class defines the variables used in the [history_payment_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryPaymentScreenModel {
  Rx<List<HistoryItemModel>> historyItemList = Rx([
    HistoryItemModel(
      amount: "\$32,800.00".obs,
      textColor: Color(0xFF04B155).obs,
      fillColor: Color(0xFFE6F8EE).obs,
      text: 'Paid'.obs,
    ),
    HistoryItemModel(
      amount: "\$42,800.00".obs,
      fillColor: Color(0xFFD0A465).obs,
      textColor: Color(0xFFF1A80F).obs,
      text: 'Pending'.obs,
    ),
    HistoryItemModel(
      amount: "\$32,800.00".obs,
      textColor: Color(0xFFD83636).obs,
      fillColor: Color(0xFFFCEBEB).obs,
      text: 'Cancelled'.obs,
    ),
    HistoryItemModel(
      amount: "\$12,800.00".obs,
      textColor: Color(0xFF04B155).obs,
      fillColor: Color(0xFFE6F8EE).obs,
      text: 'Paid'.obs,
    ),
  ]);
}
