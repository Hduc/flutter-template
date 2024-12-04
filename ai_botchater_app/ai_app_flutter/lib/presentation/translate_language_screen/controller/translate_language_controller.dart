import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/translate_language_screen/models/translate_language_model.dart';import 'package:flutter/material.dart';class TranslateLanguageController extends GetxController {TextEditingController groupfiveController = TextEditingController();

Rx<TranslateLanguageModel> translateLanguageModelObj = TranslateLanguageModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupfiveController.dispose(); } 
 }
