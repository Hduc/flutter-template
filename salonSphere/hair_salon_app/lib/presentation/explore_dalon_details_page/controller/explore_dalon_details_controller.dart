import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/explore_dalon_details_page/models/explore_dalon_details_model.dart';import 'package:flutter/material.dart';class ExploreDalonDetailsController extends GetxController {ExploreDalonDetailsController(this.exploreDalonDetailsModelObj);

TextEditingController searchController = TextEditingController();

Rx<ExploreDalonDetailsModel> exploreDalonDetailsModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
