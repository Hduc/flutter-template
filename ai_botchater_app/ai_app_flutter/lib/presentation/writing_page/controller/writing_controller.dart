import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/writing_page/models/writing_model.dart';class WritingController extends GetxController {WritingController(this.writingModelObj);

Rx<WritingModel> writingModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
