import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/history_empty_screen/models/history_empty_model.dart';

class HistoryEmptyController extends GetxController {
  Rx<HistoryEmptyModel> historyEmptyModelObj = HistoryEmptyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
