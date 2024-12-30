import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class WriteAnArticlesController extends GetxController {

  //
  // Rx<WriteAnArticlesModel> writeAnArticlesModelObj = WriteAnArticlesModel().obs;
  TextEditingController grouptwentyfiveController = TextEditingController();

  // Rx<ChatModel> chatModelObj = ChatModel().obs;

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("How California can capture stormwater to fight off the drought?", 1),
    ChatModel("Swathes of California have seen dump heavy rains since the end of December, with storms forecast to bring 75 trillion litres more over the next two weeks. The deluge is a problem – severe flooding has wreaked havoc on the San Francisco Bay Area and led to at least six deaths. But it could also offer some respite to a state in the throes of a severe water crisis driven by megadrought and overuse Swathes of California have seen dump heavy rains since the end of December, with storms forecast to bring 75 trillion litres more over the next two weeks. The deluge is a problem – severe flooding has wreaked havoc on the San Francisco Bay Area and led to at least six deaths. But it could also offer some respite to a state in the throes of a severe water crisis driven by megadrought and overuse. …", 0),
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
