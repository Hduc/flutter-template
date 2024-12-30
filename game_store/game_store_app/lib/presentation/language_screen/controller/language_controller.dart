import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/language_screen/models/language_model.dart';
import 'package:flutter/material.dart';

class LanguageController extends GetxController {
  int currentLanguage = 0;
  TextEditingController group4200Controller = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController group4202Controller = TextEditingController();

  TextEditingController group4203Controller = TextEditingController();

  TextEditingController languageoneController = TextEditingController();

  TextEditingController languagetwoController = TextEditingController();

  TextEditingController languagethreeController = TextEditingController();

  TextEditingController group4207Controller = TextEditingController();

  TextEditingController languagefourController = TextEditingController();

  TextEditingController languagefiveController = TextEditingController();

  Rx<LanguageModel> languageModelObj = LanguageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group4200Controller.dispose();
    languageController.dispose();
    group4202Controller.dispose();
    group4203Controller.dispose();
    languageoneController.dispose();
    languagetwoController.dispose();
    languagethreeController.dispose();
    group4207Controller.dispose();
    languagefourController.dispose();
    languagefiveController.dispose();
  }

  void setLanguge(int index) {
    currentLanguage = index;
    update();
  }
}
