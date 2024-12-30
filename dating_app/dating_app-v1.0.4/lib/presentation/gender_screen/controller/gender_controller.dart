import 'dart:io';

import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/gender_screen/models/gender_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenderController extends GetxController {
  Rx<GenderModel> genderModelObj = GenderModel().obs;
  RxInt sizeIndex = 0.obs;
  RxBool productPressed = false.obs;

  List<GenderModel> genderImg =[
   GenderModel(
    img: ImageConstant.imgUser
   ),
   GenderModel(
       img: ImageConstant.imgUserIndigo900,
   ),
  ];

  select(int index){
    sizeIndex.value =index;
    productPressed.value = !productPressed.value;
    update();
    debugPrint('Color index --->${genderImg[index]}');
  }

  onExit() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    sizeIndex.value;
    super.onInit();

  }
}
