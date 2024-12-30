import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/movie_script_chat_screen/models/movie_script_chat_model.dart';import 'package:flutter/material.dart';class MovieScriptChatController extends GetxController {TextEditingController groupfortyoneController = TextEditingController();

Rx<MovieScriptChatModel> movieScriptChatModelObj = MovieScriptChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupfortyoneController.dispose(); } 
 }
