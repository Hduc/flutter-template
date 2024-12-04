import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

class MyBookingCancelledTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // MyBookingCancelledTabContainerController(
  //     this.myBookingCancelledTabContainerModelObj);

  TextEditingController searchController = TextEditingController();

  // Rx<MyBookingCancelledTabContainerModel>
  // myBookingCancelledTabContainerModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
