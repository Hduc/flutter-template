import 'dart:io';

import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {

  RxString countryCode = '+91'.obs;
  ImagePicker picker = ImagePicker();
  File? image;
  Future imgFromGallery() async {
    picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      debugPrint('No image selected.');
    }
    update();
  }



  Future imgFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      debugPrint('No image selected.');
    }
    update();
  }

  TextEditingController profilePhotoController = TextEditingController(text: "lbl_ronald_richards".tr);

  TextEditingController masterUsernameEmailController =
      TextEditingController(text: "msg_ronaldrichards_gmail_com".tr);

  TextEditingController phoneNumberController = TextEditingController(text: "(405) 555-0128".tr);

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('1').obs;

  @override
  void onClose() {
    super.onClose();
    profilePhotoController.dispose();
    masterUsernameEmailController.dispose();
    phoneNumberController.dispose();
  }
}
