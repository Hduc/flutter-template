import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/tell_a_joke_chat_screen/models/tell_a_joke_chat_model.dart';import 'package:flutter/material.dart';class TellAJokeChatController extends GetxController {TextEditingController groupsixtynineController = TextEditingController();

Rx<TellAJokeChatModel> tellAJokeChatModelObj = TellAJokeChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupsixtynineController.dispose(); } 
 }
