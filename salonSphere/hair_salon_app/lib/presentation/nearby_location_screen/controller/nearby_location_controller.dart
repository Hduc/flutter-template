import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/nearby_location_screen/models/nearby_location_model.dart';
import 'package:flutter/material.dart';

class NearbyLocationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  List<NearbyLocationModel> images = [
    NearbyLocationModel("near1.png", "Tress Trends"),
    NearbyLocationModel("near2.png", "Mane Magic"),
    NearbyLocationModel("near3.png", "Curl & Co."),
    NearbyLocationModel("near4.png", "The Hair Lounge"),
    NearbyLocationModel("near5.png", "Style Savvy"),
    NearbyLocationModel("near6.png", "Polished Perfection"),
    NearbyLocationModel("near7.png", "Style Sanctuary"),
    NearbyLocationModel("near8.png", "The Cutting Edge"),
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
