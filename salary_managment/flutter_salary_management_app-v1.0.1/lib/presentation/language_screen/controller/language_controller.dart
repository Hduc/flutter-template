import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter/material.dart';/// A controller class for the LanguageScreen.
///
/// This class manages the state of the LanguageScreen, including the
/// current languageModelObj
class LanguageController extends GetxController {TextEditingController languageEditText1Controller = TextEditingController();
int selectedIndex = 0;
TextEditingController languageEditText2Controller = TextEditingController();

TextEditingController languageEditText3Controller = TextEditingController();

TextEditingController languageEditText4Controller = TextEditingController();

TextEditingController languageEditText5Controller = TextEditingController();

TextEditingController languageEditText6Controller = TextEditingController();

// Rx<LanguageModel> languageModelObj = LanguageModel().obs;

@override void onClose() { super.onClose(); languageEditText1Controller.dispose(); languageEditText2Controller.dispose(); languageEditText3Controller.dispose(); languageEditText4Controller.dispose(); languageEditText5Controller.dispose(); languageEditText6Controller.dispose(); } 
 }
