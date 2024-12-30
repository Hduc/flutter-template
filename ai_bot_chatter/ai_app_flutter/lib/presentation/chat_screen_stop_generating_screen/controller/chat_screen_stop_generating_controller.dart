import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/chat_screen_stop_generating_screen/models/chat_screen_stop_generating_model.dart';import 'package:flutter/material.dart';class ChatScreenStopGeneratingController extends GetxController {TextEditingController chatController = TextEditingController();

TextEditingController groupthirtytwoController = TextEditingController();

Rx<ChatScreenStopGeneratingModel> chatScreenStopGeneratingModelObj = ChatScreenStopGeneratingModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); chatController.dispose(); groupthirtytwoController.dispose(); } 
 }
