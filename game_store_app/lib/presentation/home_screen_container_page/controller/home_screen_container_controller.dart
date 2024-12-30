import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/home_screen_container_page/models/home_screen_container_model.dart';
import 'package:flutter/material.dart';

class HomeScreenContainerController extends GetxController {
  HomeScreenContainerController(this.homeScreenContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeScreenContainerModel> homeScreenContainerModelObj;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }


}
