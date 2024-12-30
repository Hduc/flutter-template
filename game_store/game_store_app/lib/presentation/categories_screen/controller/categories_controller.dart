import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/categories_screen/models/categories_model.dart';import 'package:flutter/material.dart';class CategoriesController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
