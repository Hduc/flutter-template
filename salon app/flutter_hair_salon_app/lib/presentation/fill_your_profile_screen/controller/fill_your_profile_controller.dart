import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/fill_your_profile_screen/models/fill_your_profile_model.dart';

import 'package:flutter/material.dart';

import '../../../core/country_picker/country.dart';
import '../../../core/country_picker/utils/utils.dart';

class FillYourProfileController extends GetxController {
  TextEditingController usernameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<FillYourProfileModel> fillYourProfileModelObj = FillYourProfileModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('US').obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
  }
}
