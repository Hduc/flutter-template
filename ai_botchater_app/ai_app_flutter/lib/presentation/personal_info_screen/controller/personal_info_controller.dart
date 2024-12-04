import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/personal_info_screen/models/personal_info_model.dart';class PersonalInfoController extends GetxController {Rx<PersonalInfoModel> personalInfoModelObj = PersonalInfoModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
