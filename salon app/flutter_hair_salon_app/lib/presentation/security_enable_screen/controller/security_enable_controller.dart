import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/security_enable_screen/models/security_enable_model.dart';class SecurityEnableController extends GetxController {Rx<SecurityEnableModel> securityEnableModelObj = SecurityEnableModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
