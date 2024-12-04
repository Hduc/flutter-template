import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/register_name_screen/models/register_name_model.dart';

class RegisterNameController extends GetxController {
  Rx<RegisterNameModel> registerNameModelObj = RegisterNameModel().obs;
  TextEditingController nameController  = TextEditingController();
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
