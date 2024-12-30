import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class CreateConversationController extends GetxController {
  TextEditingController groupsixtyeightController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("What do you say to build a conversation?", 1),
    ChatModel(
        "1. What's the most interesting thing you've read lately?\n2. What's a fact about you that's not on the internet?\n3. Do you listen to any podcasts? ...\n4. If you were in charge of the playlist, which song would you play next?\n5. What's the best gift you've ever gotten?\n6. What's the most interesting thing you've read lately?\n7. What's a fact about you that's not on the internet?\n8. Do you listen to any podcasts? ...\n9. If you were in charge of the playlist, which song would you play next?\n10. What's the best gift you've ever gotten?",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupsixtyeightController.dispose();
  }
}
