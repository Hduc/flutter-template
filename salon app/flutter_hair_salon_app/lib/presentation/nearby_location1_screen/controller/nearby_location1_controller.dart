import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/nearby_location1_screen/models/nearby_location1_model.dart';
import 'package:flutter/material.dart';

import '../../nearby_location_screen/models/nearby_location_model.dart';

class NearbyLocation1Controller extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NearbyLocation1Model> nearbyLocation1ModelObj = NearbyLocation1Model().obs;

  List<NearbyLocationModel> images = [
    NearbyLocationModel("near1.png", "Tress Trends"),
    NearbyLocationModel("near2.png", "Mane Magic"),
    NearbyLocationModel("near3.png", "Curl & Co."),
    NearbyLocationModel("near4.png", "The Cutting Edge"),
    NearbyLocationModel("near5.png", "Salon Envy"),
    NearbyLocationModel("near6.png", "Style Sanctuary"),
    NearbyLocationModel("near7.png", "The Hair Lounge"),
    NearbyLocationModel("near8.png", "Polished Perfection"),
  ];

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
