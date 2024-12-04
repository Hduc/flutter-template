import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/songs_lyrics_chat_one_screen/models/songs_lyrics_chat_one_model.dart';import 'package:flutter/material.dart';class SongsLyricsChatOneController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController groupfortysevenController = TextEditingController();

Rx<SongsLyricsChatOneModel> songsLyricsChatOneModelObj = SongsLyricsChatOneModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailController.dispose(); groupfortysevenController.dispose(); } 
 }
