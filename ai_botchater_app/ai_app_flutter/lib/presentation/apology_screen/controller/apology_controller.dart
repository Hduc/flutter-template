import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class ApologyController extends GetxController {
  TextEditingController groupseventythrController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("Is my apology correct?", 1),
   ChatModel("My apology and my apologies are both correct, but they are used differently in sentences. My apologies is a way to say you're sorry about something. My apology is a reference to a previous apology you madeMy apology and my apologies are both correct, but they are used differently in sentences. My apologies is a way to say you're sorry about something. My apology is a reference to a previous apology you madeMy apology and my apologies are both correct, but they are used differently in sentences. My apologies is a way to say you're sorry about something. My apology is a reference to a previous apology you madeMy apology and my apologies are both correct, but they are used differently in sentences. My apologies is a way to say you're sorry about something. My apology is a reference to a previous apology you made", 0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupseventythrController.dispose();
  }
}
