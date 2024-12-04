import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/birthday_chat_screen/models/birthday_chat_model.dart';import 'package:flutter/material.dart';class BirthdayChatController extends GetxController {TextEditingController groupsixtytwoController = TextEditingController();

Rx<BirthdayChatModel> birthdayChatModelObj = BirthdayChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupsixtytwoController.dispose(); } 
 }
