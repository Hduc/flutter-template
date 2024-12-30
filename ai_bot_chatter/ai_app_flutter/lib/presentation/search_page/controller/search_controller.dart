import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/search_page/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchScreenController extends GetxController {
  SearchScreenController(this.searchModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<SearchModel> searchModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
