import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/storyteller_chat_screen/models/storyteller_chat_model.dart';import 'package:flutter/material.dart';class StorytellerChatController extends GetxController {TextEditingController groupfiftythreeController = TextEditingController();

Rx<StorytellerChatModel> storytellerChatModelObj = StorytellerChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupfiftythreeController.dispose(); } 
 }
