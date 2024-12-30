import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/apology_chat_screen/models/apology_chat_model.dart';import 'package:flutter/material.dart';class ApologyChatController extends GetxController {TextEditingController groupseventyfivController = TextEditingController();

Rx<ApologyChatModel> apologyChatModelObj = ApologyChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupseventyfivController.dispose(); } 
 }
