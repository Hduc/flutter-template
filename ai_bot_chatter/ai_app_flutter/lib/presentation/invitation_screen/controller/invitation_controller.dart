import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class InvitationController extends GetxController {
  TextEditingController groupseventyfouController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("What is invitation in writing?", 1),
    ChatModel(
        "It is a letter that is written to invite individuals to a specific event. This can be written for a wedding, engagement, graduation, exhibition, or yearly day, among other things. It can be both a formal and informal letter. It can be addressed to a person or an organisation and authored by an individual or an entity.It is a letter that is written to invite individuals to a specific event. This can be written for a wedding, engagement, graduation, exhibition, or yearly day, among other things. It can be both a formal and informal letter. It can be addressed to a person or an organisation and authored by an individual or an entity.It is a letter that is written to invite individuals to a specific event. This can be written for a wedding, engagement, graduation, exhibition, or yearly day, among other things. It can be both a formal and informal letter. It can be addressed to a person or an organisation and authored by an individual or an entity.",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupseventyfouController.dispose();
  }
}
