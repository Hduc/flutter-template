import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class DietPlanController extends GetxController {
  TextEditingController groupseventyController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("How to lose 5kg in 7 days diet?", 1),
   ChatModel("Lose weight consistently by following a calorie deficit diet—this is when you burn more calories than you intake within a day. Eat a diet that's rich in whole grains, lean protein, and fresh fruits and veggies, and aim to get 150 minutes of exercise each week.Lose weight consistently by following a calorie deficit diet—this is when you burn more calories than you intake within a day. Eat a diet that's rich in whole grains, lean protein, and fresh fruits and veggies, and aim to get 150 minutes of exercise each week.Lose weight consistently by following a calorie deficit diet—this is when you burn more calories than you intake within a day. Eat a diet that's rich in whole grains, lean protein, and fresh fruits and veggies, and aim to get 150 minutes of exercise each week.", 0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupseventyController.dispose();
  }
}
