import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/history_two_screen/models/history_two_model.dart';
import 'package:flutter/material.dart';

class HistoryTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HistoryTwoModel> historyTwoModelObj = HistoryTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
