import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {TextEditingController fullnameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController passController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); fullnameController.dispose(); emailController.dispose(); phoneNumberController.dispose(); passController.dispose(); }
 }
