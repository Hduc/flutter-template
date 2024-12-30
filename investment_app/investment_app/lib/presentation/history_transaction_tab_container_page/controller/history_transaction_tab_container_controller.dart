import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/history_transaction_tab_container_page/models/history_transaction_tab_container_model.dart';
import 'package:flutter/material.dart';

class HistoryTransactionTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HistoryTransactionTabContainerController(
      this.historyTransactionTabContainerModelObj);

  Rx<HistoryTransactionTabContainerModel>
      historyTransactionTabContainerModelObj;

  late TabController tabsController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
