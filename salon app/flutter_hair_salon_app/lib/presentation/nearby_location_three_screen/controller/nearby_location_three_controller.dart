import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/nearby_location_three_screen/models/nearby_location_three_model.dart';
import 'package:flutter/material.dart';

import '../../nearby_location_screen/models/nearby_location_model.dart';

class NearbyLocationThreeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NearbyLocationThreeModel> nearbyLocationThreeModelObj =
      NearbyLocationThreeModel().obs;


  List<NearbyLocationModel> images = [
    NearbyLocationModel("near3.png", "The Cutting Edge"),
    NearbyLocationModel("near2.png", "The Hair Lounge"),
    NearbyLocationModel("near7.png", "Style Sanctuary"),
    NearbyLocationModel("near1.png", "Curl & Co."),
    NearbyLocationModel("near5.png", "Salon Envy"),
    NearbyLocationModel("near6.png", "Polished Perfection"),
    NearbyLocationModel("near9.png", "Mane Magic"),
    NearbyLocationModel("near8.png", "Tress Trends"),
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
