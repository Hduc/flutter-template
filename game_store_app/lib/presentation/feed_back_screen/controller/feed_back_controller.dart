import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/feed_back_screen/models/feed_back_model.dart';import 'package:flutter/material.dart';class FeedBackController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<FeedBackModel> feedBackModelObj = FeedBackModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
