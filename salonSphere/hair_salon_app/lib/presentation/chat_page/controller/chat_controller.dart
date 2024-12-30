import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/chat_page/models/chat_model.dart';

class ChatController extends GetxController
    with GetSingleTickerProviderStateMixin {


  RxList<ChatModel> chatModelObj = [
    ChatModel("chat1.png", "Kristin Watson", "Awesome", "22:00", false),
    ChatModel("chat2.png", "Esther Howard", "Awesome", "22:00", true),
    ChatModel("chat3.png", "Darrell Steward", "How are you", "22:00", false),
    ChatModel("chat4.png", "Wade Warren", "Wade Warren", "22:00", true),
    ChatModel("chat5.png", "Esther Howard", "Awesome", "22:00", true),
    ChatModel("chat6.png", "Annette Black", "Hello", "22:00", false),
  ].obs;

  TabController? tabviewController;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabviewController = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
