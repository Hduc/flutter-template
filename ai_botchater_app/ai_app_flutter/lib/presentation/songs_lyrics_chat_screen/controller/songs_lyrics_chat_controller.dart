import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/songs_lyrics_chat_screen/models/songs_lyrics_chat_model.dart';import 'package:flutter/material.dart';class SongsLyricsChatController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController groupsixController = TextEditingController();

Rx<SongsLyricsChatModel> songsLyricsChatModelObj = SongsLyricsChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); nameController.dispose(); groupsixController.dispose(); } 
 }
