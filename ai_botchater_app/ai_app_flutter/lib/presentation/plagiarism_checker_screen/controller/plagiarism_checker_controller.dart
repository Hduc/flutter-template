import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class PlagiarismCheckerController extends GetxController {
  TextEditingController groupfortyController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel(
        "You don't need a plagiarism checker, right? You would never copy-and-paste someone else’s work, you’re greatparaphrasing, and you always keep a tidy list of your sources handy.",
        1),
    ChatModel(
        "15% : Index\n87% : mans\n25% : Public inter\n44% : Exam papers\n\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupfortyController.dispose();
  }
}
