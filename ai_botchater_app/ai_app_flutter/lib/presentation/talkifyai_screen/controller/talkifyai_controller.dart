import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/talkifyai_screen/models/talkifyai_model.dart';import 'package:flutter/material.dart';class TalkifyaiController extends GetxController {TextEditingController chatController = TextEditingController();

TextEditingController groupthirtyeighController = TextEditingController();

Rx<TalkifyaiModel> talkifyaiModelObj = TalkifyaiModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); chatController.dispose(); groupthirtyeighController.dispose(); } 
 }
