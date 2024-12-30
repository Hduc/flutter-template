import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';class SignUpController extends GetxController {TextEditingController firstnameController = TextEditingController();

TextEditingController lastnameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); firstnameController.dispose(); lastnameController.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
