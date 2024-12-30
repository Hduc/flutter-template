import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';

class EditProfileController extends GetxController {
  TextEditingController firstnameController = TextEditingController(text: "Bessie");

  TextEditingController lastnameController = TextEditingController(text: "Cooper");

  TextEditingController emailController = TextEditingController(text: "bessiecooper@gmail.com");

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
  }
}
