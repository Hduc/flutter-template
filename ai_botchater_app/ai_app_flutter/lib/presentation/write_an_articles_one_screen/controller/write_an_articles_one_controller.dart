import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/write_an_articles_one_screen/models/write_an_articles_one_model.dart';import 'package:flutter/material.dart';class WriteAnArticlesOneController extends GetxController {TextEditingController groupfiftytwoController = TextEditingController();

Rx<WriteAnArticlesOneModel> writeAnArticlesOneModelObj = WriteAnArticlesOneModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupfiftytwoController.dispose(); } 
 }
