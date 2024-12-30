import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/login_with_error_screen/models/login_with_error_model.dart';import 'package:flutter/material.dart';class LoginWithErrorController extends GetxController {TextEditingController weburlController = TextEditingController();

TextEditingController group3344Controller = TextEditingController();

Rx<LoginWithErrorModel> loginWithErrorModelObj = LoginWithErrorModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); weburlController.dispose(); group3344Controller.dispose(); } 
 }
