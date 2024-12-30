import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';class EditProfileController extends GetxController {TextEditingController inputController = TextEditingController();

TextEditingController inputoneController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputController.dispose(); inputoneController.dispose(); emailController.dispose(); } 
 }
