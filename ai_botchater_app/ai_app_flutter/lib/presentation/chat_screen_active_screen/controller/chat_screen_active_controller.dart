import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/chat_screen_active_screen/models/chat_screen_active_model.dart';import 'package:flutter/material.dart';class ChatScreenActiveController extends GetxController {TextEditingController grouptwentytwoController = TextEditingController();

Rx<ChatScreenActiveModel> chatScreenActiveModelObj = ChatScreenActiveModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); grouptwentytwoController.dispose(); } 
 }
