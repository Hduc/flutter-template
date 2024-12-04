import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class StorytellerController extends GetxController {
  TextEditingController groupfourController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel(" What is a storyteller role?", 1),
   ChatModel(
       'What Does a Storyteller Do? As a storyteller, your job is to narrate and read stories to an audience. In many cases, this focuses on orally encouraging certain emotions or reactions in your listeners or trying to convey details about a situation. What Does a Storyteller Do? As a storyteller, your job is to narrate and read stories to an audience. In many cases, this focuses on orally encouraging certain emotions or reactions in your listeners or trying to convey details about a situation.dolorem eum fugiat quo voluptas nulla pariatur?"What Does a Storyteller Do? As a storyteller, your job is to narrate and read stories to an audience. In many cases, this focuses on orally encouraging certain emotions or reactions in your listeners or trying to convey details about a situation.',
       0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupfourController.dispose();
  }
}
