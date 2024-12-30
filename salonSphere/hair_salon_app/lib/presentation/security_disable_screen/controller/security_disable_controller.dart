import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/security_disable_screen/models/security_disable_model.dart';class SecurityDisableController extends GetxController {Rx<SecurityDisableModel> securityDisableModelObj = SecurityDisableModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
