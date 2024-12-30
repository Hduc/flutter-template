import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/help_and_support_screen/models/help_and_support_model.dart';import 'package:flutter/material.dart';class HelpAndSupportController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HelpAndSupportModel> helpAndSupportModelObj = HelpAndSupportModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
