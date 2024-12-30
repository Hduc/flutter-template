import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/account_page/models/account_model.dart';import 'package:flutter/material.dart';class AccountController extends GetxController {AccountController(this.accountModelObj);

TextEditingController profileController = TextEditingController();

Rx<AccountModel> accountModelObj;

Rx<bool> isCheckbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); profileController.dispose(); } 
 }
