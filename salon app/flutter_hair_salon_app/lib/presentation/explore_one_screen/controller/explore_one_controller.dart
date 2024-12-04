// ignore_for_file: unused_import

import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/explore_one_screen/models/explore_one_model.dart';
import 'package:hair_salon_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ExploreOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ExploreOneModel> exploreOneModelObj = ExploreOneModel().obs;

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
