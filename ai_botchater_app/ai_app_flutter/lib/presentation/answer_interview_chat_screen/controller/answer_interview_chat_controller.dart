import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/answer_interview_chat_screen/models/answer_interview_chat_model.dart';import 'package:flutter/material.dart';class AnswerInterviewChatController extends GetxController {TextEditingController groupsevenController = TextEditingController();

Rx<AnswerInterviewChatModel> answerInterviewChatModelObj = AnswerInterviewChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupsevenController.dispose(); } 
 }
