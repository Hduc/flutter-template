import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatController extends GetxController {
  TextEditingController grouptwentyfiveController = TextEditingController();

  // Rx<ChatModel> chatModelObj = ChatModel().obs;

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("Hello, sir", 1),
    ChatModel("hello How can i help you?", 0),
    ChatModel("I hope you like crazy bond", 1),
    ChatModel(
        "Rebound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is trust. pursue pleasure rationally encounter consequences that are extremely painful. ",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    grouptwentyfiveController.dispose();
  }
}
