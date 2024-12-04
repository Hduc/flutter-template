
import 'dart:io';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/location_access_container1_screen/models/location_access_container1_model.dart';
import 'package:flutter/services.dart';

import '../../../data/pref_data.dart';

class LocationAccessContainer1Controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<LocationAccessContainer1Model> locationAccessContainer1ModelObj =
      LocationAccessContainer1Model().obs;
  RxInt selectedIndex = 0.obs;



  setIndex(int indexs) {
    PrefData.currentIndex =indexs;
    update();
  }

  onExit() {
    if (PrefData.currentIndex != 0) {
      PrefData.currentIndex = 0;
      update();
    } else {
      if (Platform.isIOS) {
        exit(0);
      } else {
        SystemNavigator.pop();
      }
    }
  }

  void onItemTapped(int index) {
    setIndex(index);
    print('Index====> ${PrefData.currentIndex}');
    update();
    //  bottomBarController.
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
