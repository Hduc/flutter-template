import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/near_by_you_tab_container_screen/models/near_by_you_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the NearByYouTabContainerScreen.
///
/// This class manages the state of the NearByYouTabContainerScreen, including the
/// current nearByYouTabContainerModelObj
class NearByYouTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<NearByYouTabContainerModel> nearByYouTabContainerModelObj = NearByYouTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
