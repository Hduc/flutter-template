import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/log_out_popup_dialog/models/log_out_popup_model.dart';

class LogOutPopupController extends GetxController {
  Rx<LogOutPopupModel> logOutPopupModelObj = LogOutPopupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
