import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/creative_page/models/creative_model.dart';class CreativeController extends GetxController {CreativeController(this.creativeModelObj);

Rx<CreativeModel> creativeModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
