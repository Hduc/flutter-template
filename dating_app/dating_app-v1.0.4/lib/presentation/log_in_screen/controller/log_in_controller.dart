import 'dart:io';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  onExit() {
    if (Platform.isIOS) {
     exit(0);
    } else {
     SystemNavigator.pop();
    }
   }


   @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();

  }
}
