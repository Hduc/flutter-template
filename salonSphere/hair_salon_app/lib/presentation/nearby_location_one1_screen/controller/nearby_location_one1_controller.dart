import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/nearby_location_one1_screen/models/nearby_location_one1_model.dart';
import 'package:flutter/material.dart';

import '../../nearby_location_screen/models/nearby_location_model.dart';

class NearbyLocationOne1Controller extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NearbyLocationOne1Model> nearbyLocationOne1ModelObj =
      NearbyLocationOne1Model().obs;

  // List<String> images = [
  //   "near1.png",
  //   "near2.png",
  //   "near3.png",
  //   "near4.png",
  //   "near5.png",
  //   "near6.png",
  //   "near7.png",
  //   "near8.png",
  // ];

  List<NearbyLocationModel> images = [
    NearbyLocationModel("near1.png", "Polished Perfection"),
    NearbyLocationModel("near2.png", "Salon Envy"),
    NearbyLocationModel("near3.png", "Silk & Scissors"),
    NearbyLocationModel("near4.png", "The Hair Lounge"),
    NearbyLocationModel("near5.png", "Tress Trends"),
    NearbyLocationModel("near6.png", "Curl & Co."),
    NearbyLocationModel("near7.png", "Mane Magic"),
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
