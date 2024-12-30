import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class BirthdayController extends GetxController {
  TextEditingController groupeightythreController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("Short & Sweet Happy Birthday Messages.", 1),
    ChatModel(
        "• Hope all your birthday wishes come true.\n• You bring light and love into my life. ...\n• Forget the past; look forward to the future, for the best things are yet to come.\n• Life is a journey. ...\n• Happy birthday! ...\n• You have to get older, but you don't have to grow up.\n• Happy moments.s!\n• Hope all your birthday wishes come true.\n• You bring light and love into my life. ...\n• Forget the past; look forward to the future, for the best things are yet to come.\n• Life is a journey. ...\n• Happy birthday! ...\n• You have to get older, but you don't have to grow up.\n• Happy moments.",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupeightythreController.dispose();
  }
}
