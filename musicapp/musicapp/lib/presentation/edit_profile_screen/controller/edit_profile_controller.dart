import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {TextEditingController firstnameController = TextEditingController();

TextEditingController lastnameController = TextEditingController();

TextEditingController emailoneController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onClose() { super.onClose(); firstnameController.dispose(); lastnameController.dispose(); emailoneController.dispose(); } 
 }
