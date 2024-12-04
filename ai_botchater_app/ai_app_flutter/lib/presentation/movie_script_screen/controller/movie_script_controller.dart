import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class MovieScriptController extends GetxController {
  TextEditingController groupsixtyController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("This Is it hard to read a movie script?", 1),
   ChatModel(
       '"Though it will never be easy, learning how to read a screenplay properly can make things a little easier. To prepare for an audition, you need an open mind, an analytical eye, perseverance, and extensive practice. Here are the tips and techniques you will need to read a script and bring your best on audition day.ndis doloribus asperiores repellat."Though it will never be easy, learning how to read a screenplay properly can make things a little easier. To prepare for an audition, you need an open mind, an analytical eye, perseverance, and extensive practice. Here are the tips and techniques you will need to read a script and bring your best on audition day.',
       0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupsixtyController.dispose();
  }
}
