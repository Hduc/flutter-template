// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/models/service_detail_three_model.dart';

import '../models/service_model.dart';

class ServiceDetailThreeController extends GetxController
    with SingleGetTickerProviderMixin {
  Rx<ServiceDetailThreeModel> serviceDetailThreeModelObj =
      ServiceDetailThreeModel().obs;

  TabController? tabController;

  List<ServiceModel> serviceList = [
    ServiceModel("Stylish Hair Cut", "30 Min", "\$20.00", true),
    ServiceModel("Hair Style", "1 Hour", "\$50.00", false),
    ServiceModel("Hair coloring", "30 Min", "\$40.00", false),
    ServiceModel("Manicure", "45 Min", "\$120.00", false),
    ServiceModel("Beauty Make up", "1 Hour 30 Min", "\$260.00", false),
    ServiceModel("Bridal Make Up", "2 Hour 30 Min", "\$350.00", false),
    ServiceModel("Shaving", "10 Min", "\$30.00", false),
    ServiceModel("Hair Wash", "10 Min", "\$30.00", false),
  ];

  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
