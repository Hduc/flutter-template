import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/write_review_screen/models/write_review_model.dart';import 'package:flutter/material.dart';class WriteReviewController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<WriteReviewModel> writeReviewModelObj = WriteReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
