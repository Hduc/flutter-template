import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/history_one_screen/models/history_one_model.dart';
import 'package:flutter/material.dart';

class HistoryOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HistoryOneModel> historyOneModelObj = HistoryOneModel().obs;

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
