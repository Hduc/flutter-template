import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/home_page/controller/home_controller.dart';
import 'package:dating_app/presentation/home_page/models/home_model.dart';
import 'package:dating_app/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchScreen.
///
/// This class manages the state of the SearchScreen, including the
/// current searchModelObj
class SearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  HomeController homeController = Get.put(HomeController());

  List<HomeModel> personList = [];

  void filterPerson(String query) {
    List<HomeModel> searchList = homeController.personList
        .where((personList) => personList.name!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    personList = searchList;
    update();

  }

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();

  }
}
