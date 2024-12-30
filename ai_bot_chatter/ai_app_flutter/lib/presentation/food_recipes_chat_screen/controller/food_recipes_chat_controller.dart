import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/food_recipes_chat_screen/models/food_recipes_chat_model.dart';import 'package:flutter/material.dart';class FoodRecipesChatController extends GetxController {TextEditingController groupeightyfiveController = TextEditingController();

Rx<FoodRecipesChatModel> foodRecipesChatModelObj = FoodRecipesChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupeightyfiveController.dispose(); } 
 }
