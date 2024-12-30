import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class AdvertisementsOneController extends GetxController {
  TextEditingController groupsixtyoneController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("What is a good sentence for advertisement?", 1),
   ChatModel("What is an ad headline? An ad headline is a group of a few words or sentences that promote a product or service. Ad headlines can be in print or digital form and typically emphasize a product's primary purpose or benefit to a consumer.What is an ad headline? An ad headline is a group of a few words or sentences that promote a product or service. Ad headlines can be in print or digital form and typically emphasize a product's primary purpose or benefit to a consumer.What is an ad headline? An ad headline is a group of a few words or sentences that promote a product or service. Ad headlines can be in print or digital form and typically emphasize a product's primary purpose or benefit to a consumer.", 0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupsixtyoneController.dispose();
  }
}
