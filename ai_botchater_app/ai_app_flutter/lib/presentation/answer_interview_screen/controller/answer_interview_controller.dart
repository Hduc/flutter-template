import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class AnswerInterviewController extends GetxController {
  TextEditingController grouptwentynineController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("How to answer an interview?", 1),
   ChatModel("Speak clearly and vary your tone to show you're interested and enthusiastic. Take time to think about each question before answering so you can give a good response. Listen to questions carefully and let the interviewer lead the conversation. If you don't understand a question, ask for it to be explained or repeated.Speak clearly and vary your tone to show you're interested and enthusiastic. Take time to think about each question before answering so you can give a good response. Listen to questions carefully and let the interviewer lead the conversation. If you don't understand a question, ask for it to be Speak clearly and vary your tone to show you're interested and enthusiastic. Take time to think about each question before answering so you can give a good response. Listen to questions carefully and let the interviewer lead the conversation. If you don't understand a question, ask for it to be explained or repeated.explained or repeated.", 0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    grouptwentynineController.dispose();
  }
}
