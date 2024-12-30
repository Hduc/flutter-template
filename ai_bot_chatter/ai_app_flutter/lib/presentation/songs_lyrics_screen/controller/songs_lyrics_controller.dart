import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class SongsLyricsController extends GetxController {
  TextEditingController groupthirtyoneController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("What is the best AI free email generator?", 1),
   ChatModel("Copy AI is one of the best AI-free content generators that you can use for email writing. With CopyAI's automated creativity tools, you can generate marketing copy in seconds. Copy.ai is here to help you curate relevant email text. Our tool generates subject lines that target your audience.Copy AI is one of the best AI-free content generators that you can use for email writing. With CopyAI's automated creativity tools, you can generate marketing copy in seconds. Copy.ai is here to help you curate relevant email text. Our tool generates subject lines that target your audience.Copy AI is one of the best AI-free content generators that you can use for email writing. With CopyAI's automated creativity tools, you can generate marketing copy in seconds. Copy.ai is here to help you curate relevant email text. Our tool generates subject lines that target your audience.", 0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupthirtyoneController.dispose();
  }
}
