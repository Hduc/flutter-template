import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/advertisements_screen/models/advertisements_model.dart';import 'package:flutter/material.dart';class AdvertisementsController extends GetxController {TextEditingController grouptwentyseveController = TextEditingController();

Rx<AdvertisementsModel> advertisementsModelObj = AdvertisementsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); grouptwentyseveController.dispose(); } 
 }
