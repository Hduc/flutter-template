import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class PoemsController extends GetxController {
  TextEditingController groupthirtyController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("What is example of poetry?", 1),
   ChatModel(
       "Examples of poetry in this category include: allegory - a narrative poem that uses an extended metaphor to make a point. ballad - narrative poetry set to music. burlesque - a mock-epic poem that tells an ordinary story in a melodramatic way.Examples of poetry in this category include: allegory - a narrative poem that uses an extended metaphor to make a point. ballad - narrative poetry set to music. burlesque - a mock-epic poem that tells an ordinary story in a melodramatic way.Examples of poetry in this category include: allegory - a narrative poem that uses an extended metaphor to make a point. ballad - narrative poetry set to music. burlesque - a mock-epic poem that tells an ordinary story in a melodramatic way.",
       0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupthirtyController.dispose();
  }
}
