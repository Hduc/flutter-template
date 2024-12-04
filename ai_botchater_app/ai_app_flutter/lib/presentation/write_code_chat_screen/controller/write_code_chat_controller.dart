import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/write_code_chat_screen/models/write_code_chat_model.dart';import 'package:flutter/material.dart';class WriteCodeChatController extends GetxController {TextEditingController descriptiononeController = TextEditingController();

TextEditingController groupfortysixController = TextEditingController();

Rx<WriteCodeChatModel> writeCodeChatModelObj = WriteCodeChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); descriptiononeController.dispose(); groupfortysixController.dispose(); } 
 }
