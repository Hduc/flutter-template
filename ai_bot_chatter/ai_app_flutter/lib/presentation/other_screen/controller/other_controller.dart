import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/other_screen/models/other_model.dart';

class OtherController extends GetxController {
  Rx<OtherModel> otherModelObj = OtherModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
