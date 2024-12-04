import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/nearby_location_two_screen/models/nearby_location_two_model.dart';
import 'package:flutter/material.dart';

import '../../nearby_location_screen/models/nearby_location_model.dart';

class NearbyLocationTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NearbyLocationTwoModel> nearbyLocationTwoModelObj =
      NearbyLocationTwoModel().obs;


  List<NearbyLocationModel> images = [
    NearbyLocationModel("near1.png", "Silk & Scissors"),
    NearbyLocationModel("near2.png", "Polished Perfection"),
    NearbyLocationModel("near3.png", "Mane Magic"),
    NearbyLocationModel("near4.png", "Tress Trends"),
    NearbyLocationModel("near5.png", "The Hair Lounge"),
    NearbyLocationModel("near6.png", "Salon Envy"),
    NearbyLocationModel("near7.png", "Curl & Co."),
    NearbyLocationModel("near8.png", "Silk & Scissors"),
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
