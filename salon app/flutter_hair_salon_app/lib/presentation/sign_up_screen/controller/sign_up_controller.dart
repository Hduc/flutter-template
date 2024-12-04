import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

import '../../../core/country_picker/country.dart';
import '../../../core/country_picker/utils/utils.dart';

class SignUpController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController group3345Controller = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('US').obs;

  RxBool isPasswordVisible = false.obs;

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
    group3345Controller.dispose();
  }
}
