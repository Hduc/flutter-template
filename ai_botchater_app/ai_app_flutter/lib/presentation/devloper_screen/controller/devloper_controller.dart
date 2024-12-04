import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/devloper_screen/models/devloper_model.dart';

class DevloperController extends GetxController {
  Rx<DevloperModel> devloperModelObj = DevloperModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
