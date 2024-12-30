import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/history_delete_screen/models/history_delete_model.dart';

class HistoryDeleteController extends GetxController {
  Rx<HistoryDeleteModel> historyDeleteModelObj = HistoryDeleteModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
