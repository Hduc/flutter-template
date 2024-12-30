import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/chats_two_page/models/chats_two_model.dart';import 'package:flutter/material.dart';

import '../../home_page/models/model_data.dart';/// A controller class for the ChatsTwoPage.
///
/// This class manages the state of the ChatsTwoPage, including the
/// current chatsTwoModelObj
class ChatsTwoController extends GetxController {

TextEditingController searchController = TextEditingController();

  late ChatsTwoModel chat ;
List<ChatsTwoModel> getChatList = HomeModelData.chatList();
passData(data){
 chat = data;
 update();
}

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
