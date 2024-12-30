import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/edit_profile_screen/models/edit_profile_model.dart';

import 'package:flutter/material.dart';

import '../../../core/country_picker/country.dart';
import '../../../core/country_picker/utils/utils.dart';

class EditProfileController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController phoneNumberController =
      TextEditingController(text: "(480) 555-0103");

  TextEditingController emailController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('1').obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
  }
}
