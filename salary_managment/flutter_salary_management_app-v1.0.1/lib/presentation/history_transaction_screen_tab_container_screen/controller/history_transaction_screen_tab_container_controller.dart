import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/history_transaction_screen_tab_container_screen/models/history_transaction_screen_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HistoryTransactionScreenTabContainerScreen.
///
/// This class manages the state of the HistoryTransactionScreenTabContainerScreen, including the
/// current historyTransactionScreenTabContainerModelObj
class HistoryTransactionScreenTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HistoryTransactionScreenTabContainerModel>
      historyTransactionScreenTabContainerModelObj =
      HistoryTransactionScreenTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
