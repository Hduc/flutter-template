import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/recomended_for_you_one_screen/models/recomended_for_you_one_model.dart';import 'package:flutter/material.dart';class RecomendedForYouOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<RecomendedForYouOneModel> recomendedForYouOneModelObj = RecomendedForYouOneModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
