import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/personal_screen/models/personal_model.dart';
// ignore: unused_import
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';

class PersonalController extends GetxController {
  Rx<PersonalModel> personalModelObj = PersonalModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
