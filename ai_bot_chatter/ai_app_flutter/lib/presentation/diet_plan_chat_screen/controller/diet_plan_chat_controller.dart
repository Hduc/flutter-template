import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/diet_plan_chat_screen/models/diet_plan_chat_model.dart';import 'package:flutter/material.dart';class DietPlanChatController extends GetxController {TextEditingController groupseventytwoController = TextEditingController();

Rx<DietPlanChatModel> dietPlanChatModelObj = DietPlanChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupseventytwoController.dispose(); } 
 }
