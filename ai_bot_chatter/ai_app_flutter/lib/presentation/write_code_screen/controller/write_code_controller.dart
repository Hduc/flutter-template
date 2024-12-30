import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class WriteCodeController extends GetxController {
  TextEditingController groupfiftynineController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("How do I start writing code?", 1),
    ChatModel(
        "Have to be repudiated and aects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupfiftynineController.dispose();
  }
}
