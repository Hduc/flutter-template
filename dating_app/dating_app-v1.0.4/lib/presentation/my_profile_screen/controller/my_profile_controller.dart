import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/my_profile_screen/models/my_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyProfileScreen.
///
/// This class manages the state of the MyProfileScreen, including the
/// current myProfileModelObj
class MyProfileController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController professionController = TextEditingController();

TextEditingController genderController = TextEditingController();

TextEditingController durationController = TextEditingController();

Rx<MyProfileModel> myProfileModelObj = MyProfileModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); emailController.dispose(); professionController.dispose(); genderController.dispose(); durationController.dispose(); } 
 }
