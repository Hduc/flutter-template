import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/review_screen/models/review_model.dart';import 'package:flutter/material.dart';class ReviewController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
