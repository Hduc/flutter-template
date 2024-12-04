import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/writing_tab_container_screen/models/writing_tab_container_model.dart';
import 'package:flutter/material.dart';

class WritingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<WritingTabContainerModel> writingTabContainerModelObj =
      WritingTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
