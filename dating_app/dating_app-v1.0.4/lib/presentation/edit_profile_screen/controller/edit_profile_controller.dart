import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {TextEditingController fullnameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phonenumberController = TextEditingController();

TextEditingController professiononeController = TextEditingController();

TextEditingController genderoneController = TextEditingController();

TextEditingController aboutController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onClose() { super.onClose(); fullnameController.dispose(); emailController.dispose(); phonenumberController.dispose(); professiononeController.dispose(); genderoneController.dispose(); aboutController.dispose(); }
 }
