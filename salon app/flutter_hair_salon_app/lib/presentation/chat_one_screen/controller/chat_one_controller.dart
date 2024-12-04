import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/chat_one_screen/models/chat_one_model.dart';
import 'package:flutter/material.dart';

class ChatOneController extends GetxController {
  TextEditingController phraseeightController = TextEditingController();

  // Rx<ChatOneModel> chatOneModelObj = ChatOneModel().obs;
  RxList<ChatOneModel> chatList = [
    ChatOneModel("Hello, Good Morning", 1),
    ChatOneModel(
        "I Want to order a haircut and hair coloring service this afternoon, will the salon be open?",
        1),
    ChatOneModel(
        "Hello, Sure. We are always open at all times during buisness hours.",
        0),
    ChatOneModel('Thank you very much', 1),
    ChatOneModel("its pleasure Sir", 0),
    ChatOneModel("I will come this afternoon around 4", 1),
    ChatOneModel("Ok Sir Sure", 0)
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    phraseeightController.dispose();
  }
}
