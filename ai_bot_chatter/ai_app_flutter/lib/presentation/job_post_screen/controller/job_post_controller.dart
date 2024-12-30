import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class JobPostController extends GetxController {
  TextEditingController grouptwentyfourController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("What to include in your new job announcement", 1),
    ChatModel(
        "1. Start with something memorable. Every social media post needs a “hook.” Begin with a brief sentence about what the job means to you. ...\n2. Share details of what the role entails. You are more than your job title. ...\n3. Express gratitude to previous colleagues. ...\n4. Don't forget the basics.Start with something memorable. Every social media post needs a “hook.” Begin with a brief sentence about what the job means to you. ...\n6. Share details of what the role entails. You are more than your job title. ...\n7.  Express gratitude to previous colleagues. ...\n8. Don't forget the basics.",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    grouptwentyfourController.dispose();
  }
}
