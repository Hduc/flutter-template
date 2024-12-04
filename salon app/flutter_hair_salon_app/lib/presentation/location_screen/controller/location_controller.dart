import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/location_screen/models/location_model.dart';
import 'package:flutter/material.dart';

class LocationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LocationModel> locationModelObj = LocationModel().obs;

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
