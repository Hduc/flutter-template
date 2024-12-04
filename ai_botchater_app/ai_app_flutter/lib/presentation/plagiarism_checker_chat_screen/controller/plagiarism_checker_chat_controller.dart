import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/plagiarism_checker_chat_screen/models/plagiarism_checker_chat_model.dart';import 'package:flutter/material.dart';class PlagiarismCheckerChatController extends GetxController {TextEditingController grouptwoController = TextEditingController();

Rx<PlagiarismCheckerChatModel> plagiarismCheckerChatModelObj = PlagiarismCheckerChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); grouptwoController.dispose(); } 
 }
