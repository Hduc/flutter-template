import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/chat_screen_share_popup_screen/models/chat_screen_share_popup_model.dart';import 'package:flutter/material.dart';class ChatScreenSharePopupController extends GetxController {TextEditingController chatController = TextEditingController();

TextEditingController groupfiftyeightController = TextEditingController();

Rx<ChatScreenSharePopupModel> chatScreenSharePopupModelObj = ChatScreenSharePopupModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); chatController.dispose(); groupfiftyeightController.dispose(); } 
 }
