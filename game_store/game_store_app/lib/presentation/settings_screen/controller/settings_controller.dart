import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/settings_screen/models/settings_model.dart';import 'package:flutter/material.dart';class SettingsController extends GetxController {TextEditingController profileController = TextEditingController();

TextEditingController profileoneController = TextEditingController();

TextEditingController profiletwoController = TextEditingController();

Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); profileController.dispose(); profileoneController.dispose(); profiletwoController.dispose(); } 
 }
