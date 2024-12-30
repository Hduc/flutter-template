import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/explain_code_chat_screen/models/explain_code_chat_model.dart';import 'package:flutter/material.dart';class ExplainCodeChatController extends GetxController {TextEditingController groupeightysixController = TextEditingController();

Rx<ExplainCodeChatModel> explainCodeChatModelObj = ExplainCodeChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupeightysixController.dispose(); } 
 }
