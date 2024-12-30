import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/chats_with_send_screen/models/chats_with_send_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatsWithSendScreen.
///
/// This class manages the state of the ChatsWithSendScreen, including the
/// current chatsWithSendModelObj
class ChatsWithSendController extends GetxController {TextEditingController grouptwentyfourController = TextEditingController();

TextEditingController group34355Controller = TextEditingController();

TextEditingController group34356Controller = TextEditingController();

TextEditingController searchController = TextEditingController();

TextEditingController group34358Controller = TextEditingController();

Rx<ChatsWithSendModel> chatsWithSendModelObj = ChatsWithSendModel().obs;

@override void onClose() { super.onClose(); grouptwentyfourController.dispose(); group34355Controller.dispose(); group34356Controller.dispose(); searchController.dispose(); group34358Controller.dispose(); } 
 }
