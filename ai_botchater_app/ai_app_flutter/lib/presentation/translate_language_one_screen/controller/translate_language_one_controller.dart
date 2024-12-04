import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class TranslateLanguageOneController extends GetxController {
  TextEditingController groupfortytwoController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel(
        "TIntroducing our latest writing tool cases and the begined in the my launguage?",
        1),
    ChatModel(
        "These cases are perfectly simple and easy to distinguish. ",
        0),
    ChatModel(
        "Enjoying a vacation or taking a business trip to another country? You may need help communicating with the locals from time to time.",
        1),
    ChatModel(
        "「個人的、職業的な生活において健全な人間関係を築き維持する方法」",
        0),
    ChatModel(
        "You can type in anything: a menu item, a question, or a business proposition. Instantly, you’ll have its equivalent in the target language.",
        1),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupfortytwoController.dispose();
  }
}
