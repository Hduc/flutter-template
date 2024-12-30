import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/invitation_chat_screen/models/invitation_chat_model.dart';import 'package:flutter/material.dart';class InvitationChatController extends GetxController {TextEditingController groupseventysixController = TextEditingController();

Rx<InvitationChatModel> invitationChatModelObj = InvitationChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupseventysixController.dispose(); } 
 }
