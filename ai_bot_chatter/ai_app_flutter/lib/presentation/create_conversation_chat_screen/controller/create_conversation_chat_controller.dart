import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/create_conversation_chat_screen/models/create_conversation_chat_model.dart';import 'package:flutter/material.dart';class CreateConversationChatController extends GetxController {TextEditingController groupsixtysevenController = TextEditingController();

Rx<CreateConversationChatModel> createConversationChatModelObj = CreateConversationChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupsixtysevenController.dispose(); } 
 }
