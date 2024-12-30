import 'package:flutter/material.dart';

/// A controller class for the MyLibaryPlaylistTabContainerScreen.
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/my_libary_playlist_tab_container_screen/models/my_libary_playlist_tab_container_model.dart';

///
/// This class manages the state of the MyLibaryPlaylistTabContainerScreen, including the
/// current myLibaryPlaylistTabContainerModelObj
class MyLibaryPlaylistTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MyLibaryPlaylistTabContainerModel> myLibaryPlaylistTabContainerModelObj =
      MyLibaryPlaylistTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));


  int currentPage = 0;

  void setCurrentPage(int i) {
    currentPage = i;
    update();
  }
}
