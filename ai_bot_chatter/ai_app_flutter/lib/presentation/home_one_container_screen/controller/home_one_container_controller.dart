// ignore_for_file: duplicate_ignore, must_call_super

import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/home_one_container_screen/models/home_one_container_model.dart';

class HomeOneContainerController extends GetxController {
  Rx<HomeOneContainerModel> homeOneContainerModelObj =
      HomeOneContainerModel().obs;

  RxInt selectedIndex = 0.obs;

  bool isfill = false;

  changeFill(bool value){
    isfill = value;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // ignore: must_call_super, must_call_super, must_call_super, must_call_super, must_call_super, must_call_super, must_call_super, must_call_super, must_call_super
  @override
  void onInit() {}
}
