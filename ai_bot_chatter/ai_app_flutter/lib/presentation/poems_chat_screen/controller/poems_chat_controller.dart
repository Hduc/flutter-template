import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/poems_chat_screen/models/poems_chat_model.dart';import 'package:flutter/material.dart';class PoemsChatController extends GetxController {TextEditingController groupeighteenController = TextEditingController();

Rx<PoemsChatModel> poemsChatModelObj = PoemsChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupeighteenController.dispose(); } 
 }
