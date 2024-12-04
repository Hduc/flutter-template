import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';


class LocationAccessContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // bool isInfo = await  PrefData.getInfo();
  bool locSelect =true ;


  bool currentLocationStatus = false;
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  changeLoc()  {
    locSelect =false;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    // changeLoc();
    super.onInit();
  }
}
