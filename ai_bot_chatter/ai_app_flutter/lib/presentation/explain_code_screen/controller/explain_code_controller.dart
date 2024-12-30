import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class ExplainCodeController extends GetxController {
  TextEditingController groupeightController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("What is a code explanation?", 1),
    ChatModel(
        "Code explanation using AI involves using machine learning algorithms and natural language processing techniques to generate human-readable explanations of code. This can help make code more accessible to non-experts, such as business stakeholders or users, and can help developers better understand complex codebases.\nCode explanation using AI involves using machine learning algorithms and natural language processing techniques to generate human-readable explanations of code. This can help make code more accessible to non-experts, such as business stakeholders or users, and can help developers better understand complex codebases.",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupeightController.dispose();
  }
}
